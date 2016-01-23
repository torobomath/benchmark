%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 1999, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% Let $p$ be a real number other than $0$, and consider the quadratic
%% equation $x^2 - p x + 5 p = 0$.
%%
%% (1) Assume that the solutions ${\alpha}$ and ${\beta}$ of
%% $x^2 - p x + 5 p = 0$ satisfies ${\alpha}^5 + {\beta}^5 = p^5$. Find
%% the value of $p$.
%%
%% (2) Assume that $x^2 - p x + 5 p = 0$ has imaginary solutions, and
%% the fifth power of the solutions are real numbers. Find the value of
%% $p$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  108 (  12 equality;  30 variable)
%            Maximal formula depth :   15 (   9 average)
%            Number of connectives :   82 (   4   ~;   1   |;   9   &;  68   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_c_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'R'] :
      ? [V_a: 'complex.Complex',V_b: 'complex.Complex',V_pc: 'complex.Complex'] :
        ( ( 0 != V_p )
        & ( V_pc
          = ( 'complex.real->complex/1' @ V_p ) )
        & ( V_pc
          = ( 'complex.+/2' @ V_a @ V_b ) )
        & ( ( 'complex.*/2' @ ( 'complex.complex/2' @ 5 @ 0 ) @ V_pc )
          = ( 'complex.*/2' @ V_a @ V_b ) )
        & ( ( 'complex.^/2' @ V_pc @ 5 )
          = ( 'complex.+/2' @ ( 'complex.^/2' @ V_a @ 5 ) @ ( 'complex.^/2' @ V_b @ 5 ) ) ) ) )).

thf(p1_c2_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'R'] :
      ? [V_a: 'complex.Complex',V_b: 'complex.Complex'] :
        ( ( 0 != V_p )
        & ( 'complex.are-solutions-of/2' @ ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) @ ( 'complex.quad-equation/3' @ ( '*/2' @ 5 @ V_p ) @ ( '-/1' @ V_p ) @ 1 ) )
        & ( ( 'complex.^/2' @ ( 'complex.complex/2' @ V_p @ 0 ) @ 5 )
          = ( 'complex.+/2' @ ( 'complex.^/2' @ V_a @ 5 ) @ ( 'complex.^/2' @ V_b @ 5 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'R'] :
      ? [V_c: 'complex.Complex'] :
        ( ( 0 != V_p )
        & ( 'complex.is-solution-of/2' @ V_c @ ( 'complex.quad-equation/3' @ ( '*/2' @ 5 @ V_p ) @ ( '-/1' @ V_p ) @ 1 ) )
        & ~ ( 'complex.real-number/1' @ V_c )
        & ( 'complex.real-number/1' @ ( 'complex.^/2' @ V_c @ 5 ) ) ) )).

thf(p1_c_answer,answer,(
    ^ [V_p_dot_0: 'R'] : ( V_p_dot_0 = 5 ) ),
    answer_to(p1_c_question,[])).

thf(p1_c2_answer,answer,(
    ^ [V_p_dot_0: 'R'] : ( V_p_dot_0 = 5 ) ),
    answer_to(p1_c2_question,[])).

thf(p2_answer,answer,(
    ^ [V_p_dot_0: 'R'] :
      ( ( V_p_dot_0
        = ( '//2' @ ( '+/2' @ 15 @ ( '*/2' @ 5 @ ( 'sqrt/1' @ 5 ) ) ) @ 2 ) )
      | ( V_p_dot_0
        = ( '//2' @ ( '-/2' @ 15 @ ( '*/2' @ 5 @ ( 'sqrt/1' @ 5 ) ) ) @ 2 ) ) ) ),
    answer_to(p2_question,[])).
