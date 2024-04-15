(define (ackerman a b)
  (cond ((= b 0) 0)
        ((= a 0) (* 2 b))
        ((= b 1) 2)
        (else (ackerman (- a 1) (ackerman a (- b 1))))))

(ackerman 42 42)