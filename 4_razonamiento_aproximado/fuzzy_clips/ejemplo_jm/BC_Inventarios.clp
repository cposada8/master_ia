(deftemplate V1
0 40
( (bajo (0 1)(5 1)(10 0))
  (normal (10 0)(15 1)(20 0))
  (medio (15 0)(20 1)(25 1)(30 0))
  (alto (25 0)(35 1)(40 1)) ))

(deftemplate V2
0 18
( (bajo (0 1)(3 1)(6 0))
  (medio (6 0)(9 1)(12 0))
  (alto (9 0)(12 1)(15 1)(18 0)) ))

(deftemplate urgencia
0 7
( (sin_urgencia (0 1)(2 0))
  (poca_urgencia (1 0)(2 1)(3 0))
  (urgencia_media (2 0)(3 1)(4 0))
  (urgencia_alta (3 0)(4 1)(5 0))
  (urgencia_muy_alta (4 0)(5 1)(7 1)) ))

(defrule regla_1
(V1 bajo)(V2 bajo) => (assert (urgencia poca_urgencia)) )

(defrule regla_2
(V1 bajo)(V2 medio) => (assert (urgencia urgencia_alta)) )

(defrule regla_3
(V1 bajo)(V2 alto) => (assert (urgencia urgencia_muy_alta)) )

(defrule regla_4
(V1 normal)(V2 alto) => (assert (urgencia urgencia_alta)) )

(defrule regla_5
(V1 medio)(V2 alto) => (assert (urgencia urgencia_media)) )

(defrule regla_5
(V1 alto)(V2 alto) => (assert (urgencia sin_urgencia)) )