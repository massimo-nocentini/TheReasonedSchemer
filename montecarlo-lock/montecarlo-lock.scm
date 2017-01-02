
(load "mkprelude.scm")

#;(define make-number 
 (lambda args args))

    #;(define numbero
     (lambda (n)
      (condi
       ((== n (make-number 1)) succeed)
       ((== n (make-number 2)) succeed)
       ((== n (make-number 3)) succeed)
       ((== n (make-number 4)) succeed)
       ((== n (make-number 5)) succeed)
       ((== n (make-number 6)) succeed)
       ((== n (make-number 7)) succeed)
       ((== n (make-number 8)) succeed)
       ((== n (make-number 9)) succeed)
       ((pairo n) succeed)
       ((fresh (a d) (conso a d n) (numbero d)) succeed)
       (else fail))))

    (define mcculloch-associateo
     (lambda (y y2y)
      (appendo y (cons 2 y) y2y)))

    (define mcculloch-associate-repeatedo
     (lambda (n y associate)
      (condi
       ((== n 0) (== y associate))
       (else (fresh (x)
              (mcculloch-associate-repeatedo (- n 1) x associate)
              (mcculloch-associateo y x)
              )))))

    (define mcculloch-produceo
     (lambda (a b)
      ;(pairo b)
      (condi
       ((fresh (x y) 
         (conso 3 x a)
         (mcculloch-associateo y b)
         (mcculloch-produceo x y)
         ) succeed)
       ((fresh (x) 
         (conso 2 x a)
         (== b x)
         ) succeed)
       (else fail))))

    (define mcculloch-lawo 
     (lambda (a y)
      (mcculloch-produceo y `(,a . ,y))))

