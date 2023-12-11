typedef union
{
	struct
	{
		unsigned int hi;
		unsigned int lo;
	}
	word;
	double d;
}
du;

typedef union
{
	unsigned int i;
	float f;
}
fu;

extern float __libm_qnan_f;
