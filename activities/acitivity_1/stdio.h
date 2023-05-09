int __attribute__((fastcall, naked))  puts(const char* s);

#define printf(string) puts(string)
