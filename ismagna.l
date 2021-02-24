(load "libgmp.l")

# must be create&init before:
# mpz: *N10, *N, *Q, *R, *D
# pil: NDigits
(de ismagna (Str)
   (mpz_set_str *N Str)
   (mpz_init_set_ui *D 10)
   (do (dec NDigits)
      (mpz_tdiv_qr *Q *R *N *D)
      (mpz_add *Q *Q *R)
      (T (=0 (mpz_probab_prime_p *Q 16)))
      (t (mpz_mul *D *D *N10)) ) )
