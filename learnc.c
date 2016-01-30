/*
C语言是一门很接近底层的高级语言，是高性能计算的主要选择。
*/

/* 这是多行注释，它可以适用于C89。
多行注释不能再嵌套多行注释，但可以嵌套单行注释。
*/

// 单行注释以//开始直到行尾。（仅适用于C99或更新的版本。）

// 符号定义：#define 符号 替代式。符号定义是C语言中常见的常量定义方式。
#define DAYS_IN_YEAR 365
// 以#开始的关键字是一个预处理指令，告诉编译器在编译源代码之前，要先执行一些操作。

// 枚举也是定义常量的一种方式。
enum Day {SUN = 1, MON, TUE, WED, THU, FRI, SAT};
// 枚举是一个整型。MON自动被定义为2，TUE被定义为3，依此类推。
// 枚举量如果没有显式初始化，则默认是前一个枚举量的值加1，第一个枚举量默认是0。因此，SUN也没有显式初始化，则SUN默认就是0，而MON是1，依此类推。
// 枚举量的值允许相同。

// 用#include来导入头文件。头文件常用来包含一些声明。
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
// 放在<尖括号>间的文件名是C标准库的头文件。
// 标准库以外的头文件，使用双引号代替尖括号：
//#include "my_header.h"

// 函数的签名可以事先在.h文件中声明，也可以直接在.c文件中声明，但要位于使用该函数的代码之前，且只能位于函数体之外。
void function_1(void); // 函数声明时，如果不带参数，则在括号中可以用void表示，当然也可以省略。
int add_two_ints(int x1, int x2); 

