(default-namespace)

(import "axioms/DefaultTypes.lsp")
(import "axioms/Geom2DTypes.lsp")
(import "axioms/Geom3DTypes.lsp")

;;
;;# DONT_EXPORT_BEGIN
(define-macro
 (dirseg-common)
 `(begin
    (def-type DirSeg)
    (def-fun dirseg :: Vector => DirSeg)
    (def-fun dirseg+ :: DirSeg -> DirSeg => DirSeg)
    (def-fun dirseg-sum :: (ListOf DirSeg) => DirSeg)
    (def-fun dirseg->vec :: DirSeg => Vector)

    (axiom
     def_dirseg_plus
     (v1 v2)
     (= (dirseg+ (dirseg v1) (dirseg v2))
        (dirseg (v+ v1 v2))))

    (axiom
     def_dirseg_sum_cons
     (v vs)
     (= (dirseg-sum (cons v vs))
        (dirseg+ v (dirseg-sum vs))))

    (axiom
      def_dirseg_sum_nil
      ()
      (= (dirseg-sum (nil))
         (dirseg (zero-vector))))

    (axiom
     def_dirseg_to_vec
     (v)
     (= (dirseg->vec (dirseg v))
        v))))

(namespace 2d)
(dirseg-common)

(namespace 3d)
(dirseg-common)
;;# DONT_EXPORT_END
