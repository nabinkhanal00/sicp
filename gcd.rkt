#lang racket
(require racket/trace)

(define (gcd a b)
  (if (zero? b)
      a
      (gcd b (remainder a b))))

(trace gcd)
(gcd 206 40)
