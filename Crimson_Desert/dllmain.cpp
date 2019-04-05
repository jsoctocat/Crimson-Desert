#include <D3D11.h>
#include <D3DCompiler.h>
#include "MinHook/MinHook.h"

#include "menu.cpp"
#include "Foundation/Headers.h"

#pragma comment(lib, "d3d11.lib")
#pragma comment(lib, "d3dcompiler.lib")
#pragma comment(lib, "Library/lua5.1.lib")

#pragma region definition
typedef BOOL(WINAPI *BDOPeekMessageW)(LPMSG lpMsg, HWND  hWnd, UINT  wMsgFilterMin, UINT  wMsgFilterMax, UINT  wRemoveMsg);
static BDOPeekMessageW PeekMessageWNull = NULL;

IMGUI_API LRESULT ImGui_ImplWin32_WndProcHandler(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam);

typedef HRESULT(*D3D11Present) (IDXGISwapChain* pSwapChain, UINT SyncInterval, UINT Flags);
D3D11Present D3D11PresentNull = NULL;

ID3D11Device *pDevice = nullptr;
ID3D11DeviceContext *pContext = nullptr;
IDXGISwapChain *pSwapChain = nullptr;
uint64_t *pSwapChainVtable = nullptr;

static bool imguiInit; //initilize once
#pragma endregion

#pragma region WNDPROC
static BOOL WINAPI PeekMessageWHook(LPMSG lpMsg, HWND  hWnd, UINT  wMsgFilterMin, UINT  wMsgFilterMax, UINT  wRemoveMsg)
{
	ImGui_ImplWin32_WndProcHandler(hWnd, lpMsg->message, lpMsg->wParam, lpMsg->lParam);

	auto result = PeekMessageWNull(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);
	if (ImGui::GetIO().WantTextInput)
	{
		switch (lpMsg->message)
		{
		case WM_LBUTTONDOWN: case WM_LBUTTONDBLCLK:
		case WM_RBUTTONDOWN: case WM_RBUTTONDBLCLK:
		case WM_MBUTTONDOWN: case WM_MBUTTONDBLCLK:
		{
			int button = 0;
			if (lpMsg->message == WM_LBUTTONDOWN || lpMsg->message == WM_LBUTTONDBLCLK) button = 0;
			if (lpMsg->message == WM_RBUTTONDOWN || lpMsg->message == WM_RBUTTONDBLCLK) button = 1;
			if (lpMsg->message == WM_MBUTTONDOWN || lpMsg->message == WM_MBUTTONDBLCLK) button = 2;
			ImGui::GetIO().MouseDown[button] = true;
			return 0;
		}
		case WM_LBUTTONUP:
		case WM_RBUTTONUP:
		case WM_MBUTTONUP:
		{
			int button = 0;
			if (lpMsg->message == WM_LBUTTONUP) button = 0;
			if (lpMsg->message == WM_RBUTTONUP) button = 1;
			if (lpMsg->message == WM_MBUTTONUP) button = 2;
			ImGui::GetIO().MouseDown[button] = false;
			return 0;
		}
		case WM_MOUSEMOVE:
			ImGui::GetIO().MousePos.x = (signed short)(lpMsg->lParam);
			ImGui::GetIO().MousePos.y = (signed short)(lpMsg->lParam >> 16);
			return 0;
		case WM_KEYDOWN:
		case WM_SYSKEYDOWN:
			if (lpMsg->wParam == 0x10) //0x10shift key
				BDO::g_b_caplock_state = !BDO::g_b_caplock_state;
			if (lpMsg->wParam < 256)
				ImGui::GetIO().KeysDown[lpMsg->wParam] = 1;
		case WM_CHAR:
			if (lpMsg->wParam < 256)
			{
				if (!BDO::g_b_caplock_state)
					ImGui::GetIO().AddInputCharacter(static_cast<char>(std::tolower(MapVirtualKeyW(lpMsg->wParam, MAPVK_VK_TO_CHAR))));
				else
					ImGui::GetIO().AddInputCharacter(static_cast<char>(MapVirtualKeyW(lpMsg->wParam, MAPVK_VK_TO_CHAR)));
			}
			RtlZeroMemory(lpMsg, sizeof(MSG));
			return result;
		}
	}

	return result;
}
#pragma endregion