// 返回值为整型的main函数是一个程序的入口。
int main() {
  // printf是标准输出，第一个参数是格式字符串，表示输出的格式。%d是一个转换说明符，表示以整数格式输出。\n是转义序列，表示换行符。
  printf("%d\n", 0); // 打印：0
  // 转换说明符的一般形式是：% 【标志】【宽度】【. 精度】【长度标志】类型 
  // 格式字符串中的%总是表示转换说明符的开头，所以如果要输出%字符，就必须用转义序列%%。
  // 所有的语句都要以分号结束。


  /* 类型
  ****************************************/
  
  // 在使用变量之前我们必须先声明它们。变量在声明时需要指明其类型，而类型能够告诉系统这个变量所占用的空间。
  // 变量名是以字母、下划线开头，后跟若干字母、数字和下划线组成的序列。

  // int型（整型）变量一般占用4个字节
  int x_int = 0;

  // short或short int型（短整型）变量一般占用2个字节
  short x_short = 0;

  // char或signed char或unsigned char型（字符型）变量占用1个字节（注：char、signed char和unsigned char之间不能自动转换，要显式转换）。char型是一个特殊的整型
  char x_char = 0;
  char y_char = 'y'; // 字符变量的字面值需要用单引号包住。它实际上表示该字符的字符编码值，大多数机器上就是ASCII字符编码值，'y' => 121
  // 字符字面量的实际类型是int，而不是char。上面的语句实际上进行了隐式转换。
  int y_int = 'y';

  // long或long int型（长整型）一般需要4个字节到8个字节
  long x_long = 0L; // “l”或“L”后缀用来指示这个整数是long型整数

  // long long或long long int型则至少需要8个字节（64位）
  long long x_long_long = 0LL; // “ll”或“LL”后缀用来指示这个整数是long long型整数

  // 整数可以使用十进制、八进制和十六进制来表示：9（十进制）、09（八进制）、0xA3或0Xa3（十六进制）

  // float通常是32位的浮点数
  float x_float = 0.0f; // “f”或“F”后缀用来指示这个实数是float型浮点数

  // double通常是64位的浮点数
  double x_double = 0.0; // 没有加后缀的实数默认是double型浮点数

  // long double通常是12个字节的浮点数
  long double x_long_double = 0.0L; // “l”或“L”后缀用来指示这个实数是long double型浮点数

  // 可以使用%f转换说明符来控制浮点数的输出：
  printf("%.2f\n", 2.3456);

  // C语言中浮点数有小数表示法：0.9或.9；以及指数表示法：1.7E-2或1.7e-2

  // 上面介绍的整型都是有符号整型，要定义无符号整型，只需要在有符号整型前加unsigned。无符号整型无法表示负数。
  unsigned short ux_short; // 变量在声明时没有初始化，则它可以是任何值，所以在没有给它赋值之前最好不要使用它
  unsigned int ux_int;
  unsigned long long ux_long_long = 0ULL; // 后缀前面加上“U”或“u”表示无符号

  // sizeof(T) 可以得到T类型的变量在运行的机器上占用多少个字节
  printf("%u\n", sizeof(int)); // 打印：4（在32位架构机器上）

  // sizeof(obj)或sizeof obj获得表达式obj（变量、字面量等等）所占用的字节数。obj不会被求值（变长数组例外，见下）
  int a = 1;
  // sizeof返回值是一个size_t类型的无符号整数，在不同C库中长度可能不一样
  size_t size = sizeof(a++); // a++不会被求值
  printf("sizeof(a++) = %zu where a = %d\n", size, a);
  // 打印："sizeof(a++) = 4 where a = 1"（在32位架构机器上）
  // size_t类型的值，可以使用%u来输出。但如果编译器将site_t定义为unsigned long或unsigned long long，编译器就可能发出警告：%u不匹配printf()函数输出的值。使用%zu则不会发出警告。

  // 数组声明时，必须指定大小。
  char my_char_array[20]; // 这个数组占据 1 * 20 = 20 个字节
  // 可以在数组声明时，给数组元素指定一个初始值。这时，数组声明可以不需要指定具体大小，由编译器自动推断大小：
  int primes[] = {2, 3, 5, 7, 11}; // 这个数组占据 4 * 5 = 20 个字节，并显式给每个元素初始化一个值

  // 数组声明时，可以只给部分元素显式初始化，则其余元素自动初始化为0值。可以用下面的方法把数组的所有元素初始化为0：
  char my_array[20] = {0};
  // 初值的个数不能超过数组元素的个数，否则编译器就会报错。

  // 数组元素的索引从0开始。
  my_array[1] = 2; // 给my_array数组的第二个元素赋值2
  printf("%d\n", my_array[1]); // => 2

  // 数组大小通常是编译时常量，但从C99开始，数组大小也可以是运行时常量，这种数组称为变长数组（VLA）
  printf("Enter the array size: ");
  char buf[0x100];
  fgets(buf, sizeof buf, stdin);
  size_t size2 = strtoul(buf, NULL, 10); // stroul 将字符串解析为无符号整数
  int var_length_array[size2]; // 声明变长数组
  printf("sizeof array = %zu\n", sizeof var_length_array);
  // C11的编译器允许不支持变长数组。如果编译器不支持变长数组，则符号__STDC_NO_VLA__必须定义为1。

  // 字符串就是以 NUL (0x00) 这个字符（即'\0'）结尾的字符数组
  char a_string[20] = "This is a string";
  // 在字符串字面量中我们不必输入这个字符，编译器会自动添加的。因此，声明存储字符串的数组时，其大小至少要比所存储的字符数多1。
  
  printf("%s\n", a_string); // %s 可以对字符串进行格式化

  printf("%d\n", a_string[16]); // => 0
  // 也就是说，第17个字节是一个空字符（NUL），而第18, 19 和 20 个字符的值是未定义。

  // 多维数组：
  int multi_array[2][5] = {
    {1, 2, 3, 4, 5},
    {6, 7, 8, 9, 0}
  };
  // 多维数组也可以只给部分元素显式初始化，则其余元素自动初始化为0值。
  double numbers[3][4] = {0.0};
  // 获取元素：
  int array_int = multi_array[0][2]; // => 3

  // 字符串数组：
  char sayings[][32] = {
    "Manners maketh man.",
    "Many hands make light work.",
    "Too many cooks spoil the broth."
  };
  // 第一维长度可从初始化列表确定，因此可以省略。


  /* 操作符
  ****************************************/

  // 多个变量声明的快捷方式：
  int i1 = 1, i2 = 2;
  float f1 = 1.0, f2 = 2.0;

  int b, c;
  b = c = 0;

  // 算数运算
  i1 + i2; // => 3
  i2 - i1; // => 1
  i2 * i1; // => 2
  i1 / i2; // => 0 (0.5，但会被化整为 0)

  // 除法运行算只要有一个操作数是浮点型，则结果也是浮点型
  (float)i1 / i2 // => 0.5f
  i1 / (double)i2 // => 0.5
  f1 / f2; // => 0.5, 也许会有很小的误差
  // 浮点数和浮点数运算都是近似值。

  // 取余运算
  11 % 3; // => 2
  -47 % -3; // => -3。模数操作符运算的结果总是和左操作数的符号相同。

  // 最初，C中没有布尔类型而是用整型替代，0为假，其他均为真。(比较操作符的返回值总是返回0或1)
  3 == 2; // => 0 (false)
  3 != 2; // => 1 (true)
  3 > 2; // => 1
  3 < 2; // => 0
  2 <= 2; // => 1
  2 >= 2; // => 1
  // C99开始有了_Bool或bool表示布尔类型。
  // _Bool类型变量可以取0（假）或1（真）值，_Bool类型实际上也是整型。
  _Bool valid = 1;
  // bool只是一个定义为_Bool的宏，位于stdbool.h头文件中，该头文件中还定义了符号true（1）和false（0）。

  // C不像Python，它不支持连续比较。
  int between_0_and_2 = 0 < a < 2; // 错误。相当于：(0 < a) < 2
  int between_0_and_2 = 0 < a && a < 2; // 正确。相当于：(0 < a)并且(a < 2)

  // 逻辑运算
  !3; // => 0（非）
  !0; // => 1
  1 && 1; // => 1（与）
  0 && 1; // => 0
  0 > 1 && 1 < 2; // => 0。第一个操作数已经为假，则不会对第二个操作数求值，这就是逻辑与操作的“短路”行为。
  0 || 1; // => 1（或）
  0 || 0; // => 0
  0 < 1 || 1 > 2; // => 1。第一个操作数已经为真，则不会对第二个操作数求值，这就是逻辑或操作的“短路”行为。

  // 条件表达式（? :）
  (5 > 10) ? 5 : 10; // => 10。“如果 5 > 10 返回 5，否则返回 10”

  // 自增、自减操作符：
  char *s = "iLoveC";
  int j = 0;
  s[j++]; // => 'i'。返回s的第j项，然后j的值增加1。
  j = 0;
  s[++j]; // => 'L'。j的值增加1，然后返回s的第j项。
  // j-- 和 --j 同理。

  // 位运算
  ~0x0F; // => 0xF0（取反）
  0x0F & 0xF0; // => 0x00（位与）
  0x0F | 0xF0; // => 0xFF（位或）
  0x04 ^ 0x0F; // => 0x0B（位异或）
  0x01 << 1; // => 0x02（左移1位）
  0x02 >> 1; // => 0x01（右移1位）
  // 位运算没有“短路”行为。

  /* 对有符号整数进行移位操作要小心 —— 以下未定义：
   * 有符号整数位移至符号位：int a = 1 << 32；
   * 左移位一个负数：int a = -1 << 2；
   * 移位超过或等于该类型数值的长度：int a = 1 << 32。（假定int是32位）
   */


  /* 控制结构
  *****************************************/

  // 条件
  if (0) {
    printf("I am never run\n");
  } else if (0) {
    printf("I am also never run\n");
  } else {
    printf("I print\n");
  }

  // While循环
  int ii = 0;
  while (ii < 10) {
    printf("%d, ", ii++);
  } // => 打印：0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 

  printf("\n");

  // Do循环
  int kk = 0;
  do {
    printf("%d, ", kk);
  } while (++kk < 10);
  // => 打印：0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 

  printf("\n");

  // For循环
  for (enum Day day = MON; day <= SAT; ++day) {
    if (day == WED)
      continue; // 跳过当前迭代，继续执行下一个迭代
    printf("这不是星期三！\n");
  }

  printf("\n");

  // 跳转
  for (int i = 0; ; i++) {
    if (i > 10) break;
    int j = 10;
    while (j < 10) {
      if (j == i)
        break;
      do 
        if (i > j) goto out;
      while (1)
      j--;
    }
  }
  out:

  // 多分支
  switch (a) {
  case 0: // 标签必须是整数常量表达式。
    printf("Hey, 'a' equals 0!\n");
    break; // 如果不使用break，控制结构会继续执行下面的分支。
  case 1:
    printf("Huh, 'a' equals 1!\n");
    break;
  default: // 默认分支
    fputs("error!\n", stderr);
    exit(-1);
    break;
  }

  // 复合语句（由“{”和“}”包围）如果只包含一条语句，则可以省略包围的花括号。
  /*
  for (; ; ) { // 无限循环
    ; // 空语句
  }
  // 简化为：
  for (; ; );
  */


  /* 类型转换
  *****************************************/

  // Every value in C has a type, but you can cast one value into another type
  // if you want (with some constraints).

  int x_hex = 0x01; // You can assign vars with hex literals

  // Casting between types will attempt to preserve their numeric values
  printf("%d\n", x_hex); // => Prints 1
  printf("%d\n", (short) x_hex); // => Prints 1
  printf("%d\n", (char) x_hex); // => Prints 1

  // Types will overflow without warning
  printf("%d\n", (unsigned char) 257); // => 1 (Max char = 255 if char is 8 bits long)

  // For determining the max value of a `char`, a `signed char` and an `unsigned char`,
  // respectively, use the CHAR_MAX, SCHAR_MAX and UCHAR_MAX macros from <limits.h>

  // Integral types can be cast to floating-point types, and vice-versa.
  printf("%f\n", (float)100); // %f formats a float
  printf("%lf\n", (double)100); // %lf formats a double
  printf("%d\n", (char)100.0);

  ///////////////////////////////////////
  // Pointers
  ///////////////////////////////////////

  // A pointer is a variable declared to store a memory address. Its declaration will
  // also tell you the type of data it points to. You can retrieve the memory address
  // of your variables, then mess with them.

  int x = 0;
  printf("%p\n", (void *)&x); // Use & to retrieve the address of a variable
  // (%p formats an object pointer of type void *)
  // => Prints some address in memory;


  // Pointers start with * in their declaration
  int *px, not_a_pointer; // px is a pointer to an int
  px = &x; // Stores the address of x in px
  printf("%p\n", (void *)px); // => Prints some address in memory
  printf("%zu, %zu\n", sizeof(px), sizeof(not_a_pointer));
  // => Prints "8, 4" on a typical 64-bit system

  // To retrieve the value at the address a pointer is pointing to,
  // put * in front to dereference it.
  // Note: yes, it may be confusing that '*' is used for _both_ declaring a
  // pointer and dereferencing it.
  printf("%d\n", *px); // => Prints 0, the value of x

  // You can also change the value the pointer is pointing to.
  // We'll have to wrap the dereference in parenthesis because
  // ++ has a higher precedence than *.
  (*px)++; // Increment the value px is pointing to by 1
  printf("%d\n", *px); // => Prints 1
  printf("%d\n", x); // => Prints 1

  // Arrays are a good way to allocate a contiguous block of memory
  int x_array[20]; //declares array of size 20 (cannot change size)
  int xx;
  for (xx = 0; xx < 20; xx++) {
    x_array[xx] = 20 - xx;
  } // Initialize x_array to 20, 19, 18,... 2, 1

    // Declare a pointer of type int and initialize it to point to x_array
  int* x_ptr = x_array;
  // x_ptr now points to the first element in the array (the integer 20).
  // This works because arrays often decay into pointers to their first element.
  // For example, when an array is passed to a function or is assigned to a pointer,
  // it decays into (implicitly converted to) a pointer.
  // Exceptions: when the array is the argument of the `&` (address-of) operator:
  int arr[10];
  int (*ptr_to_arr)[10] = &arr; // &arr is NOT of type `int *`!
  // It's of type "pointer to array" (of ten `int`s).
  // or when the array is a string literal used for initializing a char array:
  char otherarr[] = "foobarbazquirk";
  // or when it's the argument of the `sizeof` or `alignof` operator:
  int arraythethird[10];
  int *ptr = arraythethird; // equivalent with int *ptr = &arr[0];
  printf("%zu, %zu\n", sizeof arraythethird, sizeof ptr); // probably prints "40, 4" or "40, 8"


  // Pointers are incremented and decremented based on their type
  // (this is called pointer arithmetic)
  printf("%d\n", *(x_ptr + 1)); // => Prints 19
  printf("%d\n", x_array[1]); // => Prints 19

  // You can also dynamically allocate contiguous blocks of memory with the
  // standard library function malloc, which takes one argument of type size_t
  // representing the number of bytes to allocate (usually from the heap, although this
  // may not be true on e.g. embedded systems - the C standard says nothing about it).
  int *my_ptr = malloc(sizeof(*my_ptr) * 20);
  for (xx = 0; xx < 20; xx++) {
    *(my_ptr + xx) = 20 - xx; // my_ptr[xx] = 20-xx
  } // Initialize memory to 20, 19, 18, 17... 2, 1 (as ints)

    // Dereferencing memory that you haven't allocated gives
    // "unpredictable results" - the program is said to invoke "undefined behavior"
  printf("%d\n", *(my_ptr + 21)); // => Prints who-knows-what? It may even crash.

  // When you're done with a malloc'd block of memory, you need to free it,
  // or else no one else can use it until your program terminates
  // (this is called a "memory leak"):
  free(my_ptr);

  // Strings are arrays of char, but they are usually represented as a
  // pointer-to-char (which is a pointer to the first element of the array).
  // const 用于定义一个值固定的变量。这是C语言中第三种声明常量的方式。
  // It's good practice to use `const char *' when referring to a string literal,
  // since string literals shall not be modified (i.e. "foo"[0] = 'a' is ILLEGAL.)
  const char *my_str = "This is my very own string literal";
  printf("%c\n", *my_str); // => 'T'

  // This is not the case if the string is an array
  // (potentially initialized with a string literal)
  // that resides in writable memory, as in:
  char foo[] = "foo";
  foo[0] = 'a'; // this is legal, foo now contains "aoo"

  function_1();
} // end main function

