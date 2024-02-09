#lang racket

(define (>= x y)
  (or (> x y) (= x y)))

(>= 2 1)
(>= 1 2)
(>= 2 2)
