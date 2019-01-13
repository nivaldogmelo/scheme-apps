(define (exp b n)
    (mid b n 1)  
)

(define (mid b n a)
    (cond ((= n 0) a)
          ((mid b (- n 1) (* a b)))
    )  
)

(exp 2 5)
(exp 150 50382)
