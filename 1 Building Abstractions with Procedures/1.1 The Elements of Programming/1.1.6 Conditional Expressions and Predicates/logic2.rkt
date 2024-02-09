#lang racket

(define (>= x y)
  (not (< x y)))

(>= 2 1)
(>= 1 2)
(>= 2 2)
