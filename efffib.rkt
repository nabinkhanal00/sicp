#lang racket

(define (fib count)
  (define (fibiter a b p q count)
    (if (= count 0)
        b
        (if (even? count)
            (fibiter a
                     b
                     (+ (* p p) (* q q))
                     (+ (* 2 p q) (* q q))
                     (/ count 2))
            (fibiter (+ (* b q) (* a q) (* a p))
                     (+ (* b p ) (* a q))
                     p
                     q
                     (- count 1)))))

  (fibiter 1 0 0 1 count)) 

(fib 1000)