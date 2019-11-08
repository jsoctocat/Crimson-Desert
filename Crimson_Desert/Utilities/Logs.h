#pragma once
#include <iostream>

char *GetDirectoryFile(char *filename)
{
	static char path[MAX_PATH];
	strcpy_s(path, BDO::g_c_dlldir);
	strcat_s(path, filename);
	return path;
}

//------------------------------------------------------

void fLog(const char *message, ...) //log to file
{
	if (!message) return;

	char		text[4096];
	va_list		args;
	va_start(args, message);
	vsprintf_s(text, message, args);
	va_end(args);

	std::ofstream logfile(GetDirectoryFile(XorStringA("log.txt")), std::ios::app);
	if (logfile.is_open() && text)
		logfile << text << "\n";
	logfile.close();
}

void cLog(const char *message, ...) //log to console
{
	if (!message)	return;

	char		text[4096];
	va_list		args;
	va_start(args, message);
	vsprintf_s(text, message, args);
	va_end(args);

	if (AllocConsole())
	{
		freopen(XorStringA("CONOUT$"), XorStringA("w"), stdout);

		BDO::g_bShowConsole = true;
	}

	std::cout << text << "\n";
}

void wcLog(const wchar_t *message, ...) //log to console
{
	if (!message)	return;

	wchar_t		text[4096]; 
	va_list		args;
	va_start(args, message);
	vswprintf_s(text, message, args);
	va_end(args);

	if (AllocConsole())
	{
		freopen(XorStringA("CONOUT$"), XorStringA("w"), stdout);

		BDO::g_bShowConsole = true;
	}

	std::wcout << text << "\n";
}

struct ImGuiLog //print log to imgui
{
	ImGuiTextBuffer Buf;
	bool ScrollToBottom;

	void Clear() { Buf.clear(); }

	void AddLog(const char *fmt, ...) IM_FMTARGS(2)
	{
		va_list args;
		va_start(args, fmt);
		Buf.appendfv(fmt, args);
		va_end(args);
		ScrollToBottom = true;
	}

	void Draw(const char* title)
	{
		ImGui::SetNextWindowSize(ImVec2(500, 400), ImGuiSetCond_FirstUseEver);
		ImGui::Begin(title);
		if (ImGui::Button(XorStringA("Clear"))) Clear();
		ImGui::SameLine();
		bool copy = ImGui::Button(XorStringA("Copy"));
		ImGui::Separator();
		ImGui::BeginChild(XorStringA("scrolling"));

		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 1));
		if (copy) ImGui::LogToClipboard();
		ImGui::TextUnformatted(Buf.begin());
		if (ScrollToBottom)
			ImGui::SetScrollHere(1.0f);
		ScrollToBottom = false;
		ImGui::PopStyleVar();

		ImGui::EndChild();
		ImGui::End();
	}
};