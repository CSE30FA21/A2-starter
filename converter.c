#include <stdio.h>
#include <stdlib.h>

#define MAX_LEN 256

int main(int argc, char * argv[]) {
  FILE *fin, *fout;
  char str[MAX_LEN];

  fin = fopen( /* Read from input file */ );
  fout = fopen( /* Write to output file */ );

  //Read the file one line at a time
  while( /* FILL THIS IN */ ) {
    // Replace multiple whitespace chars with a single space ' '
  }
  
  //Clean up gracefully
  fclose(fin);
  fclose(fout);
  return 0;
}