#pragma region D3D11
HRESULT D3D11PresentHook(IDXGISwapChain* pSwapChain, UINT SyncInterval, UINT Flags)
{
	if (!imguiInit)
	{
		//get game window
		HWND hWindow = FindWindowA(XorStringA("BlackDesertWindowClass"), NULL); //find window class name

		//get device
		pSwapChain->GetDevice(__uuidof(pDevice), (LPVOID*)&pDevice);
		pDevice->GetImmediateContext(&pContext);

		//hook ImGui
		ImGui_ImplDX11_Init(hWindow, pDevice, pContext); //ImGui dx11 initilize module
		ImGui_ImplDX11_CreateDeviceObjects(); //ImGui dx11 create device objects module

		imguiInit = true;
	}

	//swapchain backbuffer 
	ID3D11Texture2D *backbuffer;
	pSwapChain->GetBuffer(0, __uuidof(ID3D11Texture2D), (LPVOID*)&backbuffer);

	//create rendertarget
	ID3D11RenderTargetView *RenderTargetView;
	pDevice->CreateRenderTargetView(backbuffer, NULL, &RenderTargetView);
	pContext->OMSetRenderTargets(1, &RenderTargetView, NULL);

	//Render
	BeginScene();
	RenderScene(); //Rendering here
	EndScene();

	D3D11_TEXTURE2D_DESC backBufferDesc;
	backbuffer->GetDesc(&backBufferDesc);
	backbuffer->Release();

	return D3D11PresentNull(pSwapChain, SyncInterval, Flags);
}

//==========================================================================================================================

void GenerateD3DVTables()
{
	HWND hwnd = GetForegroundWindow();

	if (hwnd != NULL)
	{
		DXGI_SWAP_CHAIN_DESC swapChainDesc;
		ZeroMemory(&swapChainDesc, sizeof(swapChainDesc));
		swapChainDesc.BufferCount = 1;
		swapChainDesc.BufferDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
		swapChainDesc.BufferDesc.Scaling = DXGI_MODE_SCALING_UNSPECIFIED;
		swapChainDesc.BufferDesc.ScanlineOrdering = DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED;
		swapChainDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;

		UINT flags = D3D11_CREATE_DEVICE_SINGLETHREADED;
		swapChainDesc.OutputWindow = hwnd;
		swapChainDesc.SampleDesc.Count = 1; //Set to 1 to disable multisampling
		swapChainDesc.SwapEffect = DXGI_SWAP_EFFECT_DISCARD;
		swapChainDesc.Windowed = TRUE;

		D3D_FEATURE_LEVEL featureLvl = D3D_FEATURE_LEVEL_11_0;
		if (FAILED(D3D11CreateDeviceAndSwapChain(NULL, D3D_DRIVER_TYPE_HARDWARE, NULL, NULL, &featureLvl, 1, D3D11_SDK_VERSION, &swapChainDesc, &pSwapChain, &pDevice, NULL, &pContext)))
		{
			MessageBox(hwnd, XorStringA("Failed to create directX device and swapchain!"), XorStringA("Error"), MB_ICONERROR);
		}
	}
}
#pragma endregion

//typedef uint64_t(__stdcall* Test)(int64_t* unknown1, int64_t* unknown2, int64_t* unknown3, int64_t* unknown4);
//static Test g_t_Test = reinterpret_cast<Test>(g_kuip_Test);
//static Test g_t_TestNull = NULL;
//
//uint64_t TestHook(int64_t* unknown1, int64_t* unknown2, int64_t* unknown3, int64_t* unknown4)
//{
//	cLog("int     - unknown1: %d, unknown2: %d, unknown3: %d, unknown4: %d", unknown1, unknown2, unknown3, unknown4);
//	cLog("float   - unknown1: %f, unknown2: %f, unknown3: %f, unknown4: %f", unknown1, unknown2, unknown3, unknown4);
//	cLog("address - unknown1: %p, unknown2: %p, unknown3: %p, unknown4: %p", unknown1, unknown2, unknown3, unknown4);
//
//	return g_t_TestNull(unknown1, unknown2, unknown3, unknown4);
//}

