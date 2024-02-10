#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (fast-expt-iter b n acc)
  (cond ((= n 0) acc)
        ((even? n) (fast-expt-iter (* b b) (/ n 2) acc))
        (else (fast-expt-iter (* b b) (/ (- n 1) 2) (* acc b)))))

(define (fast-expt b n)
  (fast-expt-iter b n 1))

(fast-expt 2 10)
