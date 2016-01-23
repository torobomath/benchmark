%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Science Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% (1) Draw the graph of the function $f(x)= 2 x^3 - 3 x^2 + 1$.
%%
%% (2) When the equation $f(x)= a$ ( $a$ is a real number) has $3$
%% different real solutions ${\alpha} < {\beta} < {\gamma}$, represent
%% $l = {\gamma} - {\alpha}$ using only ${\beta}$.
%%
%% (3) When $a$ changes under the condition described in (2), find the
%% movable range of $l$
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  211 (  11 equality;  55 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  183 (   0   ~;   0   |;  13   &; 170   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   22 (   0 sgn;   0   !;   6   ?;  13   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_p: '2d.Point'] :
        ( ( '2d.y-coord/1' @ V_p )
        = ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) ) ) @ 1 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_alpha: 'R',V_gamma: 'R'] :
        ( ( ( 'LamApp/2'
            @ ^ [V_x_dot_1: 'R'] :
                ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x_dot_1 @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x_dot_1 @ 2 ) ) ) @ 1 ) )
            @ V_alpha )
          = V_a )
        & ( ( 'LamApp/2'
            @ ^ [V_x_dot_0: 'R'] :
                ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x_dot_0 @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) @ 1 ) )
            @ V_beta )
          = V_a )
        & ( ( 'LamApp/2'
            @ ^ [V_x: 'R'] :
                ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x @ 2 ) ) ) @ 1 ) )
            @ V_gamma )
          = V_a )
        & ( '</2' @ V_alpha @ V_beta )
        & ( '</2' @ V_beta @ V_gamma )
        & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ V_beta @ ( 'cons/2' @ V_gamma @ 'nil/0' ) ) ) )
        & ( V_l
          = ( '-/2' @ V_gamma @ V_alpha ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_a: 'R',V_alpha: 'R',V_beta: 'R',V_gamma: 'R'] :
        ( ( ( 'LamApp/2'
            @ ^ [V_x_dot_1: 'R'] :
                ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x_dot_1 @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x_dot_1 @ 2 ) ) ) @ 1 ) )
            @ V_alpha )
          = V_a )
        & ( ( 'LamApp/2'
            @ ^ [V_x_dot_0: 'R'] :
                ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x_dot_0 @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) @ 1 ) )
            @ V_beta )
          = V_a )
        & ( ( 'LamApp/2'
            @ ^ [V_x: 'R'] :
                ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x @ 2 ) ) ) @ 1 ) )
            @ V_gamma )
          = V_a )
        & ( '</2' @ V_alpha @ V_beta )
        & ( '</2' @ V_beta @ V_gamma )
        & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_alpha @ ( 'cons/2' @ V_beta @ ( 'cons/2' @ V_gamma @ 'nil/0' ) ) ) )
        & ( V_l
          = ( '-/2' @ V_gamma @ V_alpha ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: 'R',V_y: 'R'] :
        ( V_y
        = ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x @ 3 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_x @ 2 ) ) ) @ 1 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( 'sqrt/1' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_beta @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ 3 @ V_beta ) @ ( '//2' @ 9 @ 4 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ 3 @ 2 ) @ V_l_dot_0 )
      & ( '<=/2' @ V_l_dot_0 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p3_question,[])).
