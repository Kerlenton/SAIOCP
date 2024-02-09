#lang racket

; (define (square x) (* x x))

(define (double x) (+ x x))
(define (square x)
  (exp (double (log x))))

(square 2)
