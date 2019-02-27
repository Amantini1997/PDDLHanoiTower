﻿(define (domain hanoi)
    ;(:requirements :strips :equality :typing )
    (:types block object)
    ;(:constants l c r - peg)
    (:predicates (on ?b - block ?x)
                 (clear ?b)
                 (smaller ?b - block ?x)
    )
    (:action move
        :parameters (?b - block ?from ?to)
        :precondition (and 
                        (clear ?b)
                        (clear ?to)
                        (smaller ?b ?to)
                        (not (= ?b ?to))
                        (on ?b ?from)
        )
        :effect (and
                     (clear ?from)
                     (not (clear ?to))
                     (not (on ?b ?from))
                     (on ?b ?to)
        )
    )
)