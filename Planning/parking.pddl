(define (domain parking)

 (:predicates
   (car-at ?m ?r ?c)
   (is-free ?r ?c)
   (next-row ?r1 ?r2)
   (next-column ?c1 ?c2)
   )
   
   (:action move-car-down
     :parameters (?car ?old-row ?new-row ?col)
     :precondition (and (next-row ?old-row ?new-row)	
                        (car-at ?car ?old-row ?col)
                        (is-free ?new-row ?col))
      :effect (and(not (car-at ?car ?old-row ?col))
      		   (not (is-free ?new-row ?col))
      		   (car-at ?car ?new-row ?col)
      		   (is-free ?old-row ?col)))
    
    (:action move-car-up
     :parameters (?car ?old-row ?new-row ?col)
     :precondition (and (next-row ?new-row ?old-row)	
                        (car-at ?car ?old-row ?col)
                        (is-free ?new-row ?col))
      :effect (and(not (car-at ?car ?old-row ?col))
      		   (not (is-free ?new-row ?col))
      		   (car-at ?car ?new-row ?col)
      		   (is-free ?old-row ?col)))
      		   
      		   
     (:action move-car-right
     :parameters (?car ?row ?old-col ?new-col)
     :precondition (and (next-column ?old-col ?new-col)	
                        (car-at ?car ?row ?old-col)
                        (is-free ?row ?new-col))
      :effect (and(not (car-at ?car ?row ?old-col))
      		   (not (is-free ?row ?new-col))
      		   (car-at ?car ?row ?new-col)
      		   (is-free ?row ?old-col)))
      		   
      		   
     (:action move-car-left
     :parameters (?car ?row ?old-col ?new-col)
     :precondition (and (next-column ?new-col ?old-col)	
                        (car-at ?car ?row ?old-col)
                        (is-free ?row ?new-col))
      :effect (and(not (car-at ?car ?row ?old-col))
      		   (not (is-free ?row ?new-col))
      		   (car-at ?car ?row ?new-col)
      		   (is-free ?row ?old-col))))
    
