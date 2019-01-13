(define (fib n)
    (fib-iter 1 0 n)
)

(define (fib-iter x y n)
    (if (= n 0)
        y
        (fib-iter (+ x y) x (- n 1))
    )  
)

(fib 5)
(fib 8)
