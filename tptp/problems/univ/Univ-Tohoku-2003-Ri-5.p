%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2003, Science Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Assume that the different three points $1$, ${\alpha}$, and
%% ${\alpha}^2$ are on the same circumference centered on the real axis
%% on the complex plane. Draw the range of such ${\alpha}$ on the
%% complex plane. Represent the radius of this circle using
%% $|{\alpha}|$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  140 (  12 equality;  37 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :  121 (   7   ~;   1   |;  20   &;  93   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   1   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    2 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_alpha2: ( 'ListOf' @ $real )] :
      ? [V_C: '2d.Shape',V_alpha: 'complex.Complex'] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_alpha2
          = ( 'cons/2' @ $real @ ( 'complex.real-part/1' @ V_alpha ) @ ( 'cons/2' @ $real @ ( 'complex.imaginary-part/1' @ V_alpha ) @ ( 'nil/0' @ $real ) ) ) )
        & ( ( 'complex.complex/2' @ 1.0 @ 0.0 )
         != V_alpha )
        & ( V_alpha
         != ( 'complex.^/2' @ V_alpha @ 2.0 ) )
        & ( ( 'complex.^/2' @ V_alpha @ 2.0 )
         != ( 'complex.complex/2' @ 1.0 @ 0.0 ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_alpha ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.^/2' @ V_alpha @ 2.0 ) ) @ V_C )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' ) ) )).

thf(p_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_C: '2d.Shape',V_alpha: 'complex.Complex'] :
        ( ( V_r
          = ( '2d.radius-of/1' @ V_C ) )
        & ( 'a/0'
          = ( 'complex.abs/1' @ V_alpha ) )
        & ( '2d.circle-type/1' @ V_C )
        & ( ( 'complex.complex/2' @ 1.0 @ 0.0 )
         != V_alpha )
        & ( V_alpha
         != ( 'complex.^/2' @ V_alpha @ 2.0 ) )
        & ( ( 'complex.^/2' @ V_alpha @ 2.0 )
         != ( 'complex.complex/2' @ 1.0 @ 0.0 ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_alpha ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.^/2' @ V_alpha @ 2.0 ) ) @ V_C )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' ) ) )).

thf(p_1_answer,answer,(
    ^ [V_alpha_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x: $real,V_y: $real] :
      ( ( V_alpha_dot_0
        = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) )
      & ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) )
        | ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ '2d.y-axis/0' ) )
      & ( V_y != 0.0 ) ) ),
    answer_to(p_1_question,[])).

thf(p_2_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( V_r_dot_0
        = ( $quotient @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ 1.0 ) @ 2.0 ) ) ) ),
    answer_to(p_2_question,[])).

