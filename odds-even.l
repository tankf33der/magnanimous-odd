# generator for numbers: all odds + last even.

# range is 110 - 9998
# stored in reverse, LSB is CAR
(setq Lst (0 1 1 0))

(zero C)
(for N (range 111 999)
   (let L (mapcar format (chop (format N)))
      # (println 'L L)
      (when (fully '((N) (bit? 1 N)) L)
         (inc 'C) ) ) )
(println 'C C)

(setq N (length 9998))
(println (dec (sum '((N) (** 5 N)) (range 4 N))))

(zero C)
(bench
(let Lst (need 11 1)
   (do (** 5 (length Lst))
      # (println (format Lst))
      (for (L Lst L (cdr L))
         (inc L)(inc L)
         (T (>= 9 (car L)))
         (set L 1) )
      (when (full '((N) (bit? 1 N)) Lst)
         (inc 'C ) )
   )
)
)
(println 'C C)


(msg 'ok)
(bye)
