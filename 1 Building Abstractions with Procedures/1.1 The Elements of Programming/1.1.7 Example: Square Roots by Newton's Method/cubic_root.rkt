#lang racket

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (cubic x)
  (* x x x))

(define (fraction x y)
  (/ (+ x y) 3))

(define (improve guess x)
  (fraction (/ x (* guess guess)) (* 2 guess)))

(define (good-enough? guess x)
  (< (abs (- (cubic guess) x)) 0.001))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 9)
(cbrt (+ 100 37))
(cbrt (+ (cbrt 2) (cbrt 3)))
(cubic (cbrt 1000))
