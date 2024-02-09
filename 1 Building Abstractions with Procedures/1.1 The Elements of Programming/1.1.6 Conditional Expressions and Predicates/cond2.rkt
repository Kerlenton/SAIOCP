#lang racket

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(abs 1)
(abs 0)
(abs (- 1))
