;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2005, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-19
;;
;; <PROBLEM-TEXT>
;; Let ABCD be a fixed convex quadrilateral with BC = DA
;; and BC not parallel with DA. Let two variable points E and F lie of the
;; sides BC and DA, respectively and satisfy BE = DF. The lines AC and
;; BD meet at P, the lines BD and EF meet at Q, the lines EF and AC meet
;; at R.
;; Prove that the circumcircles of the triangles PQR, as E and F vary, have a
;; common point other than P.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D)
                (-> (&& (is-square A B C D)
                        (= (distance B C) (distance D A))
                        (! (parallel (line B C) (line D A))))
                    (exists (S)
                            (forall (E F P Q R)
                                    (-> (&& (on E (seg B C))
                                            (on F (seg D A))
                                            (= (distance B E) (distance D F))
                                            (intersect (line A C) (line B D) P)
                                            (intersect (line B D) (line E F) Q)
                                            (intersect (line E F) (line A C) R))
                                        (&& (! (= S P))
                                            (exists (O)
                                              (&& (circle-type O)
                                                  (is-inscribed-in (triangle P Q R) O)
                                                  (on S O)))))))))))

