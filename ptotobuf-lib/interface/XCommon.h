#ifndef __Common__
#define __Common__


#include "game.pb.h"

#if defined(__CYGWIN32__)
#define ENGINE_INTERFACE_EXPORT __declspec(dllexport)
#elif defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(_WIN64) || defined(WINAPI_FAMILY)
#define ENGINE_INTERFACE_EXPORT __declspec(dllexport)
#elif defined(__MACH__) || defined(__ANDROID__) || defined(__linux__) || defined(__QNX__)
#define ENGINE_INTERFACE_EXPORT
#else
#define ENGINE_INTERFACE_EXPORT
#endif

#include <sstream> 
#include <string>

typedef unsigned int  uint;
typedef unsigned long long ulong;

#define CMLog			'L'
#define CMWarn			'W'
#define CMError			'E'

uint xhash(const char* ch);

template<typename T>
std::string tostring(T val)
{
	std::stringstream ss;
	std::string str;
	ss << val;
	ss >> str;
	return str;
}


extern "C"
{
	typedef bool(*SharpCALLBACK)(unsigned char, const char*);

	extern SharpCALLBACK callback;

	ENGINE_INTERFACE_EXPORT int iAdd(int, int);

	ENGINE_INTERFACE_EXPORT int iDeserial(const char* pb, int length);

}
#endif