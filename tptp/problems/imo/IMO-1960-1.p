%% DOMAIN:    Number Theory, numeral systems
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 1
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% Determine all three-digit numbers $N$ having the property that $N$ is divisible
%% by $11$, and $\frac{N}{11}$ is equal to the sum of the squares of the digits of $N$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   4 equality;  17 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   44 (   0   ~;   1   |;   8   &;  35   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_N: 'Z'] :
      ? [V_n1: 'Z',V_n2: 'Z',V_n3: 'Z'] :
        ( ( 'int.<=/2' @ 1 @ V_n1 )
        & ( 'int.<=/2' @ V_n1 @ 9 )
        & ( 'int.<=/2' @ 0 @ V_n2 )
        & ( 'int.<=/2' @ V_n2 @ 9 )
        & ( 'int.<=/2' @ 0 @ V_n3 )
        & ( 'int.<=/2' @ V_n3 @ 9 )
        & ( V_N
          = ( 'int.+/2' @ ( 'int.*/2' @ 100 @ V_n1 ) @ ( 'int.+/2' @ ( 'int.*/2' @ 10 @ V_n2 ) @ V_n3 ) ) )
        & ( 'int.is-divisible-by/2' @ V_N @ 11 )
        & ( ( 'int.div/2' @ V_N @ 11 )
          = ( 'int.+/2' @ ( 'int.^/2' @ V_n1 @ 2 ) @ ( 'int.+/2' @ ( 'int.^/2' @ V_n2 @ 2 ) @ ( 'int.^/2' @ V_n3 @ 2 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_N_dot_0: 'Z'] :
      ( ( V_N_dot_0 = 550 )
      | ( V_N_dot_0 = 803 ) ) ),
    answer_to(p_question,[])).
