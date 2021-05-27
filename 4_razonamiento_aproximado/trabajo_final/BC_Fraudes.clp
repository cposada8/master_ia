(deftemplate monto
0 60
( (bajo (0 1)(8 0))
  (medio (5 0)(15 1)(20 0))
  (alto (17 0)(26 1)(35 0))
  (muy_alto (30 0)(45 1)(60 1)) ))

(deftemplate num
0 15
( (bajo (0 1)(3 0))
  (medio (1 0)(4 1)(6 0))
  (alto (4 0)(7 1)(9 0)) 
  (muy_alto (7 0) (10 1) (15 1)) ))

(deftemplate riesgo
0 100
( (riesgo_bajo (0 1)(40 0))
  (riesgo_medio (30 0)(45 1)(60 0))
  (riesgo_alto (50 0)(65 1)(80 0))
  (riesgo_muy_alto (70 0)(90 1)(100 1)) ))

(defrule r1
(monto bajo)(num bajo) => (assert (riesgo riesgo_bajo)) )

(defrule r2
(monto medio)(num bajo) => (assert (riesgo riesgo_medio)) )

(defrule r3
(monto alto)(num bajo) => (assert (riesgo riesgo_medio)) )

(defrule r4
(monto muy_alto) => (assert (riesgo riesgo_alto)) )

(defrule r5
(monto bajo)(num medio) => (assert (riesgo riesgo_medio)) )

(defrule r6
(monto bajo)(num alto) => (assert (riesgo riesgo_medio)) )


(defrule r7
(monto medio)(num medio) => (assert (riesgo riesgo_medio)) )


(defrule r8
(monto alto)(num medio) => (assert (riesgo riesgo_alto)) )

(defrule r9
(monto medio)(num alto) => (assert (riesgo riesgo_alto)) )


(defrule r10
(monto alto)(num alto) => (assert (riesgo riesgo_muy_alto)) )


(defrule r11
(num muy_alto) => (assert (riesgo riesgo_alto)) )




