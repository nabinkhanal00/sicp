#lang racket

(define (divides? a b)
  (= (remainder a b) 0))

(define (prime? n)
  (define (primeiter current)
    (cond ((> (* current current) n) #t)
          ((divides? n current) #f)
          (else (primeiter (+ current 1)))))
  (primeiter 2))

(prime? 997)
