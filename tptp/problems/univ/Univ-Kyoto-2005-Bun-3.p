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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (  13 equality;  32 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   70 (   6   ~;   0   |;  12   &;  52   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   14 (   8 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_oab: '2d.Shape'] :
      ? [V_a: 'complex.Complex',V_b: 'complex.Complex'] :
        ( ( V_a
          = ( 'complex.complex/2' @ V_ar @ V_ai ) )
        & ( V_b
          = ( 'complex.complex/2' @ V_br @ V_bi ) )
        & ( V_a
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( V_b
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( V_a != V_b )
        & ( ( 'complex.+/2' @ ( 'complex.//2' @ V_a @ V_b ) @ ( 'complex.//2' @ ( 'complex.conjugate/1' @ V_a ) @ ( 'complex.conjugate/1' @ V_b ) ) )
          = ( 'complex.complex/2' @ 2 @ 0 ) )
        & ( V_oab
          = ( '2d.triangle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0 @ 0 ) ) @ ( 'complex.complex->point/1' @ V_a ) @ ( 'complex.complex->point/1' @ V_b ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_oab_dot_0: '2d.Shape'] :
    ? [V_a_dot_0: 'complex.Complex',V_b_dot_0: 'complex.Complex'] :
      ( ( V_a_dot_0
       != ( 'complex.complex/2' @ 0 @ 0 ) )
      & ( V_b_dot_0
       != ( 'complex.complex/2' @ 0 @ 0 ) )
      & ( V_a_dot_0 != V_b_dot_0 )
      & ( V_a_dot_0
        = ( 'complex.complex/2' @ V_ar @ V_ai ) )
      & ( V_b_dot_0
        = ( 'complex.complex/2' @ V_br @ V_bi ) )
      & ( V_oab_dot_0
        = ( '2d.triangle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0 @ 0 ) ) @ ( 'complex.complex->point/1' @ V_a_dot_0 ) @ ( 'complex.complex->point/1' @ V_b_dot_0 ) ) )
      & ( '2d.is-right/1' @ ( '2d.angle/3' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 0 @ 0 ) ) @ ( 'complex.complex->point/1' @ V_b_dot_0 ) @ ( 'complex.complex->point/1' @ V_a_dot_0 ) ) ) ) ),
    answer_to(p_question,[])).
