(import "axioms/StatTypes.lsp")

(namespace stat)

;;@-----------------------------------------------------------------------------
;;@ Statistics
;;@-----------------------------------------------------------------------------
;;
;; TODO:
;;
;;     

(axiom
 data-equality
 (d1 d2)
 (<-> (= (data d1) (data d2))
      (= d1 d2)))

(axiom
  def-freq-dist-equality
  (dist1 dist2)
  (<-> (= (freq-dist dist1) (freq-dist dist2))
       (&& (all (PLam x (|| (= (snd x) 0) (member x dist2))) dist1)
           (all (PLam x (|| (= (snd x) 0) (member x dist1))) dist2))))

(def-fun class* :: Class -> R => Class)
(axiom
  def-class*-1
  (c s)
  (= (class* (point-class c) s)
     (point-class (* c s))))

(axiom
  def-class*-2
  (min max s)
  (= (class* (range-class min max) s)
     (range-class (* min s) (* max s))))

(def-fun class+ :: Class -> R => Class)
(axiom
  def-class+-1
  (c s)
  (= (class+ (point-class c) s)
     (point-class (+ c s))))

(axiom
  def-class+-2
  (min max s)
  (= (class+ (range-class min max) s)
     (range-class (+ min s) (+ max s))))

(axiom
 def-data*
 (s ds)
 (= (data* (data ds) s)
    (data (map (Lam d (* d s)) ds))))

(axiom
 def-data+
 (s ds)
 (= (data+ (data ds) s)
    (data (map (Lam d (+ d s)) ds))))

(axiom
  def-freq-dist-data*
  (s cfs)
  (= (data* (freq-dist cfs) s)
     (freq-dist (map (Lam cf (pair (class* (fst cf) s) (snd cf))) cfs))))

(axiom
  def-freq-dist-data+
  (s cfs)
  (= (data+ (freq-dist cfs) s)
     (freq-dist (map (Lam cf (pair (class+ (fst cf) s) (snd cf))) cfs))))

(axiom
  def-data**
  (ds1 ds2)
  (= (data** (data ds1) (data ds2))
     (data (zip-with (Lam x (Lam y (* x y))) ds1 ds2))))

(axiom
 def-data-count-seq-rec
 (d ds)
 (= (data-count (data (cons d ds)))
    (+ 1 (data-count (data ds)))))

(axiom
 def-data-count-seq-base
 ()
 (= (data-count (data (nil)))
    0))

(axiom
 def-data-count-freq-dist-rec
 (class count ds)
 (= (data-count (freq-dist (cons (pair class count) ds)))
    (+ count (data-count (freq-dist ds)))))

(axiom
 def-data-count-freq-dist-base
 ()
 (= (data-count (freq-dist (nil)))
    0))

(axiom
 def-data-range
 (dat)
 (= (data-range dat)
    (- (data-max dat) (data-min dat))))

(axiom
 def-class-equal
 (c1 c2)
 (<-> (= (point-class c1) (point-class c2))
      (= c1 c2)))

(axiom
 def-class-equal2
 (min1 max1 min2 max2)
 (<-> (= (range-class min1 max1) (range-class min2 max2))
      (&& (= min1 min2)
          (= max1 max2))))

(axiom
 def-class-width1
 (c)
 (= (class-width (point-class c))
    0))

(axiom
 def-class-width2
 (a b)
 (= (class-width (range-class a b))
    (- b a)))

(axiom
 def-class-value1
 (c)
 (= (class-value (point-class c))
    c))

(axiom
 def-class-value2
 (a b)
 (= (class-value (range-class a b))
    (/ (+ a b) 2)))

;;---------------
;;---------------
(axiom
  def-frequency-of-in-seq-rec
  (c d ds)
  (= (frequency-of-in (point-class c) (data (cons d ds)))
     (if (= c d)
         (+ 1 (frequency-of-in (point-class c) (data ds)))
         (frequency-of-in (point-class c) (data ds)))))

