#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

uint64_t fibo(uint64_t n) {
  if (n <= 1) return 1;
  return fibo(n - 1) + fibo(n - 2);
}

int main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  printf("F(%d) = %" PRIu64 "\n", n, fibo(n));
  return 0;
}
