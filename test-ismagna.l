(load "ismagna.l")

(setq
   NDigits 14
   *N10 (mpz_create)
   *N   (mpz_create)
   *Q   (mpz_create)
   *R   (mpz_create)
   *D   (mpz_create) ) 
(mpz_init_set_ui *N10 10)

(test T (ismagna "97393713331910"))
(test NIL (ismagna "97393713331913"))

(setq NDigits 5)
(test T (ismagna "11116"))

(msg 'All-ok)
(bye)