(axiom
  def-frequency-of-in-seq-rec2
  (min max d ds)
  (= (frequency-of-in (range-class min max) (data (cons d ds)))
     (if (&& (<= min d)
             (<= d max))
         (+ 1 (frequency-of-in (range-class min max) (data ds)))
         (frequency-of-in (range-class min max) (data ds)))))

(axiom
  def-frequency-of-in-seq-base
  (c)
  (= (frequency-of-in c (data (nil)))
     0))

(axiom
  def-frequency-of-in-freq-dist-rec1
  (min max cmin cmax f ds)
  (= (frequency-of-in (range-class min max) 
                      (freq-dist (cons (pair (range-class cmin cmax) f) ds)))
     (if (&& (<= min cmin)
             (<= cmax max))
         (+ f (frequency-of-in (range-class min max) (freq-dist ds)))
         (frequency-of-in (range-class min max) (freq-dist ds)))))

(axiom
  def-frequency-of-in-freq-dist-rec2
  (min max c f ds)
  (= (frequency-of-in (range-class min max) 
                      (freq-dist (cons (pair (point-class c) f) ds)))
     (if (&& (<= min c)
             (<= c max))
         (+ f (frequency-of-in (range-class min max) (freq-dist ds)))
         (frequency-of-in (range-class min max) (freq-dist ds)))))

(axiom
  def-frequency-of-in-freq-dist-base
  (min max)
  (= (frequency-of-in (range-class min max) (freq-dist (nil)))
     0))

;;---------------
;;---------------
(axiom
  def-relative-frequency-of-in
  (c dat)
  (= (relative-frequency-of-in c dat)
     (/ (frequency-of-in c dat)
        (data-count dat))))

;;---------------
;;---------------
(axiom
  def-deviation-of-in
  (d dat)
  (= (deviation-of-in d dat)
     (- d (average-of dat))))

;;---
;;---
(def-fun freq-dist-sum :: (ListOf (Pair Class R)) => R)

(axiom
   def-freq-dist-sum-rec
   (class freq rest)
   (= (freq-dist-sum (cons (pair class freq) rest))
      (+ (class-value class) (freq-dist-sum rest))))

(axiom
   def-freq-dist-sum-base
   ()
   (= (freq-dist-sum (nil))
      0))

;;---------------
;;---------------
;(axiom
;   def-point-freq-dist-of
;   (ds)
;   (= (point-freq-dist-of (data ds))
;      (freq-dist (map (Lam v (pair (point-class v) 
;                                   (frequency-of-in (point-class v) (data ds))))
;                      (uniq (sort< ds))))))

;(axiom
;   def-relative-point-freq-dist-of
;   (ds)
;   (= (point-relative-freq-dist-of (data ds))
;      (freq-dist (map (Lam v (pair (point-class v) 
;                                   (/ (frequency-of-in (point-class v) (data ds))
;                                      (data-count (data ds)))))
;                      (uniq (sort< ds))))))
;;---------------
;;---------------
(axiom
  box-plot-eq-1
  (min firstQ median thirdQ max data)
  (<-> (= (box-plot-of data)
          (box-plot min firstQ median thirdQ max))
       (&& (= (data-min data) min)
           (= (first-quartile-of data) firstQ)
           (= (median-of data) median)
           (= (third-quartile-of data) thirdQ)
           (= (data-max data) max))))

(axiom
  box-plot-eq-2
  (min1 firstQ1 median1 thirdQ1 max1
   min2 firstQ2 median2 thirdQ2 max2)
  (<-> (= (box-plot min1 firstQ1 median1 thirdQ1 max1)
          (box-plot min2 firstQ2 median2 thirdQ2 max2))
       (&& (= min1 min2)
           (= firstQ1 firstQ2)
           (= median1 median2)
           (= thirdQ1 thirdQ2)
           (= max1 max2))))

(axiom
  box-plot-with-avg-eq-1
  (min firstQ median thirdQ max avg data)
  (<-> (= (box-plot-with-avg-of data)
          (box-plot-with-avg min firstQ median thirdQ max avg))
       (&& (= (data-min data) min)
           (= (first-quartile-of data) firstQ)
           (= (median-of data) median)
           (= (third-quartile-of data) thirdQ)
           (= (data-max data) max)
           (= (average-of data) avg))))

