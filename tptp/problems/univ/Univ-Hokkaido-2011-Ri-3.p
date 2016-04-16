%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2011, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-18
%%
%% <PROBLEM-TEXT>
%% Answer the following questions:
%%
%% (1) Find the equation of the circle passing through the points
%% $O(0, 0)$, $A(2, 1)$, and $B(1, 2)$ on the $x y$ plane.
%%
%% (2) When $t$ moves across all real numbers, let $l$ be the straight
%% line formed by the point $(t+2, t+2, t)$ in the $x y z$ space. Find
%% the condition that $a$, $b$, must $c$ specify in order that the
%% spherical surface $S$ passing through the points $O(0, 0, 0)$,
%% $A^{\prime }(2, 1, 0)$, and $B^{\prime }(1, 2, 0)$ and centered at
%% $C(a, b, c)$ has common points with the straight line $l$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  158 (  17 equality;  49 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  122 (   0   ~;   1   |;  23   &;  98   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   0   :;   0   =)
%            Number of variables   :   21 (   0 sgn;   0   !;  16   ?;   5   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    2 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_O
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_A
          = ( '2d.point/2' @ 2.0 @ 1.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( '2d.on/2' @ V_O @ V_C )
        & ( '2d.on/2' @ V_A @ V_C )
        & ( '2d.on/2' @ V_B @ V_C ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abc: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_c: $real] :
        ( ( V_abc
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) )
        & ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_l: '3d.Shape',V_S: '3d.Shape'] :
            ( ( '3d.line-type/1' @ V_l )
            & ( V_l
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                  ? [V_t: $real] :
                    ( V_p
                    = ( '3d.point/3' @ ( $sum @ V_t @ 2.0 ) @ ( $sum @ V_t @ 2.0 ) @ V_t ) ) ) )
            & ( '3d.sphere-type/1' @ V_S )
            & ( V_O
              = ( '3d.point/3' @ 0.0 @ 0.0 @ 0.0 ) )
            & ( V_A
              = ( '3d.point/3' @ 2.0 @ 1.0 @ 0.0 ) )
            & ( V_B
              = ( '3d.point/3' @ 1.0 @ 2.0 @ 0.0 ) )
            & ( '3d.on/2' @ V_O @ V_S )
            & ( '3d.on/2' @ V_A @ V_S )
            & ( '3d.on/2' @ V_B @ V_S )
            & ( V_C
              = ( '3d.point/3' @ V_a @ V_b @ V_c ) )
            & ( V_C
              = ( '3d.center-of/1' @ V_S ) )
            & ( '3d.intersect/2' @ V_l @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.circle/2' @ ( '2d.point/2' @ ( $quotient @ 5.0 @ 6.0 ) @ ( $quotient @ 5.0 @ 6.0 ) ) @ ( 'sqrt/1' @ ( $quotient @ 25.0 @ 18.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_abc_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real,V_c_dot_0: $real] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'cons/2' @ $real @ V_c_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( ( ( V_a_dot_0
            = ( $quotient @ 5.0 @ 6.0 ) )
          & ( V_b_dot_0
            = ( $quotient @ 5.0 @ 6.0 ) )
          & ( $lesseq @ V_c_dot_0 @ ( $quotient @ 1.0 @ 3.0 ) ) )
        | ( ( V_a_dot_0
            = ( $quotient @ 5.0 @ 6.0 ) )
          & ( V_b_dot_0
            = ( $quotient @ 5.0 @ 6.0 ) )
          & ( $lesseq @ ( $quotient @ 13.0 @ 3.0 ) @ V_c_dot_0 ) ) ) ) ),
    answer_to(p2_question,[])).

