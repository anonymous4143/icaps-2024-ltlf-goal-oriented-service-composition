(define (problem problem)

  (:domain 'domain-problem')
  (:objects s0_handler_cleaning_0 - state s1_handler_film_deposition_0 - state)
  (:init 
    (current_state_0 s0_handler_cleaning_0)
    (current_state_1 s1_handler_film_deposition_0)
    (startsymb)
    (q_11)
    (f_copy)
    (f_ok)
  )
  (:goal (and (current_state_0 s0_handler_cleaning_0)  (current_state_1 s1_handler_film_deposition_0) 
    (not 
      (q_13))
    (q_11d)
    (q_3d)
    (q_6d)
    (q_4d)
    (q_9d)
    (q_1d)
    (q_12d)
    (q_5d)
    (q_10d)
    (q_2d)
    (q_7d)
    (q_8d)))

)