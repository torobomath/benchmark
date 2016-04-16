%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $R$ be the rectangle whose vertices are at the points $A(1, 0)$,
%% $B(2, 0)$, $C(2, 8)$, and $D(1, 8)$ on the coordinate plane.
%% Meanwhile, let $T(t)$ be the triangle whose vertices are at the
%% origin $O(0, 0)$, point $E(4, 0)$, and point $P(t, 8 t-2t^2)$, where
%% $0 < t < 4$.
%%
%% (1) Find the area $f(t)$ of the region common to the inside of $R$
%% and the inside of $T(t)$.
%%
%% (2) Assuming that $t$ moves in the range of $0 < t < 4$, find the
%% maximum value of $f(t)$ and the value of $t$ that gives the maximum
%% value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  206 (  21 equality;  46 variable)
%            Maximal formula depth :   30 (  16 average)
%            Number of connectives :  162 (   0   ~;   2   |;  25   &; 135   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   1   :;   0   =)
%            Number of variables   :   24 (   0 sgn;   0   !;  17   ?;   7   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   18 (   2 pred;    5 func;   11 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_f: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_R: '2d.Shape',V_E: '2d.Point',V_T: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 1.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2.0 @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 2.0 @ 8.0 ) )
        & ( V_D
          = ( '2d.point/2' @ 1.0 @ 8.0 ) )
        & ( V_R
          = ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( V_E
          = ( '2d.point/2' @ 4.0 @ 0.0 ) )
        & ( $less @ 0.0 @ 't/0' )
        & ( $less @ 't/0' @ 4.0 )
        & ( V_T
          = ( '2d.triangle/3' @ '2d.origin/0' @ V_E @ ( '2d.point/2' @ 't/0' @ ( $difference @ ( $product @ 8.0 @ 't/0' ) @ ( $product @ 2.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) ) )
        & ( V_f
          = ( '2d.area-of/1' @ ( '2d.intersection/2' @ ( '2d.shape-inside-of/1' @ V_R ) @ ( '2d.shape-inside-of/1' @ V_T ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_maxf_t: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_R: '2d.Shape',V_E: '2d.Point',V_T: ( $real > '2d.Shape' ),V_f: 'R2R',V_maxf: $real,V_maxt: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 1.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2.0 @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 2.0 @ 8.0 ) )
        & ( V_D
          = ( '2d.point/2' @ 1.0 @ 8.0 ) )
        & ( V_R
          = ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( V_E
          = ( '2d.point/2' @ 4.0 @ 0.0 ) )
        & ( V_T
          = ( ^ [V_t_dot_0: $real] :
                ( '2d.triangle/3' @ '2d.origin/0' @ V_E @ ( '2d.point/2' @ V_t_dot_0 @ ( $difference @ ( $product @ 8.0 @ V_t_dot_0 ) @ ( $product @ 2.0 @ ( '^/2' @ V_t_dot_0 @ 2.0 ) ) ) ) ) ) )
        & ( V_f
          = ( 'fun/1'
            @ ^ [V_t: $real] :
                ( '2d.area-of/1' @ ( '2d.intersection/2' @ ( '2d.shape-inside-of/1' @ V_R ) @ ( '2d.shape-inside-of/1' @ ( V_T @ V_t ) ) ) ) ) )
        & ( 'func-max/4' @ V_f
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_t0: $real] :
                ( ( $less @ 0.0 @ V_t0 )
                & ( $less @ V_t0 @ 4.0 ) ) )
          @ V_maxt
          @ V_maxf )
        & ( V_maxf_t
          = ( 'cons/2' @ $real @ V_maxf @ ( 'cons/2' @ $real @ V_maxt @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_f_dot_0: $real] :
      ( ( ( $less @ 0.0 @ 't/0' )
        & ( $less @ 't/0' @ 1.0 )
        & ( V_f_dot_0
          = ( $product @ 5.0 @ 't/0' ) ) )
      | ( ( $lesseq @ 1.0 @ 't/0' )
        & ( $less @ 't/0' @ 2.0 )
        & ( V_f_dot_0
          = ( $sum @ ( $uminus @ ( $product @ 4.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) @ ( $sum @ ( $product @ 13.0 @ 't/0' ) @ ( $uminus @ 4.0 ) ) ) ) )
      | ( ( $lesseq @ 2.0 @ 't/0' )
        & ( $less @ 't/0' @ 4.0 )
        & ( V_f_dot_0
          = ( $difference @ 12.0 @ ( $product @ 3.0 @ 't/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_maxf_t_dot_0: ( 'ListOf' @ $real )] :
      ( V_maxf_t_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 105.0 @ 16.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 13.0 @ 8.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

