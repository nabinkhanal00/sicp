(define (fx guess x) (- (* guess guess) x))
(define (fpx guess x) (* 2 guess))
(define (sqrt-jelper guess x) (- guess (/ (fx guess x) (fpx guess x))))
(define (good-enough guess previous) (< (abs (- guess previous)) 0.000000000000001))  
(define (sqrt-iter guess previous x) (if (good-enough guess previous) guess (sqrt-iter (sqrt-helper guess x) guess x)))
(define (sqrt x) (sqrt-iter (/ x 2) 0 x))
(sqrt 0.04)