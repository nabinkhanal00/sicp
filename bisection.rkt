#lang racket
(require racket/trace)

(define (average x y)
  (/ (+ x y) 2))

(define (close-enough? x y)
  (< (abs (- x y)) 0.0000000000000001))

(define (search f neg pos)
  (let ((midpoint (average neg pos)))
    (if (close-enough? neg pos)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value) (bisection f neg midpoint))
                ((negative? test-value) (bisection f midpoint pos))
                (else midpoint))))))

(define (bisection f a b)
  (let ((av (f a))
        (bv (f b)))
    (cond ((and (negative? av) (positive? bv))
           (search f a b))
          ((and (negative? bv) (positive? av))
           (search f b a))
          (else (error "Values are not of opposite sign." a b)))))

(trace search)
(bisection sin 2.0 4.0)