///////////////////////////////////////
// Functions
///////////////////////////////////////

// Function declaration syntax:
// <return type> <function name>(<args>)

int add_two_ints(int x1, int x2)
{
  return x1 + x2; // Use return to return a value
}

/*
Functions are call by value. When a function is called, the arguments passed to
≈the function are copies of the original arguments (except arrays). Anything you
do to the arguments in the function do not change the value of the original
argument where the function was called.

Use pointers if you need to edit the original argument values.

Example: in-place string reversal
*/

// A void function returns no value
void str_reverse(char *str_in)
{
  char tmp;
  int ii = 0;
  size_t len = strlen(str_in); // `strlen()` is part of the c standard library
  for (ii = 0; ii < len / 2; ii++) {
    tmp = str_in[ii];
    str_in[ii] = str_in[len - ii - 1]; // ii-th char from end
    str_in[len - ii - 1] = tmp;
  }
}

/*
char c[] = "This is a test.";
str_reverse(c);
printf("%s\n", c); // => ".tset a si sihT"
*/

//if referring to external variables outside function, must use extern keyword.
int i = 0;
void testFunc() {
  extern int i; //i here is now using external variable i
}

//make external variables private to source file with static:
static int j = 0; //other files using testFunc() cannot access variable i
void testFunc2() {
  extern int j;
}
//**You may also declare functions as static to make them private**



