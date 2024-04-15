(define (even n) (= (remainder n 2) 0))
(define (square x) (* x x))

(define (exp a b n)
  (if (= n 0)
      a
      (if (even n)
          (exp a (* b b) (/ n 2))
          (exp (* a b) b (- n 1)))))

(exp 1 3 4)
