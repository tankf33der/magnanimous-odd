# generator for numbers: all odds + last even.

# range is 110 - 998
# stored in reverse, LSB is CAR
(setq Lst (0 1 1 0))

(zero C)
(for N (range 110 9998)
   (let L (mapcar format (chop (format N)))
      # (println 'L L)
      (when (fully '((N) (bit? 1 N)) L)
         (inc 'C) ) ) )
(println 'C C)

(setq N (length 9998))
(println (dec (sum '((N) (** 5 N)) (range 3 N))))


(msg 'ok)
(bye)