///////////////////////////////////////
// User-defined types and structs
///////////////////////////////////////

// Typedefs can be used to create type aliases
typedef int my_type;
my_type my_type_var = 0;

// Structs are just collections of data, the members are allocated sequentially,
// in the order they are written:
struct rectangle {
  int width;
  int height;
};

// It's not generally true that
// sizeof(struct rectangle) == sizeof(int) + sizeof(int)
// due to potential padding between the structure members (this is for alignment
// reasons). [1]

void function_1()
{
  struct rectangle my_rec;

  // Access struct members with .
  my_rec.width = 10;
  my_rec.height = 20;

  // You can declare pointers to structs
  struct rectangle *my_rec_ptr = &my_rec;

  // Use dereferencing to set struct pointer members...
  (*my_rec_ptr).width = 30;

  // ... or even better: prefer the -> shorthand for the sake of readability
  my_rec_ptr->height = 10; // Same as (*my_rec_ptr).height = 10;
}

// You can apply a typedef to a struct for convenience
typedef struct rectangle rect;

int area(rect r)
{
  return r.width * r.height;
}

// if you have large structs, you can pass them "by pointer" to avoid copying
// the whole struct:
int areaptr(const rect *r)
{
  return r->width * r->height;
}

///////////////////////////////////////
// Function pointers
///////////////////////////////////////
/*
At run time, functions are located at known memory addresses. Function pointers are
much like any other pointer (they just store a memory address), but can be used
to invoke functions directly, and to pass handlers (or callback functions) around.
However, definition syntax may be initially confusing.

Example: use str_reverse from a pointer
*/
void str_reverse_through_pointer(char *str_in) {
  // Define a function pointer variable, named f.
  void (*f)(char *); // Signature should exactly match the target function.
  f = &str_reverse; // Assign the address for the actual function (determined at run time)
  // f = str_reverse; would work as well - functions decay into pointers, similar to arrays
  (*f)(str_in); // Just calling the function through the pointer
  // f(str_in); // That's an alternative but equally valid syntax for calling it.
}

