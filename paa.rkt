#lang racket

; sum of numbers from a to b
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

(sum-integers 1 10)

(define (cube a )
  (* a a a))


(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a) (sum-cubes (+ a 1) b))))

(sum-cubes 1 10)
