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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  131 (  12 equality;  40 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :  112 (   7   ~;   1   |;  20   &;  84   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   12 (   1 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_alpha2: 'ListOf' @ 'R'] :
      ? [V_C: '2d.Shape',V_alpha: 'complex.Complex'] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_alpha2
          = ( 'cons/2' @ ( 'complex.real-part/1' @ V_alpha ) @ ( 'cons/2' @ ( 'complex.imaginary-part/1' @ V_alpha ) @ 'nil/0' ) ) )
        & ( ( 'complex.complex/2' @ 1 @ 0 )
         != V_alpha )
        & ( V_alpha
         != ( 'complex.^/2' @ V_alpha @ 2 ) )
        & ( ( 'complex.^/2' @ V_alpha @ 2 )
         != ( 'complex.complex/2' @ 1 @ 0 ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 1 @ 0 ) ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_alpha ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.^/2' @ V_alpha @ 2 ) ) @ V_C )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' ) ) )).

thf(p_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
      ? [V_C: '2d.Shape',V_alpha: 'complex.Complex'] :
        ( ( V_r
          = ( '2d.radius-of/1' @ V_C ) )
        & ( V_a
          = ( 'complex.abs/1' @ V_alpha ) )
        & ( '2d.circle-type/1' @ V_C )
        & ( ( 'complex.complex/2' @ 1 @ 0 )
         != V_alpha )
        & ( V_alpha
         != ( 'complex.^/2' @ V_alpha @ 2 ) )
        & ( ( 'complex.^/2' @ V_alpha @ 2 )
         != ( 'complex.complex/2' @ 1 @ 0 ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 1 @ 0 ) ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_alpha ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'complex.^/2' @ V_alpha @ 2 ) ) @ V_C )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' ) ) )).

thf(p_1_answer,answer,(
    ^ [V_alpha_dot_0: 'ListOf' @ 'R'] :
    ? [V_x: 'R',V_y: 'R'] :
      ( ( V_alpha_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) )
        | ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ '2d.y-axis/0' ) )
      & ( V_y != 0 ) ) ),
    answer_to(p_1_question,[])).

thf(p_2_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( V_r_dot_0
        = ( '//2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) @ 2 ) ) ) ),
    answer_to(p_2_question,[])).
