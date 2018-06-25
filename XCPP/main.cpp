#include <iostream>
#include <Windows.h>
#include <string> 
#include <fstream>
#include <string>

using namespace std;

typedef int(*DllAdd)(int, int);
typedef int(*DllDeserial)(char* pb,int length);


DllAdd add;
DllDeserial deserail;


void main()
{
	cout << "**********  main **********" << endl;
	const char* dll = TEXT("ptotobuf-lib.dll");
	HINSTANCE hInst = LoadLibrary(dll);
	add = (DllAdd)GetProcAddress(hInst, "iAdd");
	deserail = (DllDeserial)GetProcAddress(hInst, "iDeserial");

	cout << "add: " << add(2, 4) << endl;

	ifstream in("student.txt", ios::binary);
	in.seekg(0, ios::end);
	int len = in.tellg();
	in.seekg(ios::beg);

	char* str = new char[len];
	memset(str, 0, len);
	in.read(str, len);
	in.close();
	int ret = deserail(str, len);
	cout << "iDeserial: " << ret << endl;
	system("pause");
}