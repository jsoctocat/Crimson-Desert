#include <d3d11.h>
#include "MinHook/include/MinHook.h"

#include "menu.cpp"
#include "Unhook.h"
#include "Utilities/String.h"
#include "Threading/Thread.h"
#include "Input/InputContext.h"

#pragma comment(lib, "d3d11.lib")
#pragma comment(lib, "d3dcompiler.lib")

#pragma region definition
typedef BOOL(__stdcall* tPeekMessageW)(LPMSG lpMsg, HWND  hWnd, UINT  wMsgFilterMin, UINT  wMsgFilterMax, UINT  wRemoveMsg);
tPeekMessageW g_pPeekMessageWDetour = NULL;

IMGUI_API LRESULT ImGui_ImplWin32_WndProcHandler(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);

typedef HRESULT(__stdcall* tPresent) (IDXGISwapChain* pSwapChain, UINT SyncInterval, UINT Flags);
tPresent g_pPresentDetour = NULL;

IDXGISwapChain*			g_pSwapChain = nullptr;
ID3D11Device*			g_pd3dDevice = nullptr;
ID3D11DeviceContext*	g_pd3dDeviceContext = nullptr;

bool imguiInit = false;
HMODULE dllhModule;
#pragma endregion

#pragma region WNDPROC
BOOL __stdcall PeekMessageWDetour(LPMSG lpMsg, HWND  hWnd, UINT  wMsgFilterMin, UINT  wMsgFilterMax, UINT  wRemoveMsg)
{
	ImGui_ImplWin32_WndProcHandler(hWnd, lpMsg->message, lpMsg->wParam, lpMsg->lParam);

	auto result = g_pPeekMessageWDetour(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);

	if (result == TRUE && Input::InputContext::GetInstance().OnWindowMessage(lpMsg))
	{
		switch (lpMsg->message)
		{
		case WM_LBUTTONDBLCLK: case WM_LBUTTONUP: case WM_LBUTTONDOWN:
			ImGui::GetIO().MouseDown[0] = true; //0 == left button, 1 == right button, 2 == middle button
			break;
			//case WM_RBUTTONDBLCLK: case WM_RBUTTONUP: case WM_RBUTTONDOWN:
			//case WM_MBUTTONDBLCLK: case WM_MBUTTONUP:case WM_MBUTTONDOWN:
		case WM_MOUSEMOVE:
			ImGui::GetIO().MousePos.x = (signed short)(lpMsg->lParam);
			ImGui::GetIO().MousePos.y = (signed short)(lpMsg->lParam >> 16);
			break;
		case WM_KEYDOWN: case WM_SYSKEYDOWN: case WM_CHAR:
			ImGui::GetIO().KeysDown[lpMsg->wParam] = 1;
			ImGui::GetIO().AddInputCharacter(std::tolower(MapVirtualKeyW(lpMsg->wParam, MAPVK_VK_TO_CHAR)));
			RtlZeroMemory(lpMsg, sizeof(MSG));
			break;
		}

		return 0;
	}

	return result;
}
#pragma endregion

#pragma region DXGI
HRESULT __stdcall PresentDetour(IDXGISwapChain* pSwapChain, UINT SyncInterval, UINT Flags)
{
	if (!imguiInit)
	{
		//get device
		if (pSwapChain) { pSwapChain->GetDevice(__uuidof(g_pd3dDevice), (LPVOID*)& g_pd3dDevice); }

		//get device context
		if (g_pd3dDevice) { g_pd3dDevice->GetImmediateContext(&g_pd3dDeviceContext); }

		//get game window by finding it's class name
		HWND hWindow = FindWindowA(XorStringA("BlackDesertWindowClass"), NULL);

		//hook ImGui
		ImGui_ImplDX11_Init(hWindow, g_pd3dDevice, g_pd3dDeviceContext); //initilize ImGui dx11
		ImGui_ImplDX11_CreateDeviceObjects(); //create ImGui dx11 device objects

		imguiInit = true;
	}

	//swapchain backbuffer 
	ID3D11Texture2D* pBackBuffer = nullptr;
	if (pSwapChain->GetBuffer(0, __uuidof(ID3D11Texture2D), (LPVOID*)(&pBackBuffer)) == S_OK)
	{
		D3D11_TEXTURE2D_DESC backBufferDesc;
		pBackBuffer->GetDesc(&backBufferDesc);

		//Render
		BeginScene();
		RenderScene();
		EndScene();

		//create rendertarget
		ID3D11RenderTargetView* pRenderTargetView = nullptr;
		if (g_pd3dDevice->CreateRenderTargetView(pBackBuffer, nullptr, &pRenderTargetView) == S_OK)
		{
			g_pd3dDeviceContext->OMSetRenderTargets(1, &pRenderTargetView, nullptr);
			pRenderTargetView->Release();
		}

		pBackBuffer->Release();
	}

	return g_pPresentDetour(pSwapChain, SyncInterval, Flags);
}

