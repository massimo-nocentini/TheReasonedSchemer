
(load "mkprelude.scm")

    (define dycko
     (lambda (d)
      (condi
       ((nullo d) succeed)
       (else (fresh (α β) (conso α β d) (dycko α) #;(dycko β))))))

    (define paths 
     (run 11 (q) 
      (dycko q)))

    (pp paths)

    (set-cdr! (list-ref paths 1) (list-ref paths 4))

    (pp (list-ref paths 1))
