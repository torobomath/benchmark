%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Solve the system of equations:
%% \[     x+y+z = a            \]
%% \[     x^2 +y^2 +z^2 = b^2  \]
%% \[     xy = z^2             \]
%% where $a$ and $b$ are constants. Give the conditions that $a$ and $b$ must satisfy
%% so that $x$, $y$, $z$ (the solutions of the system) are distinct positive numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   8 equality;  30 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   60 (   3   ~;   0   |;  11   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_x: 'R',V_y: 'R',V_z: 'R'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( ( '+/2' @ V_x @ ( '+/2' @ V_y @ V_z ) )
          = V_a )
        & ( ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '^/2' @ V_z @ 2 ) ) )
          = ( '^/2' @ V_b @ 2 ) )
        & ( ( '*/2' @ V_x @ V_y )
          = ( '^/2' @ V_z @ 2 ) )
        & ( '>/2' @ V_x @ 0 )
        & ( '>/2' @ V_y @ 0 )
        & ( '>/2' @ V_z @ 0 )
        & ( V_x != V_y )
        & ( V_y != V_z )
        & ( V_x != V_z ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( '</2' @ ( 'abs/1' @ V_b_dot_0 ) @ V_a_dot_0 )
      & ( '</2' @ V_a_dot_0 @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( 'abs/1' @ V_b_dot_0 ) ) ) ) ),
    answer_to(p_question,[])).
