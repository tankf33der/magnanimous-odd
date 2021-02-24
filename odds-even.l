(load "ismagna.l")
# generator for numbers: all odds + last even.

(setq
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

(let Lst (need 15 1)
   (setq NDigits (inc (length Lst)))
   (do (** 5 (length Lst))
      (let X 0
         (do 5
            # === number ready is here
            (and (ismagna (pack Lst X)) (println (pack Lst X)))
            # ====
            (inc 'X 2) ) )
      (for (L Lst L (cdr L))
         (inc L)(inc L)
         (T (>= 9 (car L)))
         (set L 1) ) ) )


(msg 'ok)
(bye)
