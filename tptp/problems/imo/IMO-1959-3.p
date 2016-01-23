%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ be real numbers. Consider the quadratic equation in $\cos x$:\[
%% a \cos^2 x + b \cos x + c = 0.
%% \]Using the numbers $a$, $b$, $c$, form a quadratic equation in $\cos 2x$, whose roots
%% are the same as those of the original equation. Compare the equations in
%% $\cos x$ and $\cos 2x$ for $a = 4$, $b = 2$, $c = -1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  173 (  13 equality;  41 variable)
%            Maximal formula depth :   18 (  14 average)
%            Number of connectives :  149 (   4   ~;   1   |;   6   &; 136   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   14 (   0 sgn;   1   !;   3   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_BC: 'ListOf' @ 'R'] :
      ? [V_B: 'R',V_C: 'R'] :
        ( ( V_BC
          = ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ 'nil/0' ) ) )
        & ! [V_x: 'R'] :
            ( ( ( ( V_a != 0 )
                & ( ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_b @ ( 'cos/1' @ V_x ) ) @ V_c ) )
                  = 0 ) )
             => ( ( V_a != 0 )
                & ( ( '+/2' @ ( '^/2' @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) @ 2 ) @ ( '+/2' @ ( '*/2' @ V_B @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) ) @ V_C ) )
                  = 0 ) ) )
            & ( ( ( V_a != 0 )
                & ( ( '+/2' @ ( '^/2' @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) @ 2 ) @ ( '+/2' @ ( '*/2' @ V_B @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) ) @ V_C ) )
                  = 0 ) )
             => ( ( V_a != 0 )
                & ( ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_b @ ( 'cos/1' @ V_x ) ) @ V_c ) )
                  = 0 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '-/2' @ ( '+/2' @ ( '*/2' @ 4 @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2 ) ) @ ( '*/2' @ 2 @ ( 'cos/1' @ V_x ) ) ) @ 1 )
        = 0 ) )).

thf(p1_answer,answer,(
    ^ [V_BC_dot_0: 'ListOf' @ 'R'] :
      ( V_BC_dot_0
      = ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ ( '*/2' @ V_a @ V_c ) ) @ ( '-/1' @ ( '*/2' @ 2 @ ( '^/2' @ V_b @ 2 ) ) ) ) ) @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '^/2' @ ( '+/2' @ V_a @ ( '*/2' @ 2 @ V_c ) ) @ 2 ) @ ( '-/1' @ ( '*/2' @ 2 @ ( '^/2' @ V_b @ 2 ) ) ) ) @ ( '^/2' @ V_a @ 2 ) ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
    ? [V_n: 'Z'] :
      ( ( V_x_dot_0
        = ( '+/2' @ ( '*/2' @ ( '//2' @ 2 @ 5 ) @ 'Pi/0' ) @ ( '*/2' @ 2 @ ( '*/2' @ ( 'int->real/1' @ V_n ) @ 'Pi/0' ) ) ) )
      | ( V_x_dot_0
        = ( '+/2' @ ( '*/2' @ ( '//2' @ 4 @ 5 ) @ 'Pi/0' ) @ ( '*/2' @ 2 @ ( '*/2' @ ( 'int->real/1' @ V_n ) @ 'Pi/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).
