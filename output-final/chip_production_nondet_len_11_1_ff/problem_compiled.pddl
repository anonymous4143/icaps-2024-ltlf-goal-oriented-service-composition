(define (problem problem)

  (:domain 'domain-problem')
  (:objects s0_handler_cleaning_0 - state s0_handler_cleaning_broken - state s10_handler_testing_0 - state s10_handler_testing_broken - state s1_handler_film_deposition_0 - state s1_handler_film_deposition_broken - state s2_handler_resist_coating_0 - state s2_handler_resist_coating_broken - state s3_handler_exposure_0 - state s3_handler_exposure_broken - state s4_handler_development_0 - state s4_handler_development_broken - state s5_handler_etching_0 - state s5_handler_etching_broken - state s6_handler_impurities_implantation_0 - state s6_handler_impurities_implantation_broken - state s7_handler_activation_0 - state s7_handler_activation_broken - state s8_handler_resist_stripping_0 - state s8_handler_resist_stripping_broken - state s9_handler_assembly_0 - state s9_handler_assembly_broken - state)
  (:init 
    (current_state_0 s0_handler_cleaning_0)
    (current_state_1 s1_handler_film_deposition_0)
    (current_state_2 s2_handler_resist_coating_0)
    (current_state_3 s3_handler_exposure_0)
    (current_state_4 s4_handler_development_0)
    (current_state_5 s5_handler_etching_0)
    (current_state_6 s6_handler_impurities_implantation_0)
    (current_state_7 s7_handler_activation_0)
    (current_state_8 s8_handler_resist_stripping_0)
    (current_state_9 s9_handler_assembly_0)
    (current_state_10 s10_handler_testing_0)
    (startsymb)
    (q_46)
    (f_copy)
    (f_ok)
  )
  (:goal (and (f_goal) (current_state_0 s0_handler_cleaning_0)  (current_state_1 s1_handler_film_deposition_0)  (current_state_2 s2_handler_resist_coating_0)  (current_state_3 s3_handler_exposure_0)  (current_state_4 s4_handler_development_0)  (current_state_5 s5_handler_etching_0)  (current_state_6 s6_handler_impurities_implantation_0)  (current_state_7 s7_handler_activation_0)  (current_state_8 s8_handler_resist_stripping_0)  (current_state_9 s9_handler_assembly_0)  (current_state_10 s10_handler_testing_0) ))

)