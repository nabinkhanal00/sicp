(define (fibrecur n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fibrecur (- n 1))
                 (fibrecur (- n 2))))))
(define (fibiter a b n)
  (if (= n 0)
      a
      (fibiter b (+ a b) (- n 1)))))

(define (fib n) (fibiter 0 1 n))

(fib 10)
