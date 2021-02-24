(load "ismagna.l")

(setq
   NDigits 14
   *N10 (mpz_create)
   *N   (mpz_create)
   *Q   (mpz_create)
   *R   (mpz_create)
   *D   (mpz_create) ) 
(mpz_init_set_ui *N10 10)
(mpz_init *N)
(mpz_init *Q)
(mpz_init *R)
(mpz_init *D)

(test T (ismagna "97393713331910"))
(test NIL (ismagna "97393713331913"))

(msg 'ok)
(bye)
