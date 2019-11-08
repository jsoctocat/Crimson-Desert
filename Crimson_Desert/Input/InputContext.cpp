#include "InputContext.h"
#include "..//ImGui/imgui.h"

Input::InputContext& Input::InputContext::GetInstance()
{
	static InputContext instanceContext;
	return instanceContext;
}

bool Input::InputContext::OnWindowMessage(const MSG* lpMsg)
{
	if (lpMsg)
	{
		bool cursorVisible = Input::InputContext::GetInstance().CursorIsVisible();

		ImGuiIO& io = ImGui::GetIO();
		switch (lpMsg->message)
		{
		case WM_LBUTTONDOWN: case WM_LBUTTONUP: case WM_LBUTTONDBLCLK:
		case WM_RBUTTONDOWN: case WM_RBUTTONUP: case WM_RBUTTONDBLCLK:
		case WM_MBUTTONDOWN: case WM_MBUTTONUP: case WM_MBUTTONDBLCLK:
			return io.WantCaptureMouse && cursorVisible;
		case WM_MOUSEWHEEL:
			io.MouseWheel += GET_WHEEL_DELTA_WPARAM(lpMsg->wParam) > 0 ? +1.0f : -1.0f;
			return io.WantCaptureMouse && cursorVisible;
		case WM_MOUSEMOVE:
			return io.WantCaptureMouse && cursorVisible;
		case WM_KEYDOWN:
			if (lpMsg->wParam < 256)
				io.KeysDown[lpMsg->wParam] = 1;
			return io.WantCaptureKeyboard;
		case WM_KEYUP:
			if (lpMsg->wParam < 256)
				io.KeysDown[lpMsg->wParam] = 0;
			return io.WantCaptureKeyboard;
		case WM_CHAR:
			if (lpMsg->wParam > 0 && lpMsg->wParam < 0x10000)
				io.AddInputCharacter((unsigned short)lpMsg->wParam);
			return io.WantCaptureKeyboard || io.WantTextInput;
		}
	}
	
	return false;
}