(import "axioms/DefaultTypes.lsp")
(import "axioms/Geom2DTypes.lsp")

;;@-----------------------------------------------------------------------------
;;@ Statistics
;;@-----------------------------------------------------------------------------
(namespace stat)

;;--------------------
;;--------------------
(def-type Data)
(def-fun data :: (ListOf R) => Data)

(def-pred data-def :: String -> Data => Bool)

(def-fun data-ref :: String => Data)

(def-fun data-count :: Data => R)

(def-fun data-range :: Data => R)
(def-fun data-max :: Data => R)
(def-fun data-min :: Data => R)

;;--------------------
;;--------------------
(def-fun data* :: Data -> R => Data)
(def-fun data+ :: Data -> R => Data)

;;--------------------
;;--------------------
(def-fun data** :: Data -> Data => Data)

;;--------------------
;;--------------------
(def-type Class)

(def-fun point-class :: R => Class) 

(def-fun range-class :: R -> R => Class)

(def-fun class-width :: Class => R)

(def-fun class-value :: Class => R)

;;--------------------
;;--------------------
(def-fun freq-dist :: (ListOf (Pair Class R)) => Data)

;;--------------------
;;--------------------
(def-fun frequency-of-in :: Class -> Data => R)
(def-fun relative-frequency-of-in :: Class -> Data => R)

;;--------------------
;;--------------------
;; (freq-dist-of (data (list-of x1 x2 ...))
;;               (list-of b1 b2 ...))
(def-fun freq-dist-of :: Data -> (ListOf R) => Data)
(def-fun relative-freq-dist-of :: Data -> (ListOf R) => Data)

;; (point-freq-dist-of (data (list-of x1 x2 ...)))
(def-fun point-freq-dist-of :: Data => Data)
(def-fun point-relative-freq-dist-of :: Data => Data)

;;--------------------
;;--------------------
(def-fun deviation-of-in :: R -> Data => R)

;;--------------------
;;--------------------
(def-type BoxPlot)
(def-type BoxPlotWithAvg)

(def-fun box-plot :: R -> R -> R -> R -> R => BoxPlot)

(def-fun box-plot-with-avg :: R -> R -> R -> R -> R -> R => BoxPlotWithAvg)

;(def-pred box-plot-def :: String -> BoxPlot => Bool)
(def-fun box-plot-of :: Data => BoxPlot)
(def-fun box-plot-with-avg-of :: Data => BoxPlotWithAvg)

;;--------------------
;;--------------------
(def-type ScatterPlot)

(def-fun scatter-plot :: (ListOf 2d.Point) => ScatterPlot)

;(def-pred scatter-plot-def :: String -> String -> ScatterPlot => Bool)
(def-fun scatter-plot-of :: Data -> Data => ScatterPlot)

(def-fun project-1st :: ScatterPlot => (ListOf R))

(def-fun project-2nd :: ScatterPlot => (ListOf R))

;;--------------------
;;--------------------
(def-type CorrelationTable)

(def-fun correlation-table :: (ListOf (Triple Class Class R)) => CorrelationTable)

;; (correlation-table-of
;;     (list-of (point x1 y1) (point x2 y2) ...)
;;     (list-of xb1 xb2 ...)
;;     (list-of yb1 yb2 ...))
;;
(def-fun correlation-table-of ::
    (ListOf 2d.Point) -> (ListOf R) -> (ListOf R) => CorrelationTable)

(def-fun freq-dist-of-x :: CorrelationTable => Data)
(def-fun freq-dist-of-y :: CorrelationTable => Data)

;;--------------------
;;--------------------
(def-fun average-of :: Data => R)

(def-fun median-of :: Data => R)

(def-fun mode-of :: Data => R)

(def-fun first-quartile-of :: Data => R)
(def-fun third-quartile-of :: Data => R)

(def-fun interquartile-range-of :: Data => R)

(def-fun quartile-deviation-of :: Data => R)

(def-fun variance-of :: Data => R)

(def-fun standard-deviation-of :: Data => R)

(def-fun covariance-of :: Data -> Data => R)

(def-fun correlation-coefficient-of :: Data -> Data => R)

;;--------------------
;;--------------------
;; ...
(def-fun rounded :: R -> Z => R) 

(def-fun round-at :: R -> Z => R)

;;--------------------
;;
;;--------------------
(def-fun sort< :: (ListOf R) => (ListOf R)) 
(def-fun sort> :: (ListOf R) => (ListOf R)) 

(def-fun uniq :: (ListOf R) => (ListOf R))
