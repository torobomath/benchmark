%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2010, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Determine all functions f : R -> R such that the equality
%% f(floor(x) y) = f(x) floor(f(y))
%% holds for all x, y in R. (Here floor(z) denotes the greatest integer
%% less than or equal to z.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   3 equality;  12 variable)
%            Maximal formula depth :   10 (   9 average)
%            Number of connectives :   20 (   0   ~;   1   |;   2   &;  17   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    7 (   2 sgn;   2   !;   1   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R' > 'R'] :
      ! [V_x: 'R',V_y: 'R'] :
        ( ( 'LamApp/2' @ V_f @ ( '*/2' @ ( 'floor/1' @ V_x ) @ V_y ) )
        = ( '*/2' @ ( 'LamApp/2' @ V_f @ V_x ) @ ( 'floor/1' @ ( 'LamApp/2' @ V_f @ V_y ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R' > 'R'] :
    ? [V_a: 'R'] :
      ( ( '<=/2' @ 1 @ V_a )
      & ( '</2' @ V_a @ 2 )
      & ( ( V_f_dot_0
          = ( ^ [V_x_dot_1: 'R'] : 0 ) )
        | ( V_f_dot_0
          = ( ^ [V_x_dot_0: 'R'] : V_a ) ) ) ) ),
    answer_to(p_question,[])).
