(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (sqrt-iter guess x)
  (if (goodEnough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (goodEnough? guess x)
  (< (abs (- (square guess) x)) .001))

(define (sqrt x)
  (sqrt-iter 1 x))
