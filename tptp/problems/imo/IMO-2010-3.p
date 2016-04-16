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
%            Number of atoms       :   55 (   3 equality;  25 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   46 (   0   ~;   0   |;   7   &;  34   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   6   !;   1   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   4 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $int > $int )
    @ ^ [V_g: ( $int > $int )] :
        ( ! [V_k_dot_0: $int] :
            ( ( $less @ 0 @ V_k_dot_0 )
           => ( $less @ 0 @ ( V_g @ V_k_dot_0 ) ) )
        & ! [V_k: $int] :
            ( ( $lesseq @ V_k @ 0 )
           => ( ( V_g @ V_k )
              = 0 ) )
        & ! [V_m: $int,V_n: $int] :
            ( ( ( $is_int @ V_m )
              & ( $greater @ V_m @ 0 )
              & ( $is_int @ V_n )
              & ( $greater @ V_n @ 0 ) )
           => ( 'int.is-square-number/1' @ ( $product @ ( $sum @ ( V_g @ V_m ) @ V_n ) @ ( $sum @ V_m @ ( V_g @ V_n ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_g_dot_0: ( $int > $int )] :
    ? [V_k_dot_1: $int] :
      ( ( 'int.is-natural-number/1' @ V_k_dot_1 )
      & ! [V_x_dot_0: $int] :
          ( ( $lesseq @ V_x_dot_0 @ 0 )
         => ( ( V_g_dot_0 @ V_x_dot_0 )
            = 0 ) )
      & ! [V_x: $int] :
          ( ( $less @ 0 @ V_x )
         => ( ( V_g_dot_0 @ V_x )
            = ( $sum @ V_x @ V_k_dot_1 ) ) ) ) ),
    answer_to(p_question,[])).

