(define (domain composition)
  (:requirements :strips :typing :non-deterministic :conditional-effects)
  (:types state action)
  (:constants
    s0_handler_cleaning_0 - state
    s1_handler_film_deposition_0 - state
    s2_handler_resist_coating_0 - state
    s3_handler_exposure_0 - state
    s4_handler_development_0 - state
    s5_handler_etching_0 - state
    s6_handler_impurities_implantation_0 - state
    s7_handler_activation_0 - state
    s8_handler_resist_stripping_0 - state
    s8_handler_resist_stripping_broken - state
  )
  (:predicates
    (current_state_0 ?s - state)
    (current_state_1 ?s - state)
    (current_state_2 ?s - state)
    (current_state_3 ?s - state)
    (current_state_4 ?s - state)
    (current_state_5 ?s - state)
    (current_state_6 ?s - state)
    (current_state_7 ?s - state)
    (current_state_8 ?s - state)
    (activation)
    (cleaning)
    (development)
    (etching)
    (exposure)
    (film_deposition)
    (impurities_implantation)
    (resist_coating)
    (resist_stripping)
    (startsymb)
  )
(:action activation_7_handler_activation_0
    :precondition (current_state_7 s7_handler_activation_0)
    :effect (and
            (current_state_7 s7_handler_activation_0)
        (activation)
        (not (cleaning))
        (not (development))
        (not (etching))
        (not (exposure))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action cleaning_0_handler_cleaning_0
    :precondition (current_state_0 s0_handler_cleaning_0)
    :effect (and
            (current_state_0 s0_handler_cleaning_0)
        (cleaning)
        (not (activation))
        (not (development))
        (not (etching))
        (not (exposure))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action development_4_handler_development_0
    :precondition (current_state_4 s4_handler_development_0)
    :effect (and
            (current_state_4 s4_handler_development_0)
        (development)
        (not (activation))
        (not (cleaning))
        (not (etching))
        (not (exposure))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action etching_5_handler_etching_0
    :precondition (current_state_5 s5_handler_etching_0)
    :effect (and
            (current_state_5 s5_handler_etching_0)
        (etching)
        (not (activation))
        (not (cleaning))
        (not (development))
        (not (exposure))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action exposure_3_handler_exposure_0
    :precondition (current_state_3 s3_handler_exposure_0)
    :effect (and
            (current_state_3 s3_handler_exposure_0)
        (exposure)
        (not (activation))
        (not (cleaning))
        (not (development))
        (not (etching))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action film_deposition_1_handler_film_deposition_0
    :precondition (current_state_1 s1_handler_film_deposition_0)
    :effect (and
            (current_state_1 s1_handler_film_deposition_0)
        (film_deposition)
        (not (activation))
        (not (cleaning))
        (not (development))
        (not (etching))
        (not (exposure))
        (not (impurities_implantation))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action impurities_implantation_6_handler_impurities_implantation_0
    :precondition (current_state_6 s6_handler_impurities_implantation_0)
    :effect (and
            (current_state_6 s6_handler_impurities_implantation_0)
        (impurities_implantation)
        (not (activation))
        (not (cleaning))
        (not (development))
        (not (etching))
        (not (exposure))
        (not (film_deposition))
        (not (resist_coating))
        (not (resist_stripping))
    )
)
(:action resist_coating_2_handler_resist_coating_0
    :precondition (current_state_2 s2_handler_resist_coating_0)
    :effect (and
            (current_state_2 s2_handler_resist_coating_0)
        (resist_coating)
        (not (activation))
        (not (cleaning))
        (not (development))
        (not (etching))
        (not (exposure))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_stripping))
    )
)
(:action resist_stripping_8_handler_resist_stripping_0
    :precondition (current_state_8 s8_handler_resist_stripping_0)
    :effect (and
        (oneof
            (current_state_8 s8_handler_resist_stripping_0)
            (and (not (current_state_8 s8_handler_resist_stripping_0)) (current_state_8 s8_handler_resist_stripping_broken))
         )
        (resist_stripping)
        (not (activation))
        (not (cleaning))
        (not (development))
        (not (etching))
        (not (exposure))
        (not (film_deposition))
        (not (impurities_implantation))
        (not (resist_coating))
    )
)
  )
