; ; Scheme ;;
(define (over-or-under x y)
  (cond 
    ((< x y) (- 1))
    ((= x y) 0)
    ((> x y) 1)))

; ;; Tests
(over-or-under 1 2)

; expect -1
(over-or-under 2 1)

; expect 1
(over-or-under 1 1)

; expect 0
(define (filter-lst f lst)
  (cond 
    ((null? lst)
     nil)
    ((f (car lst))
     (cons (car lst) (filter-lst f (cdr lst))))
    (else
     (filter-lst f (cdr lst)))))

; ;; Tests
(define (even? x) (= (modulo x 2) 0))

(filter-lst even? '(0 1 1 2 3 5 8))

; expect (0 2 8)
(define (make-adder num) (lambda (n) (+ num n)))

; ;; Tests
(define adder (make-adder 5))

(adder 8)

; expect 13
; ; Extra questions
(define lst (list (cons 1 nil) 2 (list 3 4) 5))

(define (composed f g) (lambda (n) (f (g n))))

(define (remove item lst)
  (cond 
    ((null? lst)
     nil)
    (else
     (filter-lst (lambda (n)
                   (if (= item n)
                       #f
                       #t))
                 lst))))

; ;; Tests
(remove 3 nil)

; expect ()
(remove 3 '(1 3 5))

; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))

; expect (3 1 4 4)
(define (no-repeats s) 
    )

(define (substitute s old new) 'YOUR-CODE-HERE)

(define (sub-all s olds news) 'YOUR-CODE-HERE)
