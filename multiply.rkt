#lang racket
(define (prec a b)
  (if (= b 0)
      0
      (+ a (prec a (- b 1)))))
(define (piter a b sum)
  (if (= b 0)
      sum
      (piter a (- b 1) (+ sum a))))

(define (even number)
  (= (remainder number 2) 0))

(define (two-times number)
  (+ number number))

(define (effprec a b)
  (if (= b 0)
      0
      (if (even b)
          (two-times (effprec a (/ b 2)))
          (+ a (effprec a (- b 1))))))

(define (effpiter a b n)
  (if (= n 0)
      a
      ( if (even n)
           (effpiter a (two-times b) (/ n 2))
           (effpiter (+ a b) b (- n 1)))))


(effpiter 0 500 1000)