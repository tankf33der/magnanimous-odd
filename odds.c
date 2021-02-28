#include <stdio.h>
#include <math.h>
#include "gmp.h"

int a$;

void push(char* s, const char* a) {
	for(int i = 0; a$ > i; i++) {
		s[i] = a[i] + 48;
	}
} 

int ismagna(const char* s) {
	mpz_t N, D, N10, Q, R;

	mpz_init(N);
	mpz_init_set_ui(D, 10);
	mpz_init_set_ui(N10, 10);
	mpz_init(Q);
	mpz_init(R);

	mpz_set_str(N, s, 10);
	for(int i = 0; a$-1 > i; i++) {
		mpz_tdiv_qr (Q, R, N, D);
		mpz_add(Q, Q, R);
		if (!mpz_probab_prime_p(Q, 16)) {
			mpz_clear(N);
			mpz_clear(D);
			mpz_clear(N10);
			mpz_clear(Q);
			mpz_clear(R);
			return 0;
		}
		mpz_mul(D, D, N10);
	}

	mpz_clear(N);
	mpz_clear(D);
	mpz_clear(N10);
	mpz_clear(Q);
	mpz_clear(R);
	return 1;
}

int main(void) {
	// XXX fun starts here
	char a[17];
	char s[18];	// a+1
	// ===
	
	a$ = sizeof(a);
	for(int i = 0; a$ > i; i++) {
		a[i] = 1;
	}
	a[a$-1] = 0;
	s[a$] = 0;

	// XXX (** 5 a$), max 27
	for(unsigned long i = 0; 762939453125 > i; i++) {
		push(s, a);
		// XXX, s is ready
		// printf("%s, %d\n", s, ismagna(s));
		if (ismagna(s)) {
			printf("%s\n", s);
		}
		// ===
		
		// next
		a[a$-1] += 2;
		if (a[a$-1] <= 8) {
			continue;
		} else {
			a[a$-1] = 0;
		}
		for(int j = a$-2; j >= 0; j--) {
			a[j] += 2;
			if (a[j] <= 9) {
				break;
			}
			else {
				a[j] = 1;
			}
		}
	}

	return 0;
}
