#include <iostream>
#include <algorithm>
#include <Windows.h>
using namespace std;
/*
* (1)	int absVal(int x);      返回 x 的绝对值
仅使用 !、 ~、 &、 ^、 |、 +、 <<、 >>， 运算次数不超过 10次
判断函数： int absVal_standard(int x)  { return (x < 0) ? -x : x;}
*/
int absVal(int x) {
	int p = x >> 31;
	return (~p & x) | (p & ~x) + !!p;
}

int absVal_standard(int x) {
	return abs(x);
}

/*(2)	int negate(int x);      不使用负号，实现 -x
判断函数： int netgate_standard(int x)  { return -x;}
*/
int negate(int x) {
	return ~x+1;
}

int negate_standard(int x) {
	return -x;
}
/*(3)	int bitAnd(int x, int y);  仅使用 ~ 和 |，实现 &
判断函数： int bitAnd_standard(int x, int y)  { return x & y;}
*/
int bitAnd(int x, int y) {
	return ~(~x | ~y);
}

int bitAnd_standard(int x,int y){
	return x & y;
}
/*(4)	int bitOr(int x, int y);    仅使用 ~ 和 &，实现 |*/
int bitOr(int x, int y) {
	return ~(~x & ~y);
}

int bitOr_standard(int x, int y) {
	return x | y;
}
/*(5)	int bitXor(int x, int y);   仅使用 ~ 和 &，实现 ^*/
int bitXor(int x, int y) {
	return (x & ~y) | (~x & y);
}
int bitXor_standard(int x, int y) {
	return x ^ y;
}
/*(6)	int isTmax(int x);    判断x是否为最大的正整数（7FFFFFFF），
只能使用 !、 ~、 &、 ^、 |、 +
*/
int isTmax(int x) {
	return !(~(x + 1) ^ x) & !!(x + 1);
}
int isTmax_standard(int x) {
	return x == 0x7FFFFFFF;
}
/*(7)	int bitCount(int x);   统计x的二进制表示中 1 的个数
                  只能使用，! ~ & ^ | + << >> ，运算次数不超过 40次
*/
int bitCount(int x) {
	x = x - ((x >> 1) & 0x55555555);	
	x = (x & 0x33333333) + ((x >> 2) & 0x33333333);	
	x = (x + (x >> 4)) & 0x0f0f0f0f;	
	x = x + (x >> 8);	
	x = x + (x >> 16);
	return x & 0x3f;
}
int bitCount_standard(int x) {
	int mask = 1,count=0;
	for (int i = 0; i < sizeof(int)*8; i++) {
		if (x & mask) {
			++count;
		}
		x >>= 1;
	}
	return count;
}
/*(8)	int bitMask(int highbit, int lowbit); 产生从lowbit 到 highbit 全为1，其他位为0的数。
例如bitMask(5,3) = 0x38 ；要求只使用 ! ~ & ^ | + << >> ；运算次数不超过 16次。*/
int bitMask(int highbit, int lowbit) {
	int l = ~0 << lowbit;
	int h = ~(~0 << (highbit + 1));
	return l & h;
}
int bitMask_standard(int highbit, int lowbit) {
	int x = 0, mask = 1;
	for (int i = 0; i < sizeof(int) * 8; i++) {
		if (i >= lowbit && i <= highbit) {
			x |= mask;
		}
		mask <<= 1;
	}
	return x;
}
/*(9)	int addOK(int x, int y);  当x+y 会产生溢出时返回1，否则返回 0
仅使用 !、 ~、 &、 ^、 |、 +、 <<、 >>， 运算次数不超过 20次
*/
int addOK(int x, int y) {
	int res = x + y;
	int x_s = x >> 31;
	int y_s = y >> 31;
	int res_s = res >> 31;
	int tag1 = !!(x_s ^ y_s);
	int tag2 = !(x_s ^ res_s);
	return !(tag1 | tag2);
}
int addOK_standard(int x, int y) {
	int res = x + y;
	if (x > 0 && y > 0 && res < 0 || x < 0 && y < 0 && res>0) {
		return 1;
	}
	return 0;
}
/*(10) int byteSwap(int x, int n, int m);  将x的第n个字节与第m个字节交换，返回交换后的结果。 n、m的取值在 0~3之间。
例：byteSwap(0x12345678, 1, 3) = 0x56341278  
    byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
仅使用 !、 ~、 &、 ^、 |、 +、 <<、 >>， 运算次数不超过 25次
*/
int byteSwap(int x, int n, int m) {
	int a = (x >> (n << 3)) & 0xff;
	int b = (x >> (m << 3)) & 0xff;
	x &= ~(0xff << (n << 3));
	x &= ~(0xff << (m << 3));
	x |= (a << (m << 3));
	x |= (b << (n << 3));
	return x;
}
/*
int byteSwap_standard(int x, int n, int m) {
	
}
*/

int main() {
	int choice,arg1,arg2,arg3,res;
	while (true)
	{	
		system("cls");
		cout << "Select an number to run the function below!" << endl;
		cout << "1.absVal		2.negate	3.bitAnd	4.bitOr" << endl;
		cout << "5.bitXor		6.isTmax	7.bitCount	8.bitMask" << endl;
		cout << "9.addOK		10.byteSwap" << endl;
		cout << "Your choice( Enter 0 to exit):";
		cin >> choice;
		if (!choice) {
			break;
		}
		switch (choice)
		{
		case 1:
			cout << "Argument 1:";
			cin >> arg1;
			res=absVal(arg1);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 2:
			cout << "Argument 1:";
			cin >> arg1;
			res = negate(arg1);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 3:
			cout << "Argument 1-2:";
			cin >> arg1 >> arg2;
			res = bitAnd(arg1, arg2);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 4:
			cout << "Argument 1-2:";
			cin >> arg1 >> arg2;
			res = bitOr(arg1, arg2);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 5:
			cout << "Argument 1-2:";
			cin >> arg1 >> arg2;
			res = bitXor(arg1, arg2);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 6:
			cout << "Argument 1:";
			cin >> arg1;
			res = isTmax(arg1);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 7:
			cout << "Argument 1:";
			cin >> arg1;
			res = bitCount(arg1);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 8:
			cout << "Highbit and lowbit:";
			cin >> arg1 >> arg2;
			res = bitMask(arg1, arg2);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 9:
			cout << "Argument 1-2:";
			cin >> arg1 >> arg2;
			res = addOK(arg1, arg2);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		case 10:
			cout << "x, n, m : ";
			cin >> arg1 >> arg2>>arg3;
			res = byteSwap(arg1, arg2,arg3);
			cout << "Your result: " << res << endl;
			Sleep(3000);
			break;
		default:
			cout << "Please enter a valid number( 0 - 10 )!";
			Sleep(3000);
			break;
		}
	}
	return 0;
}