%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2005, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-28
%%
%% <PROBLEM-TEXT>
%% Let ${\alpha}$ and ${\beta}$ be the different complex numbers other
%% than $0$ satisfying
%% $\frac{{\alpha}}{{\beta}}+\frac{\overline{{\alpha}}}{\overline{{\beta}}}=2$.
%% Find the triangle obtained by connecting the three points $0$,
%% ${\alpha}$, and ${\beta}$ on the complex plane, where for the complex
%% number $z$, $\overline{z}$ is a complex number conjugate to $z$, and
%% complex planes are also called complex number plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :   93 (  13 equality;  24 variable)
%            Maximal formula depth :   18 (   7 average)
%            Number of connectives :   71 (   6   ~;   0   |;  12   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   4   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    0 func;    2 numbers)

include('axioms.ax').

thf('ai/0_type',type,(
    'ai/0': $real )).

thf('ar/0_type',type,(
    'ar/0': $real )).

thf('bi/0_type',type,(
    'bi/0': $real )).

thf('br/0_type',type,(
    'br/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_oab: '2d.Shape'] :
      ? [V_a: 'complex.Complex',V_b: 'complex.Complex'] :
        ( ( V_a
          = ( 'complex.complex/2' @ 'ar/0' @ 'ai/0' ) )
        & ( V_b
          = ( 'complex.complex/2' @ 'br/0' @ 'bi/0' ) )
        & ( V_a
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( V_b
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( V_a != V_b )
        & ( ( 'complex.+/2' @ ( 'complex.//2' @ V_a @ V_b ) @ ( 'complex.//2' @ ( 'complex.conjugate/1' @ V_a ) @ ( 'complex.conjugate/1' @ V_b ) ) )
          = ( 'complex.complex/2' @ 2.0 @ 0.0 ) )
        & ( V_oab
          = ( '2d.triangle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) @ ( 'complex.complex->point/1' @ V_a ) @ ( 'complex.complex->point/1' @ V_b ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_oab_dot_0: '2d.Shape'] :
    ? [V_a_dot_0: 'complex.Complex',V_b_dot_0: 'complex.Complex'] :
      ( ( V_a_dot_0
       != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
      & ( V_b_dot_0
       != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
      & ( V_a_dot_0 != V_b_dot_0 )
      & ( V_a_dot_0
        = ( 'complex.complex/2' @ 'ar/0' @ 'ai/0' ) )
      & ( V_b_dot_0
        = ( 'complex.complex/2' @ 'br/0' @ 'bi/0' ) )
      & ( V_oab_dot_0
        = ( '2d.triangle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) @ ( 'complex.complex->point/1' @ V_a_dot_0 ) @ ( 'complex.complex->point/1' @ V_b_dot_0 ) ) )
      & ( '2d.is-right/1' @ ( '2d.angle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) @ ( 'complex.complex->point/1' @ V_b_dot_0 ) @ ( 'complex.complex->point/1' @ V_a_dot_0 ) ) ) ) ),
    answer_to(p_question,[])).

