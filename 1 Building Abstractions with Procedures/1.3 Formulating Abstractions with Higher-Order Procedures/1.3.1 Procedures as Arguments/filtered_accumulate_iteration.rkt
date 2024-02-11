#lang racket

(define (filtered-accumulate predicate? combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (if (predicate? a) (term a) null-value)))))
  (iter a null-value))
