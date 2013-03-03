#include <stdio.h>

#define LS "ls"
int
main(int argc, char* argv[])
{

FILE* file = popen(LS, "r");
// use fscanf to read:
char buffer[100];
fscanf(file, "%s", buffer);
pclose(file);

printf("buffer = %s\n", buffer);

return 0;
}
