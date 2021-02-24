# TYPES:
# mpz_t = 16
# mp_bitcnt_t = unsigned long int

# 5.1 Initialization Functions
(de mpz_create NIL
   (%@ "malloc" 'P 16) )
(de mpz_init (P)
   (native "libgmp.so" "__gmpz_init" NIL P) )
(de mpz_clear (P)
   (native "libgmp.so" "__gmpz_clear" NIL P) )
# 5.2 Assignment Functions
(de mpz_set (A B)
   (native "libgmp.so" "__gmpz_set" NIL A B) )
(de mpz_set_ui (A B)
   (native "libgmp.so" "__gmpz_set_ui" NIL A B) )
(de mpz_set_si (A B)
   (native "libgmp.so" "__gmpz_set_si" NIL A B) )
(de mpz_set_str (A B Base)
   (default Base 10)
   (native "libgmp.so" "__gmpz_set_str" NIL A B Base) )
(de mpz_swap (A B)
   (native "libgmp.so" "__gmpz_swap" NIL A B) )
# 5.3 Combined Initialization and Assignment Functions
(de mpz_init_set (A B)
   (native "libgmp.so" "__gmpz_init_set" NIL A B) )
(de mpz_init_set_ui (A B)
   (native "libgmp.so" "__gmpz_init_set_ui" NIL A B) )
(de mpz_init_set_si (A B)
   (native "libgmp.so" "__gmpz_init_set_si" NIL A B) )
(de mpz_init_set_str (A B Base)
   (default Base 10)
   (native "libgmp.so" "__gmpz_init_set_str" NIL A B Base) )
# 5.4 Conversion Functions
(de mpz_get_ui (A)
   (native "libgmp.so" "__gmpz_get_ui" 'P A) )
(de mpz_get_si (A)
   (native "libgmp.so" "__gmpz_get_si" 'N A) )
(de mpz_get_str (P Base)
   (default Base 10)
   (native "libgmp.so" "__gmpz_get_str" 'S 0 Base P) )
# 5.5 Arithmetic Functions
(de mpz_add (A B C)
   (native "libgmp.so" "__gmpz_add" NIL A B C) )
(de mpz_add_ui (A B C)
   (native "libgmp.so" "__gmpz_add_ui" NIL A B C) )
(de mpz_sub (A B C)
   (native "libgmp.so" "__gmpz_sub" NIL A B C) )
(de mpz_sub_ui (A B C)
   (native "libgmp.so" "__gmpz_sub_ui" NIL A B C) )
(de mpz_mul (A B C)
   (native "libgmp.so" "__gmpz_mul" NIL A B C) )
(de mpz_mul_ui (A B C)
   (native "libgmp.so" "__gmpz_mul_ui" NIL A B C) )
(de mpz_mul_si (A B C)
   (native "libgmp.so" "__gmpz_mul_si" NIL A B C) )
(de mpz_addmul (A B C) # A = A + B times C
   (native "libgmp.so" "__gmpz_addmul" NIL A B C) )
(de mpz_addmul_ui (A B C)
   (native "libgmp.so" "__gmpz_addmul_ui" NIL A B C) )
(de mpz_submul (A B C) # A = A - B times C
   (native "libgmp.so" "__gmpz_submul" NIL A B C) )
(de mpz_submul_ui (A B C)
   (native "libgmp.so" "__gmpz_submul_ui" NIL A B C) )
(de mpz_mul_2exp (A B C) # A = A * 2 ** C, C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_mul_2exp" NIL A B C) )
(de mpz_neg (A B)
   (native "libgmp.so" "__gmpz_neg" NIL A B) )
(de mpz_abs (A B)
   (native "libgmp.so" "__gmpz_abs" NIL A B) )
# 5.6 Division Functions
# CDIV
(de mpz_cdiv_q (A B C)
   (native "libgmp.so" "__gmpz_cdiv_q" NIL A B C) )
(de mpz_cdiv_r (A B C)
   (native "libgmp.so" "__gmpz_cdiv_r" NIL A B C) )
(de mpz_cdiv_qr (A B C D)
   (native "libgmp.so" "__gmpz_cdiv_qr" NIL A B C D) )
(de mpz_cdiv_q_ui (A B C)
   (native "libgmp.so" "__gmpz_cdiv_q_ui" 'P A B C) )
(de mpz_cdiv_r_ui (A B C)
   (native "libgmp.so" "__gmpz_cdiv_r_ui" 'P A B C) )
(de mpz_cdiv_qr_ui (A B C D)
   (native "libgmp.so" "__gmpz_cdiv_qr_ui" 'P A B C D) )
(de mpz_cdiv_ui (A B)
   (native "libgmp.so" "__gmpz_cdiv_ui" 'P A B) )
(de mpz_cdiv_q_2exp (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_cdiv_q_2exp" NIL A B C) )
(de mpz_cdiv_r_2exp (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_cdiv_r_2exp" NIL A B C) )
# FDIV
(de mpz_fdiv_q (A B C)
   (native "libgmp.so" "__gmpz_fdiv_q" NIL A B C) )
(de mpz_fdiv_r (A B C)
   (native "libgmp.so" "__gmpz_fdiv_r" NIL A B C) )
(de mpz_fdiv_qr (A B C D)
   (native "libgmp.so" "__gmpz_fdiv_qr" NIL A B C D) )
(de mpz_fdiv_q_ui (A B C)
   (native "libgmp.so" "__gmpz_fdiv_q_ui" 'P A B C) )
(de mpz_fdiv_r_ui (A B C)
   (native "libgmp.so" "__gmpz_fdiv_r_ui" 'P A B C) )
(de mpz_fdiv_qr_ui (A B C D)
   (native "libgmp.so" "__gmpz_fdiv_qr_ui" 'P A B C D) )
(de mpz_fdiv_ui (A B)
   (native "libgmp.so" "__gmpz_fdiv_ui" 'P A B) )
(de mpz_fdiv_q_2exp (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_fdiv_q_2exp" NIL A B C) )
(de mpz_fdiv_r_2exp (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_fdiv_r_2exp" NIL A B C) )
# TDIV
(de mpz_tdiv_q (A B C)
   (native "libgmp.so" "__gmpz_tdiv_q" NIL A B C) )
(de mpz_tdiv_r (A B C)
   (native "libgmp.so" "__gmpz_tdiv_r" NIL A B C) )
(de mpz_tdiv_qr (A B C D)
   (native "libgmp.so" "__gmpz_tdiv_qr" NIL A B C D) )
(de mpz_tdiv_q_ui (A B C)
   (native "libgmp.so" "__gmpz_tdiv_q_ui" 'P A B C) )
(de mpz_tdiv_r_ui (A B C)
   (native "libgmp.so" "__gmpz_tdiv_r_ui" 'P A B C) )
(de mpz_tdiv_qr_ui (A B C D)
   (native "libgmp.so" "__gmpz_tdiv_qr_ui" 'P A B C D) )
(de mpz_tdiv_ui (A B)
   (native "libgmp.so" "__gmpz_tdiv_ui" 'P A B) )
(de mpz_tdiv_q_2exp (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_tdiv_q_2exp" NIL A B C) )
(de mpz_tdiv_r_2exp (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_tdiv_r_2exp" NIL A B C) )
# MOD
(de mpz_mod (A B C)
   (native "libgmp.so" "__gmpz_mod" NIL A B C) )
# DIVEXACT
(de mpz_divexact (A B C)
   (native "libgmp.so" "__gmpz_divexact" NIL A B C) )
(de mpz_divexact_ui (A B C)
   (native "libgmp.so" "__gmpz_divexact_ui" NIL A B C) )
# DIVISIBLE
(de mpz_divisible_p (A B)
   (native "libgmp.so" "__gmpz_divisible_p" 'I A B) )
(de mpz_divisible_ui_p (A B)
   (native "libgmp.so" "__gmpz_divisible_ui_p" 'I A B) )
(de mpz_divisible_2exp_p (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_divisible_2exp_p" 'I A B) )
# CONGRUENT
(de mpz_congruent_p (A B C)
   (native "libgmp.so" "__gmpz_congruent_p" 'I A B C) )
(de mpz_congruent_ui_p (A B C)
   (native "libgmp.so" "__gmpz_congruent_ui_p" 'I A B C) )
(de mpz_congruent_2exp_p (A B C) # C is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_congruent_2exp_p" 'I A B C) )
# 5.7 Exponentiation Functions
(de mpz_powm (A B C D)
   (native "libgmp.so" "__gmpz_powm" NIL A B C D) )
(de mpz_powm_ui (A B C D)
   (native "libgmp.so" "__gmpz_powm_ui" NIL A B C D) )
(de mpz_powm_sec (A B C D)
   (native "libgmp.so" "__gmpz_powm_sec" NIL A B C D) )
(de mpz_pow_ui (A B C)
   (native "libgmp.so" "__gmpz_pow_ui" NIL A B C) )
(de mpz_ui_pow_ui (A B C)
   (native "libgmp.so" "__gmpz_ui_pow_ui" NIL A B C) )
# 5.8 Root Extraction Functions
(de mpz_root (A B C)
   (native "libgmp.so" "__gmpz_root" 'I A B C) )
(de mpz_rootrem (A B C D)
   (native "libgmp.so" "__gmpz_rootrem" NIL A B C D) )
(de mpz_sqrt (A B)
   (native "libgmp.so" "__gmpz_sqrt" NIL A B) )
(de mpz_sqrtrem (A B C)
   (native "libgmp.so" "__gmpz_sqrtrem" NIL A B C) )
(de mpz_perfect_power_p (A)
   (native "libgmp.so" "__gmpz_perfect_power_p" 'I A) )
(de mpz_perfect_square_p (A)
   (native "libgmp.so" "__gmpz_perfect_square_p" 'I A) )
# 5.9 Number Theoretic Functions
(de mpz_probab_prime_p (A B) # B is int
   (native "libgmp.so" "__gmpz_probab_prime_p" 'I A B) )
(de mpz_nextprime (A B)
   (native "libgmp.so" "__gmpz_nextprime" NIL A B) )
(de mpz_gcd (A B C)
   (native "libgmp.so" "__gmpz_gcd" NIL A B C) )
(de mpz_gcd_ui (A B C) # C is uint
   (native "libgmp.so" "__gmpz_gcd_ui" 'P A B C) )
(de mpz_gcdext (A B C D E)
   (native "libgmp.so" "__gmpz_gcdext" NIL A B C D E) )
(de mpz_lcm (A B C)
   (native "libgmp.so" "__gmpz_lcm" NIL A B C) )
(de mpz_lcm_ui (A B C) # C is ulong
   (native "libgmp.so" "__gmpz_lcm_ui" NIL A B C) )
# 5.10 Comparison Functions
(de mpz_cmp (A B)
   (native "libgmp.so" "__gmpz_cmp" 'I A B) )
(de mpz_cmp_si (A B)
   (native "libgmp.so" "__gmpz_cmp_si" 'I A B) )
(de mpz_cmp_ui (A B)
   (native "libgmp.so" "__gmpz_cmp_ui" 'I A B) )
(de mpz_cmpabs (A B)
   (native "libgmp.so" "__gmpz_cmpabs" 'I A B) )
(de mpz_cmpabs_ui (A B) # B is ulong
   (native "libgmp.so" "__gmpz_cmpabs_ui" 'I A B) )
# 5.11 Logical and Bit Manipulation Functions
(de mpz_and (A B C)
   (native "libgmp.so" "__gmpz_and" NIL A B C) )
(de mpz_ior (A B C)
   (native "libgmp.so" "__gmpz_ior" NIL A B C) )
(de mpz_xor (A B C)
   (native "libgmp.so" "__gmpz_xor" NIL A B C) )
(de mpz_com (A B)
   (native "libgmp.so" "__gmpz_com" NIL A B) )
(de mpz_popcount (A)
   (native "libgmp.so" "__gmpz_popcount" 'P A) )
(de mpz_hamdist (A B)
   (native "libgmp.so" "__gmpz_hamdist" 'P A B) )
(de mpz_scan0 (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_scan0" 'P A B) )
(de mpz_scan1 (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_scan1" 'P A B) )
(de mpz_setbit (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_setbit" NIL A B) )
(de mpz_clrbit (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_clrbit" NIL A B) )
(de mpz_combit (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_combit" NIL A B) )
(de mpz_tstbit (A B) # B is mp_bitcnt_t
   (native "libgmp.so" "__gmpz_tstbit" 'I A B) )
# 5.12 - 5.16 chapters skipped.
