#lang racket

; compound procedure
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(square 21)
(square (+ 2 5))
(square (square 3))
(sum-of-squares 3 4)
(f 5)
