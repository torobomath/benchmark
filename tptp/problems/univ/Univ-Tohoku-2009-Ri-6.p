%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Science Course, Problem 6
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% For the real number $a$, find the range of $a$ such that the equation
%% of $x$: $|x(x - 2)| + 2 a |x| - 4 a |x - 2| - 1 = 0$ has four
%% different real solutions.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (   1 equality;  26 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :   74 (   0   ~;   2   |;   9   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_x1: 'R',V_x2: 'R',V_x3: 'R',V_x4: 'R',V_f: 'R' > 'R'] :
        ( ( V_f
          = ( ^ [V_x: 'R'] :
                ( '+/2' @ ( 'abs/1' @ ( '*/2' @ V_x @ ( '-/2' @ V_x @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ ( 'abs/1' @ V_x ) ) ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 4 ) @ ( '*/2' @ V_a @ ( 'abs/1' @ ( '-/2' @ V_x @ 2 ) ) ) ) @ ( '-/1' @ 1 ) ) ) ) ) )
        & ( '</2' @ V_x1 @ V_x2 )
        & ( '</2' @ V_x2 @ V_x3 )
        & ( '</2' @ V_x3 @ V_x4 )
        & ( 'is-solution-of/2' @ V_x1 @ ( 'equation/1' @ V_f ) )
        & ( 'is-solution-of/2' @ V_x2 @ ( 'equation/1' @ V_f ) )
        & ( 'is-solution-of/2' @ V_x3 @ ( 'equation/1' @ V_f ) )
        & ( 'is-solution-of/2' @ V_x4 @ ( 'equation/1' @ V_f ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( ( '</2' @ ( '//2' @ -1 @ 8 ) @ V_a_dot_0 )
        & ( '</2' @ V_a_dot_0 @ 0 ) )
      | ( ( '</2' @ ( '//2' @ 2 @ 9 ) @ V_a_dot_0 )
        & ( '</2' @ V_a_dot_0 @ ( '//2' @ 1 @ 4 ) ) )
      | ( '</2' @ ( '+/2' @ 3 @ ( 'sqrt/1' @ 7 ) ) @ V_a_dot_0 ) ) ),
    answer_to(p_question,[])).
