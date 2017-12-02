
;; Defined Parameters:

;; Contact Sets:
(sdegeo:define-contact-set "Gate_contact" 4 (color:rgb 1 0 0 )"##" )
(sdegeo:define-contact-set "Body_contact" 4 (color:rgb 1 1 0 )"##" )
(sdegeo:define-contact-set "Source_contact" 4 (color:rgb 1 0 1 )"##" )
(sdegeo:define-contact-set "Drain_contact" 4 (color:rgb 1 1 1 )"##" )

;; Work Planes:
(sde:workplanes-init-scm-binding)

;; Defined ACIS Refinements:
(sde:refinement-init-scm-binding)

;; Reference/Evaluation Windows:
(sdedr:define-refeval-window "RefWin_1" "Rectangle" (position -0.07 0 0) (position 0.11 -0.05 0))
(sdedr:define-refeval-window "RefWin_2" "Rectangle" (position -0.07 0.6 0) (position 0.11 0 0))

;; Restore GUI session parameters:
(sde:set-window-position 55 14)
(sde:set-window-size 840 800)
(sde:set-window-style "Windows")
(sde:set-background-color 0 127 178 204 204 204)
(sde:scmwin-set-prefs "Bitstream Charter" "Normal" 8 100 )