(axiom
  box-plot-with-avg-eq-2
  (min1 firstQ1 median1 thirdQ1 max1 avg1
   min2 firstQ2 median2 thirdQ2 max2 avg2)
  (<-> (= (box-plot-with-avg min1 firstQ1 median1 thirdQ1 max1 avg1)
          (box-plot-with-avg min2 firstQ2 median2 thirdQ2 max2 avg2))
       (&& (= min1 min2)
           (= firstQ1 firstQ2)
           (= median1 median2)
           (= thirdQ1 thirdQ2)
           (= max1 max2)
           (= avg1 avg2))))

;;---------------
;;---------------
(axiom
  def-project-1st
  (points)
  (= (project-1st (scatter-plot points))
     (map (Lam point (2d.x-coord point)) points)))

(axiom
  def-project-2nd
  (points)
  (= (project-2nd (scatter-plot points))
     (map (Lam point (2d.y-coord point)) points)))

(axiom
  scatter-plot-eq
  (points1 points2)
  (<-> (= (scatter-plot points1) (scatter-plot points2))
       (&& (all (PLam p (member p points2)) points1)
           (all (PLam p (member p points1)) points2))))

(axiom
  def-scatter-plot
  (xs ys)
  (= (scatter-plot-of (data xs) (data ys))
     (scatter-plot (zip-with (Lam x (Lam y (2d.point x y))) xs ys))))

;;----------------------
;;----------------------
(axiom
  def-correlation-table-equality
  (dist1 dist2)
  (<-> (= (correlation-table dist1) (correlation-table dist2))
       (&& (all (PLam x (|| (= (third-of-3 x) 0) (member x dist2))) dist1)
           (all (PLam x (|| (= (third-of-3 x) 0) (member x dist1))) dist2))))

;;---------------
;;---------------
;(axiom
;  def-average-of-seq
;  (ds)
;  (= (average-of (data ds))
;     (/ (sum ds) (data-count (data ds)))))
;
;
;(axiom
;  def-average-of-freq-dist
;  (pairs)
;  (= (average-of (freq-dist pairs))
;     (/ (freq-dist-sum pairs)
;        (data-count (freq-dist pairs)))))

;;---------------
;;---------------
(axiom
  def-interquartile-range-of
  (dat)
  (= (interquartile-range-of dat)
     (- (third-quartile-of dat)
        (first-quartile-of dat))))

(axiom
  def-quartile-deviation-of
  (dat)
  (= (quartile-deviation-of dat)
     (/ (interquartile-range-of dat) 2)))

;;---------------
;;---------------
(axiom
  def-standard-deviation-of
  (dat)
  (= (standard-deviation-of dat)
     (sqrt (variance-of dat))))

;;---------------
;;---------------
(axiom
   def-correlation-coefficient-of
   (dat1 dat2)
   (= (correlation-coefficient-of dat1 dat2)
      (/ (covariance-of dat1 dat2)
         (* (standard-deviation-of dat1)
            (standard-deviation-of dat2)))))


;;---------------
;;---------------
;(axiom
;  def-rounding
;  (x rx n)
;  (<-> (= x (rounded rx n))
;       (&& (<= (- rx (* 5 (^ 10 (int->real n)))) x)
;           (<  x (+ rx (* 5 (^ 10 (int->real n))))))))
;
(axiom
  def-round-at
  (x n y)
  (<-> (= x (round-at y n))
       (&& (<= (- x (* 5 (^ 10 (int->real n)))) y)
           (<  y (+ x (* 5 (^ 10 (int->real n))))))))


(axiom
  def-uniq-base-case
  ()
  (= (uniq (nil))
     (nil)))

(axiom
  def-uniq-base-case2
  (v)
  (= (uniq (list-of v))
     (list-of v)))

(axiom
  def-uniq-rec
  (v1 v2 vs)
  (= (uniq (cons v1 (cons v2 vs)))
     (if (= v1 v2)
         (uniq (cons v2 vs))
         (cons v1 (uniq (cons v2 vs))))))
