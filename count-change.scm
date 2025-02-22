(define (denomination noc)
  (cond ((= noc 1) 1)
        ((= noc 2) 5)
        ((= noc 3) 10)
        ((= noc 4) 25)
        ((= noc 5) 50)
        (else 100)))
(define (cc amount noc)
  (cond ((= amount 0) 1)
        ((or (= noc 0) (< amount 0)) 0)
        (else (+ (cc amount (- noc 1))
                 (cc (- amount (denomination noc)) noc)))))
(define (count-change amount) (cc amount 5))
(count-change 100)