/*
As long as function signatures match, you can assign any function to the same pointer.
Function pointers are usually typedef'd for simplicity and readability, as follows:
*/

typedef void (*my_fnp_type)(char *);

// Then used when declaring the actual pointer variable:
// ...
// my_fnp_type f;

//Special characters:
/*
'\a'; // alert (bell) character
'\n'; // newline character
'\t'; // tab character (left justifies text)
'\v'; // vertical tab
'\f'; // new page (form feed)
'\r'; // carriage return
'\b'; // backspace character
'\0'; // NULL character. Usually put at end of strings in C.
//   hello\n\0. \0 used by convention to mark end of string.
'\\'; // backslash
'\?'; // question mark
'\''; // single quote
'\"'; // double quote
'\xhh'; // hexadecimal number. Example: '\xb' = vertical tab character
'\0oo'; // octal number. Example: '\013' = vertical tab character

//print formatting:
"%d";    // integer
"%3d";   // integer with minimum of length 3 digits (right justifies text)
"%s";    // string
"%f";    // float
"%ld";   // long
"%3.2f"; // minimum 3 digits left and 2 digits right decimal float
"%7.4s"; // (can do with strings too)
"%c";    // char
"%p";    // pointer
"%x";    // hexadecimal
"%o";    // octal
"%%";    // prints %
*/
///////////////////////////////////////
// Order of Evaluation
///////////////////////////////////////

//---------------------------------------------------//
//        Operators                  | Associativity //
//---------------------------------------------------//
// () [] -> .                        | left to right //
// ! ~ ++ -- + = *(type)sizeof       | right to left //
// * / %                             | left to right //
// + -                               | left to right //
// << >>                             | left to right //
// < <= > >=                         | left to right //
// == !=                             | left to right //
// &                                 | left to right //
// ^                                 | left to right //
// |                                 | left to right //
// &&                                | left to right //
// ||                                | left to right //
// ?:                                | right to left //
// = += -= *= /= %= &= ^= |= <<= >>= | right to left //
// ,                                 | left to right //
//---------------------------------------------------//

