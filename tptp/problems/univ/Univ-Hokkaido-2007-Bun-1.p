%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-30
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers. Assume that the equation
%% $x^2 + a x + b = 0$ has real solutions, and the absolute values of
%% all the solutions are equal to or smaller than $1$.
%%
%% (1) Draw all the points $(a, b)$ that satisfy this condition on the
%% $a b$ plane.
%%
%% (2) Find the maximum and minimum values of $a + 2 b$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   94 (   7 equality;  33 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   78 (   0   ~;   0   |;   8   &;  68   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   14 (   0 sgn;   2   !;   7   ?;   5   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ! [V_x_dot_0: 'R'] :
            ( ( 0
              = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '+/2' @ ( '*/2' @ V_a @ V_x_dot_0 ) @ V_b ) ) )
           => ( '<=/2' @ ( 'abs/1' @ V_x_dot_0 ) @ 1 ) )
        & ? [V_x: 'R'] :
            ( 0
            = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '*/2' @ V_a @ V_x ) @ V_b ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_zmax: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_z: 'R'] :
            ? [V_a: 'R',V_b: 'R'] :
              ( ( V_z
                = ( '+/2' @ V_a @ ( '*/2' @ 2 @ V_b ) ) )
              & ! [V_x: 'R'] :
                  ( ( 0
                    = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '*/2' @ V_a @ V_x ) @ V_b ) ) )
                 => ( '<=/2' @ ( 'abs/1' @ V_x ) @ 1 ) ) ) )
        @ V_zmax ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( '<=/2' @ -2 @ V_a_dot_0 )
      & ( '<=/2' @ V_a_dot_0 @ 2 )
      & ( '<=/2' @ ( '-/2' @ V_a_dot_0 @ 1 ) @ V_b_dot_0 )
      & ( '<=/2' @ ( '-/2' @ ( '-/1' @ V_a_dot_0 ) @ 1 ) @ V_b_dot_0 )
      & ( '<=/2' @ V_b_dot_0 @ ( '//2' @ ( '^/2' @ V_a_dot_0 @ 2 ) @ 4 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_zmax_dot_0: 'R'] : ( V_zmax_dot_0 = -2 ) ),
    answer_to(p2_question,[])).
