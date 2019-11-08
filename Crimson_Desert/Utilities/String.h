#pragma once

class String
{
public:
	// Generate a random string
	static std::string CreateRandomString(const int& length)
	{
		std::string result;
		result.resize(length);
		const char alphanum[] = "Fc7z9iZgB0ThbjGALrSXxnIUC" "3HPJQ1vRMW8ytw5dEe" "skYK6uVqlm4paDfoO2N";  
		for (int i = 0; i < length; i++)
			result[i] = alphanum[rand() % sizeof(alphanum) - 1];
		return result;
	}
	//// Convert a wide Unicode string to an UTF8 string
	//static std::string UTF8_Encode(const std::wstring& wstr)
	//{
	//	if (wstr.empty()) return std::string();
	//	int size_needed = WideCharToMultiByte(CP_UTF8, 0, &wstr[0], (int)wstr.size(), NULL, 0, NULL, NULL);
	//	std::string strTo(size_needed, 0);
	//	WideCharToMultiByte(CP_UTF8, 0, &wstr[0], (int)wstr.size(), &strTo[0], size_needed, NULL, NULL);
	//	return strTo;
	//}
	//// Convert an UTF8 string to a wide Unicode String
	//static std::wstring UTF8_Decode(const std::string& str)
	//{
	//	if (str.empty()) return std::wstring();
	//	int size_needed = MultiByteToWideChar(CP_UTF8, 0, &str[0], (int)str.size(), NULL, 0);
	//	std::wstring wstrTo(size_needed, 0);
	//	MultiByteToWideChar(CP_UTF8, 0, &str[0], (int)str.size(), &wstrTo[0], size_needed);
	//	return wstrTo;
	//}
};