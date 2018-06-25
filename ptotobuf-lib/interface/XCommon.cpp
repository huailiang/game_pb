#include "XCommon.h"

uint xhash(const char* pChar)
{
	if (pChar == NULL) return 0;
	uint hash = 0;
	size_t len = strlen(pChar);
	for (size_t i = 0; i < len; ++i)
	{
		hash = (hash << 5) + hash + pChar[i];
	}
	return hash;
}


extern "C"
{

	int iAdd(int a, int b)
	{
		return a + b;
	}

	int iDeserial(const char* pb, int length)
	{
		XNet::Student student;
		if (!student.ParseFromArray(pb, length))
		{
			printf("parse student error");
		}
		else
		{
			int age = student.age();
			int num = student.num();
			std::cout << "age: " << age << std::endl;
			std::cout << "num:" << num << std::endl;
			return age + num;
		}
		return 0;
	}
}