#lang racket

(define tolerance 0.000001)

(define (f x)
  (- (* x x) 1))

(define (fixed-point f first-guess)
  (define (close-enough? initial next)
    (< (abs(- initial next)) tolerance))

  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

(sqrt 1000)