#pragma region Hook
bool Load()
{
	GenerateD3DVTables();

	pSwapChainVtable = (uint64_t*)pSwapChain;
	pSwapChainVtable = (uint64_t*)pSwapChainVtable[0];

	MH_STATUS hook_status;
	if (MH_Initialize() != MH_OK) { cLog(XorStringA("Failed to initialize hook")); return false; }
	if ((hook_status = MH_CreateHook(&PeekMessageW, PeekMessageWHook, reinterpret_cast<LPVOID*>(&PeekMessageWNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for PeekMessageW: %lu"), static_cast<ULONG>(hook_status)); return false; }
	if ((hook_status = MH_CreateHook((uint64_t*)pSwapChainVtable[8], D3D11PresentHook, reinterpret_cast<LPVOID*>(&D3D11PresentNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for SwapChain: %lu"), static_cast<ULONG>(hook_status)); return false; }
	if ((hook_status = MH_CreateHook(g_t_LuaGettop, LuaGettopHook, reinterpret_cast<LPVOID*>(&g_t_LuaGettopNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for Lua Gettop: %lu"), static_cast<ULONG>(hook_status)); return false; }
	if ((hook_status = MH_CreateHook(g_t_LuaDostring, LuaDostringHook, reinterpret_cast<LPVOID*>(&g_t_LuaDostringNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for Lua Dostring: %lu"), static_cast<ULONG>(hook_status)); return false; }
	//if ((hook_status = MH_CreateHook(g_t_Test, TestHook, reinterpret_cast<LPVOID*>(&g_t_TestNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for Test Function: %lu"), static_cast<ULONG>(hook_status)); return false; }
	//if ((hook_status = MH_CreateHook(g_t_LuaLoadbuffer, LuaLoadbufferHook, reinterpret_cast<LPVOID*>(&g_t_LuaLoadbufferNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for Lua Loadbuffer: %lu"), static_cast<ULONG>(hook_status)); return false; }
	//if ((hook_status = MH_CreateHook(g_t_MoveItemActorToActor, MoveItemActorToActorHook, reinterpret_cast<LPVOID*>(&g_t_MoveItemActorToActorNull))) != MH_OK) { cLog(XorStringA("Failed to create hook for MoveItemActorToActor: %lu"), static_cast<ULONG>(hook_status)); return false; }
	if (MH_EnableHook(MH_ALL_HOOKS) != MH_OK) { cLog(XorStringA("Failed to enable hooks")); return false; }

	return true;
}

bool Unload()
{
	if (MH_DisableHook(MH_ALL_HOOKS) != MH_OK) { return false; }
	if (MH_Uninitialize() != MH_OK) { return false; }

	return true;
}
#pragma endregion

void D3D11Thread()
{
	Sleep(50);
	auto suspendedThreads = Threading::ThreadContext::GetInstance().SuspendAllThreads();

	if (Load())
	{
	}

	for (auto thread : suspendedThreads)
	{
		thread->ResumeThread();
	}

}

void UnhookMe(HMODULE hModule)
{
	Sleep(50);
	auto suspendedThreads = Threading::ThreadContext::GetInstance().SuspendAllThreads();

	if (Unload())
	{
		pDevice->Release();
		pContext->Release();
		pSwapChain->Release();
	}

	for (auto thread : suspendedThreads)
	{
		thread->ResumeThread();
	}

	FreeLibraryAndExitThread(hModule, 0);
}

BOOL WINAPI DllMain(HMODULE hModule, DWORD fweReason, uintptr_t lpReserved)
//Handle to our DLL. The value is the base address of the DLL.
//The reason code that indicates why the DLL entry-point function is being called.
//Additional information about the function call.
{
	switch (fweReason)
	{
	case DLL_PROCESS_ATTACH:
		DisableThreadLibraryCalls(hModule);
		BDO::g_hmodule_dllModule = hModule;
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
		CreateThread(0, 0, (LPTHREAD_START_ROUTINE)D3D11Thread, NULL, 0, 0);
		break;
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		break;
	}
	return TRUE;
}