%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E217
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  589 (  36 equality; 258 variable)
%            Maximal formula depth :   50 (  24 average)
%            Number of connectives :  511 (   0   ~;   0   |;  74   &; 435   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   1   :;   0   =)
%            Number of variables   :   57 (   0 sgn;   8   !;  38   ?;  11   ^)
%                                         (  57   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_St: $real] :
      ? [V_O: '3d.Point',V_X: '3d.Point',V_Y: '3d.Point',V_Z: '3d.Point',V_A: '3d.Point',V_P: '3d.Point',V_B: '3d.Point',V_Q: '3d.Point',V_C: '3d.Point',V_R: '3d.Point',V_F: '3d.Shape',V_G: '3d.Shape'] :
        ( ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_X ) @ ( '3d.line/2' @ V_O @ V_Y ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_X ) @ ( '3d.line/2' @ V_O @ V_Z ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_Y ) @ ( '3d.line/2' @ V_O @ V_Z ) )
        & ( '3d.on/2' @ V_A @ ( '3d.half-line/2' @ V_O @ V_X ) )
        & ( '3d.on/2' @ V_P @ ( '3d.half-line/2' @ V_O @ V_X ) )
        & ( '3d.on/2' @ V_B @ ( '3d.half-line/2' @ V_O @ V_Y ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.half-line/2' @ V_O @ V_Y ) )
        & ( '3d.on/2' @ V_C @ ( '3d.half-line/2' @ V_O @ V_Z ) )
        & ( '3d.on/2' @ V_R @ ( '3d.half-line/2' @ V_O @ V_Z ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_A ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_B ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_C ) )
          = 1.0 )
        & ( $lesseq @ 1.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 2.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P ) )
          = 't/0' )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_Q ) )
          = 't/0' )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_R ) )
          = 't/0' )
        & ( V_F
          = ( '3d.cube/8' @ V_O @ V_A @ V_B @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) ) @ V_C @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) ) ) @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) ) @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) ) ) ) )
        & ( V_G
          = ( '3d.triangle/3' @ V_P @ V_Q @ V_R ) )
        & ( V_St
          = ( '3d.area-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_T: '3d.Point'] :
                  ( ( '3d.on/2' @ V_T @ V_G )
                  & ( '3d.on/2' @ V_T @ V_F ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_O: '3d.Point',V_X: '3d.Point',V_Y: '3d.Point',V_Z: '3d.Point',V_A: '3d.Point',V_P: '3d.Point',V_B: '3d.Point',V_Q: '3d.Point',V_C: '3d.Point',V_R: '3d.Point',V_F: '3d.Shape',V_G: '3d.Shape',V_St: $real] :
        ( ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_X ) @ ( '3d.line/2' @ V_O @ V_Y ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_X ) @ ( '3d.line/2' @ V_O @ V_Z ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_Y ) @ ( '3d.line/2' @ V_O @ V_Z ) )
        & ( '3d.on/2' @ V_A @ ( '3d.half-line/2' @ V_O @ V_X ) )
        & ( '3d.on/2' @ V_P @ ( '3d.half-line/2' @ V_O @ V_X ) )
        & ( '3d.on/2' @ V_B @ ( '3d.half-line/2' @ V_O @ V_Y ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.half-line/2' @ V_O @ V_Y ) )
        & ( '3d.on/2' @ V_C @ ( '3d.half-line/2' @ V_O @ V_Z ) )
        & ( '3d.on/2' @ V_R @ ( '3d.half-line/2' @ V_O @ V_Z ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_A ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_B ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_C ) )
          = 1.0 )
        & ( $lesseq @ 1.0 @ V_t )
        & ( $lesseq @ V_t @ 2.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P ) )
          = V_t )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_Q ) )
          = V_t )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_R ) )
          = V_t )
        & ( V_F
          = ( '3d.cube/8' @ V_O @ V_A @ V_B @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) ) @ V_C @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) ) ) @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) ) @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) ) ) ) )
        & ( V_G
          = ( '3d.triangle/3' @ V_P @ V_Q @ V_R ) )
        & ( V_St
          = ( '3d.area-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_T_dot_0: '3d.Point'] :
                  ( ( '3d.on/2' @ V_T_dot_0 @ V_G )
                  & ( '3d.on/2' @ V_T_dot_0 @ V_F ) ) ) ) )
        & ! [V_s: $real,V_P2: '3d.Point',V_Q2: '3d.Point',V_R2: '3d.Point'] :
            ( ( ( '3d.on/2' @ V_P2 @ ( '3d.half-line/2' @ V_O @ V_X ) )
              & ( '3d.on/2' @ V_Q2 @ ( '3d.half-line/2' @ V_O @ V_Y ) )
              & ( '3d.on/2' @ V_R2 @ ( '3d.half-line/2' @ V_O @ V_Z ) )
              & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P2 ) )
                = V_s )
              & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_Q2 ) )
                = V_s )
              & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_R2 ) )
                = V_s ) )
           => ( $greatereq @ V_St
              @ ( '3d.area-of/1'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_T: '3d.Point'] :
                      ( ( '3d.on/2' @ V_T @ ( '3d.triangle/3' @ V_P2 @ V_Q2 @ V_R2 ) )
                      & ( '3d.on/2' @ V_T @ V_F ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_St: $real] :
      ? [V_O: '3d.Point',V_X: '3d.Point',V_Y: '3d.Point',V_Z: '3d.Point',V_A: '3d.Point',V_P: '3d.Point',V_B: '3d.Point',V_Q: '3d.Point',V_C: '3d.Point',V_R: '3d.Point',V_F: '3d.Shape',V_G: '3d.Shape',V_t: $real] :
        ( ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_X ) @ ( '3d.line/2' @ V_O @ V_Y ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_X ) @ ( '3d.line/2' @ V_O @ V_Z ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_O @ V_Y ) @ ( '3d.line/2' @ V_O @ V_Z ) )
        & ( '3d.on/2' @ V_A @ ( '3d.half-line/2' @ V_O @ V_X ) )
        & ( '3d.on/2' @ V_P @ ( '3d.half-line/2' @ V_O @ V_X ) )
        & ( '3d.on/2' @ V_B @ ( '3d.half-line/2' @ V_O @ V_Y ) )
        & ( '3d.on/2' @ V_Q @ ( '3d.half-line/2' @ V_O @ V_Y ) )
        & ( '3d.on/2' @ V_C @ ( '3d.half-line/2' @ V_O @ V_Z ) )
        & ( '3d.on/2' @ V_R @ ( '3d.half-line/2' @ V_O @ V_Z ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_A ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_B ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_C ) )
          = 1.0 )
        & ( $lesseq @ 1.0 @ V_t )
        & ( $lesseq @ V_t @ 2.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P ) )
          = V_t )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_Q ) )
          = V_t )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_R ) )
          = V_t )
        & ( V_F
          = ( '3d.cube/8' @ V_O @ V_A @ V_B @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) ) @ V_C @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) ) ) @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) ) @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_A ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_B ) ) @ ( '3d.vec/2' @ '3d.origin/0' @ V_C ) ) ) ) )
        & ( V_G
          = ( '3d.triangle/3' @ V_P @ V_Q @ V_R ) )
        & ( V_St
          = ( '3d.area-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_T_dot_0: '3d.Point'] :
                  ( ( '3d.on/2' @ V_T_dot_0 @ V_G )
                  & ( '3d.on/2' @ V_T_dot_0 @ V_F ) ) ) ) )
        & ! [V_s: $real,V_P2: '3d.Point',V_Q2: '3d.Point',V_R2: '3d.Point'] :
            ( ( ( '3d.on/2' @ V_P2 @ ( '3d.half-line/2' @ V_O @ V_X ) )
              & ( '3d.on/2' @ V_Q2 @ ( '3d.half-line/2' @ V_O @ V_Y ) )
              & ( '3d.on/2' @ V_R2 @ ( '3d.half-line/2' @ V_O @ V_Z ) )
              & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P2 ) )
                = V_s )
              & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_Q2 ) )
                = V_s )
              & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_R2 ) )
                = V_s ) )
           => ( $greatereq @ V_St
              @ ( '3d.area-of/1'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_T: '3d.Point'] :
                      ( ( '3d.on/2' @ V_T @ ( '3d.triangle/3' @ V_P2 @ V_Q2 @ V_R2 ) )
                      & ( '3d.on/2' @ V_T @ V_F ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_St_dot_0: $real] :
      ( V_St_dot_0
      = ( $difference @ ( $difference @ ( $product @ 3.0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ 't/0' ) ) @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( '^/2' @ 't/0' @ 2.0 ) ) ) @ ( $product @ 3.0 @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( V_t_dot_0
      = ( $quotient @ 3.0 @ 2.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_St_dot_0: $real] :
      ( V_St_dot_0
      = ( $product @ ( $quotient @ 3.0 @ 4.0 ) @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p3_question,[])).

