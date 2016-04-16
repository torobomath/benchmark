%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be positive numbers, and let $ABC$ be the equilateral
%% triangle whose two vertices are the points $2$ and $A(a, 0)$ on the
%% $xy$ plane, where $C$ is a point in the first quadrant.
%%
%% (1) Find the range of $(a, b)$ such that the triangle $ABC$ is
%% contained in the square $D=\{(x, y)| 0\le x\le 1, 0\le y\le 1\}$.
%%
%% (2) When $(a, b)$ moves in the range found in (1), find the maximum
%% value of the area $S$ of the triangle $ABC$ and $(a, , , b)$ that
%% gives the maximum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  241 (  16 equality;  77 variable)
%            Maximal formula depth :   37 (  23 average)
%            Number of connectives :  209 (   0   ~;   2   |;  33   &; 174   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   0   !;  20   ?;   8   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Shape'] :
        ( ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 0.0 @ V_b ) )
        & ( '2d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_C @ '2d.1st-quadrant/0' )
        & ( $less @ 0.0 @ V_a )
        & ( $less @ 0.0 @ V_b )
        & ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 1.0 )
                & ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ V_y @ 1.0 ) ) ) )
        & ( '2d.inside-of/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_D ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab_opt: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Shape',V_S_max: $real] :
        ( ( V_ab_opt
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ( V_S_max
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 0.0 @ V_b ) )
        & ( '2d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_C @ '2d.1st-quadrant/0' )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_p ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_p ) @ 1.0 )
                & ( $lesseq @ 0.0 @ ( '2d.y-coord/1' @ V_p ) )
                & ( $lesseq @ ( '2d.y-coord/1' @ V_p ) @ 1.0 ) ) ) )
        & ( '2d.inside-of/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_D )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a2: $real,V_b2: $real,V_A2: '2d.Point',V_B2: '2d.Point',V_C2: '2d.Point'] :
                ( ( V_S
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A2 @ V_B2 @ V_C2 ) ) )
                & ( V_A2
                  = ( '2d.point/2' @ V_a2 @ 0.0 ) )
                & ( V_B2
                  = ( '2d.point/2' @ 0.0 @ V_b2 ) )
                & ( '2d.is-equilateral-triangle/3' @ V_A2 @ V_B2 @ V_C2 )
                & ( '2d.on/2' @ V_C2 @ '2d.1st-quadrant/0' )
                & ( '2d.inside-of/2' @ ( '2d.triangle/3' @ V_A2 @ V_B2 @ V_C2 ) @ V_D ) ) )
          @ V_S_max ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $less @ 0.0 @ V_a_dot_0 )
      & ( $lesseq @ V_a_dot_0 @ 1.0 )
      & ( $less @ 0.0 @ V_b_dot_0 )
      & ( $lesseq @ V_b_dot_0 @ 1.0 )
      & ( $lesseq @ ( $sum @ ( $quotient @ V_a_dot_0 @ 2.0 ) @ ( $quotient @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ V_b_dot_0 ) @ 2.0 ) ) @ 1.0 )
      & ( $lesseq @ ( $sum @ ( $quotient @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ V_a_dot_0 ) @ 2.0 ) @ ( $quotient @ V_b_dot_0 @ 2.0 ) ) @ 1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ab: ( 'ListOf' @ $real )] :
      ( ( V_ab
        = ( 'cons/2' @ $real @ ( $difference @ ( 'sqrt/1' @ 3.0 ) @ 1.0 ) @ ( 'cons/2' @ $real @ ( $difference @ ( 'sqrt/1' @ 3.0 ) @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) )
      | ( V_ab
        = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $difference @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) )
      | ( V_ab
        = ( 'cons/2' @ $real @ ( $difference @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p2_question,[])).

