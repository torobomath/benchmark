%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2013-11-21
%%
%% <PROBLEM-TEXT>
%% For $\triangle ABC$, assume that $\angle BAC = 90^{\circ}$,
%% $|\vec{AB}|=1$, and $|\vec{AC}|=\sqrt{3}$. Assume that the point $P$
%% on the inside of $\triangle ABC$ satisfies
%% $\frac{\vec{PA}}{|\vec{PA}|}+\frac{\vec{PB}}{|\vec{PB}|}+\frac{\vec{PC}}{|\vec{PC}|}=\vec{0}$.
%%
%% (1) Find $\angle APB$ and $\angle APC$.
%%
%% (2) Find $|\vec{PA}|$, $|\vec{PB}|$, and $|\vec{PC}|$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  235 (   6 equality;  23 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :  223 (   0   ~;   0   |;   4   &; 219   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    1 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_angles: ( 'ListOf' @ $real )] :
      ? [V_P: '2d.Point'] :
        ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) ) ) )
        & ( V_angles
          = ( 'cons/2' @ $real @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ V_P @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) @ ( 'cons/2' @ $real @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ V_P @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_lengths: ( 'ListOf' @ $real )] :
      ? [V_P: '2d.Point'] :
        ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
        & ( '2d.zero-vector/0'
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) @ ( '2d.sv*/2' @ ( $quotient @ 1.0 @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) @ ( '2d.vec/2' @ V_P @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) ) ) )
        & ( V_lengths
          = ( 'cons/2' @ $real @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) @ ( 'cons/2' @ $real @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) @ ( 'cons/2' @ $real @ ( '2d.distance/2' @ V_P @ ( '2d.point/2' @ 0.0 @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_angles_dot_0: ( 'ListOf' @ $real )] :
      ( V_angles_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ -1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ -1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_lengths_dot_0: ( 'ListOf' @ $real )] :
      ( V_lengths_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 7.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ 2.0 @ ( 'sqrt/1' @ 7.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ 4.0 @ ( 'sqrt/1' @ 7.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p2_question,[])).

