%% DOMAIN:    Number Theory, prime factor decomposition
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2010, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Let N be the set of positive integers. Determine all functions g : N -> N
%% such that
%% (g(m) + n)(m + g(n))
%% is a perfect square for all m, n in N.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   59 (   3 equality;  25 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   51 (   0   ~;   0   |;   7   &;  39   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    9 (   0 sgn;   6   !;   1   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_g: 'Z' > 'Z'] :
        ( ! [V_k_dot_0: 'Z'] :
            ( ( 'int.</2' @ 0 @ V_k_dot_0 )
           => ( 'int.</2' @ 0 @ ( 'LamApp/2' @ V_g @ V_k_dot_0 ) ) )
        & ! [V_k: 'Z'] :
            ( ( 'int.<=/2' @ V_k @ 0 )
           => ( ( 'LamApp/2' @ V_g @ V_k )
              = 0 ) )
        & ! [V_m: 'Z',V_n: 'Z'] :
            ( ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.>/2' @ V_m @ 0 )
              & ( 'int.is-integer/1' @ V_n )
              & ( 'int.>/2' @ V_n @ 0 ) )
           => ( 'int.is-square-number/1' @ ( 'int.*/2' @ ( 'int.+/2' @ ( 'LamApp/2' @ V_g @ V_m ) @ V_n ) @ ( 'int.+/2' @ V_m @ ( 'LamApp/2' @ V_g @ V_n ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_g_dot_0: 'Z' > 'Z'] :
    ? [V_k_dot_1: 'Z'] :
      ( ( 'int.is-natural-number/1' @ V_k_dot_1 )
      & ! [V_x_dot_0: 'Z'] :
          ( ( 'int.<=/2' @ V_x_dot_0 @ 0 )
         => ( ( 'LamApp/2' @ V_g_dot_0 @ V_x_dot_0 )
            = 0 ) )
      & ! [V_x: 'Z'] :
          ( ( 'int.</2' @ 0 @ V_x )
         => ( ( 'LamApp/2' @ V_g_dot_0 @ V_x )
            = ( 'int.+/2' @ V_x @ V_k_dot_1 ) ) ) ) ),
    answer_to(p_question,[])).
