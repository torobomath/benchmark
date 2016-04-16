%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1988, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-18
%%
%% <PROBLEM-TEXT>
%% Consider two coplanar circles of radii $R$ and $r$ ($R > r$) with the same
%% center. Let $P$ be a fixed point on the smaller circle and $B$ a variable point
%% on the larger circle. The line $BP$ meets the larger circle again at $C$. The
%% perpendicular $l$ to $BP$ at $P$ meets the smaller circle again at $A$. (If $l$
%% is tangent to the circle at $P$ then $A = P$.)
%% ¥begin{flushleft}
%% (i) Find the set of values of $BC^2 + CA^2 + AB^2$.¥¥
%% (ii) Find the locus of the midpoint of $AB$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   6 type;   0 defn)
%            Number of atoms       :  192 (  17 equality;  73 variable)
%            Maximal formula depth :   32 (  10 average)
%            Number of connectives :  158 (   4   ~;   2   |;  32   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   6   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   0   !;  14   ?;   5   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('Ox/0_type',type,(
    'Ox/0': $real )).

thf('Oy/0_type',type,(
    'Oy/0': $real )).

thf('Px/0_type',type,(
    'Px/0': $real )).

thf('Py/0_type',type,(
    'Py/0': $real )).

thf('R/0_type',type,(
    'R/0': $real )).

thf('r/0_type',type,(
    'r/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_s: $real] :
      ? [V_O: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_K1
          = ( '2d.circle/2' @ V_O @ 'R/0' ) )
        & ( V_K2
          = ( '2d.circle/2' @ V_O @ 'r/0' ) )
        & ( $greater @ 'r/0' @ 0.0 )
        & ( $greater @ 'R/0' @ 'r/0' )
        & ( '2d.on/2' @ V_P @ V_K2 )
        & ( '2d.on/2' @ V_B @ V_K1 )
        & ( '2d.on/2' @ V_C @ V_K1 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_K1 @ V_C )
        & ( V_B != V_C )
        & ( '2d.on/2' @ V_A @ V_K2 )
        & ( ( ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_P ) @ ( '2d.line/2' @ V_A @ V_P ) )
            & ( V_A != V_P ) )
          | ( ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_B @ V_P ) )
            & ( V_A = V_P ) ) )
        & ( V_s
          = ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ 2.0 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_A ) ) @ 2.0 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_fU: '2d.Shape'] :
        ( V_fU
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_U: '2d.Point'] :
            ? [V_O: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
              ( ( V_O
                = ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) )
              & ( V_P
                = ( '2d.point/2' @ 'Px/0' @ 'Py/0' ) )
              & ( V_K1
                = ( '2d.circle/2' @ V_O @ 'R/0' ) )
              & ( V_K2
                = ( '2d.circle/2' @ V_O @ 'r/0' ) )
              & ( $greater @ 'r/0' @ 0.0 )
              & ( $greater @ 'R/0' @ 'r/0' )
              & ( '2d.on/2' @ V_P @ V_K2 )
              & ( '2d.on/2' @ V_B @ V_K1 )
              & ( '2d.on/2' @ V_C @ V_K1 )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_K1 @ V_C )
              & ( V_B != V_C )
              & ( '2d.on/2' @ V_A @ V_K2 )
              & ( ( ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_P ) @ ( '2d.line/2' @ V_A @ V_P ) )
                  & ( V_A != V_P ) )
                | ( ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_B @ V_P ) )
                  & ( V_A = V_P ) ) )
              & ( V_U
                = ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: $real] :
      ( ( $greater @ 'R/0' @ 'r/0' )
      & ( $greater @ 'r/0' @ 0.0 )
      & ( V_s_dot_0
        = ( $sum @ ( $product @ 6.0 @ ( '^/2' @ 'R/0' @ 2.0 ) ) @ ( $product @ 2.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_fU_dot_0: '2d.Shape'] :
      ( ( $greater @ 'R/0' @ 'r/0' )
      & ( $greater @ 'r/0' @ 0.0 )
      & ( V_fU_dot_0
        = ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ ( '2d.point/2' @ 'Ox/0' @ 'Oy/0' ) @ ( '2d.point/2' @ 'Px/0' @ 'Py/0' ) ) @ ( $quotient @ 'R/0' @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

