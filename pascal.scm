(define (pascal row col)
  (if (or (= row 1) (= col 1) (= row col))
      1
      (+ (pascal (- row 1) (- col 1))
         (pascal (- row 1) col))))

(define (display-pascal-row n)
  (define (column-iter i)
    (display (pascal n i)) (display "  ")
    (if (= i n)
        (newline)
        (column-iter (+ i 1))))
  (column-iter 1))

(define (display-pascal n)
  (newline)
  (define (display-pascal-iter i)
    (display-pascal-row i)
    (if (= i n)
        (newline)
        (display-pascal-iter (+ i 1))))
  (display-pascal-iter 1))

(display-pascal 10)