bool CreateDeviceD3D()
{
	//std::string windowClassName = String::CreateRandomString(10);
	//HWND hWnd = CreateWindowA(windowClassName.c_str(), NULL, WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, NULL, NULL, nullptr, NULL);

	HWND hWnd = FindWindowA(XorStringA("BlackDesertWindowClass"), NULL);
	if (hWnd != nullptr)
	{
		DXGI_SWAP_CHAIN_DESC swapChainDesc;
		ZeroMemory(&swapChainDesc, sizeof(swapChainDesc));
		swapChainDesc.BufferCount = 1;
		swapChainDesc.BufferDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
		swapChainDesc.BufferDesc.Scaling = DXGI_MODE_SCALING_UNSPECIFIED;
		swapChainDesc.BufferDesc.ScanlineOrdering = DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED;
		swapChainDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;

		swapChainDesc.OutputWindow = hWnd;
		swapChainDesc.SampleDesc.Count = 1; //Set to 1 to disable multisampling
		swapChainDesc.SwapEffect = DXGI_SWAP_EFFECT_DISCARD;
		swapChainDesc.Windowed = TRUE;

		D3D_FEATURE_LEVEL featureLvl = D3D_FEATURE_LEVEL_11_0;
		if (FAILED(D3D11CreateDeviceAndSwapChain(NULL, D3D_DRIVER_TYPE_HARDWARE, NULL, NULL, &featureLvl, 1, D3D11_SDK_VERSION, &swapChainDesc, &g_pSwapChain, &g_pd3dDevice, NULL, &g_pd3dDeviceContext)))
		{
			MessageBox(hWnd, XorStringA("Failed to create directX device and swapchain!"), XorStringA("Error"), MB_ICONERROR);
			//DestroyWindow(hWnd);
			return false;
		}
	}

	//DestroyWindow(hWnd);
	return true;
}
#pragma endregion

//typedef uint64_t(__stdcall* Test)(int64_t* unknown1, int64_t* unknown2, int64_t* unknown3, int64_t* unknown4);
//static Test g_t_Test = reinterpret_cast<Test>(g_kuip_Test);
//static Test g_t_TestDetour = NULL;
//
//uint64_t TestHook(int64_t* unknown1, int64_t* unknown2, int64_t* unknown3, int64_t* unknown4)
//{
//	cLog(XorStringA("int     - unknown1: %d, unknown2: %d, unknown3: %d, unknown4: %d"), unknown1, unknown2, unknown3, unknown4);
//	cLog(XorStringA("float   - unknown1: %f, unknown2: %f, unknown3: %f, unknown4: %f"), unknown1, unknown2, unknown3, unknown4);
//	cLog(XorStringA("address - unknown1: %p, unknown2: %p, unknown3: %p, unknown4: %p"), unknown1, unknown2, unknown3, unknown4);
//
//	return g_t_TestDetour(unknown1, unknown2, unknown3, unknown4);
//}

void CleanupDeviceD3D()
{
	ImGui_ImplDX11_InvalidateDeviceObjects();
	if (g_pSwapChain) { g_pSwapChain->Release(); }
	if (g_pd3dDeviceContext) { g_pd3dDeviceContext->Release(); }
	if (g_pd3dDevice) { g_pd3dDevice->Release(); }
}

