(define (problem parking)
   (:domain parking)
   (:objects
       car1 car2 car3
       row1 row2 row3
       col1 col2 col3)
       
    (:init
       (next-row row1 row2)  (next-column col1 col2)
       (next-row row2 row3)  (next-column col2 col3)
       (car-at car1 row1 col1) (car-at car2 row1 col3)
       (car-at car3 row2 col2)
       (is-free row1 col2) (is-free row2 col1)
       (is-free row2 col3))
       
    (:goal
      (and
       (car-at car1 row2 col1) (car-at car2 row2 col2)
       (car-at car3 row2 col3))))
