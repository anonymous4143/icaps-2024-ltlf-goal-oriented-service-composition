(define (problem problem)

  (:domain 'domain-problem')
  (:objects s0_handler_cleaning_0 - state s1_handler_film_deposition_0 - state s2_handler_resist_coating_0 - state s2_handler_resist_coating_broken - state)
  (:init 
    (current_state_0 s0_handler_cleaning_0)
    (current_state_1 s1_handler_film_deposition_0)
    (current_state_2 s2_handler_resist_coating_0)
    (startsymb)
    (q_15)
    (f_copy)
    (f_ok)
  )
  (:goal (and (current_state_0 s0_handler_cleaning_0)  (current_state_1 s1_handler_film_deposition_0)  (current_state_2 s2_handler_resist_coating_0) 
    (not 
      (q_21))
    (q_15d)
    (q_4d)
    (q_8d)
    (q_5d)
    (q_12d)
    (q_1d)
    (q_20d)
    (q_10d)
    (q_16d)
    (q_6d)
    (q_13d)
    (q_2d)
    (q_19d)
    (q_9d)
    (q_17d)
    (q_7d)
    (q_14d)
    (q_3d)
    (q_18d)
    (q_9d)
    (q_10d)
    (q_11d)
    (q_11d)))

)