#pragma region Hook
bool Load()
{
	//DXGI
	if (!CreateDeviceD3D())
	{
		CleanupDeviceD3D();
		return false;
	}
	void** pSwapChainVtable = *reinterpret_cast<void***>(g_pSwapChain);
	//pSwapChainVtable = (uint64_t*)pSwapChain;
	//pSwapChainVtable = (uint64_t*)pSwapChainVtable[0];

	MH_STATUS hook_status;
	if (MH_Initialize() != MH_OK) { cLog(XorStringA("Failed to initialize hook")); return false; }

	if ((hook_status = MH_CreateHook(&PeekMessageW, PeekMessageWDetour, reinterpret_cast<LPVOID*>(&g_pPeekMessageWDetour))) != MH_OK) { cLog(XorStringA("Failed to create hook for PeekMessageW: %lu"), static_cast<ULONG>(hook_status)); return false; }

	if ((hook_status = MH_CreateHook(pSwapChainVtable[8], PresentDetour, reinterpret_cast<LPVOID*>(&g_pPresentDetour))) != MH_OK) { cLog(XorStringA("Failed to create hook for SwapChain: %lu"), static_cast<ULONG>(hook_status)); return false; }

	if ((hook_status = MH_CreateHook(g_pLuaGettop, LuaGettopDetour, reinterpret_cast<LPVOID*>(&g_pLuaGettopDetour))) != MH_OK) { cLog(XorStringA("Failed to create hook for Lua Gettop: %lu"), static_cast<ULONG>(hook_status)); return false; }
	if ((hook_status = MH_CreateHook(g_pLuaDostring, LuaDostringDetour, reinterpret_cast<LPVOID*>(&g_pLuaDostringDetour))) != MH_OK) { cLog(XorStringA("Failed to create hook for Lua Dostring: %lu"), static_cast<ULONG>(hook_status)); return false; }
	//if ((hook_status = MH_CreateHook(g_t_Test, TestHook, reinterpret_cast<LPVOID*>(&g_t_TestDetour))) != MH_OK) { cLog(XorStringA("Failed to create hook for Test Function: %lu"), static_cast<ULONG>(hook_status)); return false; }

	if (MH_EnableHook(MH_ALL_HOOKS) != MH_OK) { cLog(XorStringA("Failed to enable hooks")); return false; }

	return true;
}

void HookMe()
{
	auto suspendedThreads = Threading::ThreadContext::GetInstance().SuspendAllThreads();

	if (Load()) {}

	for (const auto& thread : suspendedThreads) { thread->ResumeThread(); }
}
#pragma endregion

#pragma region UnHook
bool Unload()
{
	if (MH_DisableHook(MH_ALL_HOOKS) != MH_OK) { return false; }
	if (MH_Uninitialize() != MH_OK) { return false; }

	return true;
}

void UnhookMe()
{
	auto suspendedThreads = Threading::ThreadContext::GetInstance().SuspendAllThreads();

	if (Unload()) { CleanupDeviceD3D(); }

	for (const auto& thread : suspendedThreads) { thread->ResumeThread(); }

	FreeLibraryAndExitThread(dllhModule, NULL);
}
#pragma endregion

BOOL WINAPI DllMain(HMODULE hModule, DWORD fweReason, uintptr_t lpReserved)
//Handle to our DLL. The value is the base address of the DLL.
//The reason code that indicates why the DLL entry-point function is being called.
//Additional information about the function call.
{
	switch (fweReason)
	{
	case DLL_PROCESS_ATTACH:
		DisableThreadLibraryCalls(hModule);
		dllhModule = hModule;
		if (lpReserved)
		{
			strcpy_s(BDO::g_c_dlldir, sizeof(BDO::g_c_dlldir), (char*)(lpReserved));
			for (size_t i = strlen(BDO::g_c_dlldir); i > 0; i--) { if (BDO::g_c_dlldir[i] == '\\') { BDO::g_c_dlldir[i + 1] = 0; break; } }
			VirtualFree((LPVOID)lpReserved, 0, MEM_RELEASE);
		}
		else
		{
			GetModuleFileName(hModule, BDO::g_c_dlldir, 512);
			for (size_t i = strlen(BDO::g_c_dlldir); i > 0; i--) { if (BDO::g_c_dlldir[i] == '\\') { BDO::g_c_dlldir[i + 1] = 0; break; } }
		}
		CreateThread(0, 0, (LPTHREAD_START_ROUTINE)HookMe, NULL, 0, 0);
		break;
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		break;
	}
	return TRUE;
}