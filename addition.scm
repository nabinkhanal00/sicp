(define (prec a b)
  (if (= b 0)
      0
      (+ a (prec a (- b 1)))))
(define (pir a b sum)
  (if (= b 0)
      sum
      (pir a (- b 1) (+ sum a))))

(prec 5 10)