;; DOMAIN:    Combinatorics, pigeon-hole principle
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 1964, Problem 4
;; SCORE:     6
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; Seventeen people correspond by mail with one another - each one with all
;; the rest. In their letters only three different topics are discussed.
;; Each pair of correspondents deals with only one of these topics.
;; Prove that there are at least three people who write to each other
;; about the same topic.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
 p
 (Show
   (forall (G)
     (-> (&& (forall (abt)
                     (-> (member abt G)
                         (exists (a b t)
                                 (&& (= abt (triple a b t))
                                     (<= 1 a)
                                     (< a b)
                                     (<= b 17)
                                     (<= 1 t)
                                     (<= t 3)))))
             (forall (a b)
                     (-> (&& (<= 1 a)
                             (< a b)
                             (<= b 17))
                         (&& (exists (t)
                                     (member (triple a b t) G))
                             (forall (t1 t2)
                                     (-> (&& (member (triple a b t1) G)
                                             (member (triple a b t2) G))
                                         (= t1 t2)))))))
         (exists (a b c t)
                 (&& (member (triple a b t) G)
                     (member (triple b c t) G)
                     (member (triple c a t) G)))))))

