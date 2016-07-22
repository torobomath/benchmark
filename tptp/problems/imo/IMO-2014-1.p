%% DOMAIN:    Algebra, computation of expressions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2014, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-10
%%
%% <PROBLEM-TEXT>
%% Let $a_0 < a_1 < a_2 < \ldots$ be an infinite sequence of positive integers.
%% Prove that there exists a unique integer $n \geq 1$ such that\[
%% a_n < \frac{a_0 + a_1 + \ldots + a_n}{n} \leq a_{n+1}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   94 (   1 equality;  32 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   91 (   0   ~;   0   |;   6   &;  81   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   4   !;   1   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: ( $int > $int )] :
      ( ( ! [V_n_dot_0: $int] :
            ( ( $lesseq @ 0 @ V_n_dot_0 )
           => ( $lesseq @ 1 @ ( V_a @ V_n_dot_0 ) ) )
        & ! [V_n: $int] :
            ( ( $lesseq @ 0 @ V_n )
           => ( $lesseq @ ( V_a @ V_n ) @ ( V_a @ ( $sum @ V_n @ 1 ) ) ) ) )
     => ? [V_n_dot_1: $int] :
          ( ( $lesseq @ 1 @ V_n_dot_1 )
          & ( $less @ ( $to_rat @ ( V_a @ V_n_dot_1 ) ) @ ( $quotient @ ( $to_rat @ ( 'int.sum/1' @ ( 'map/2' @ $int @ $int @ V_a @ ( 'int.iota/2' @ 0 @ V_n_dot_1 ) ) ) ) @ ( $to_rat @ V_n_dot_1 ) ) )
          & ( $lesseq @ ( $quotient @ ( $to_rat @ ( 'int.sum/1' @ ( 'map/2' @ $int @ $int @ V_a @ ( 'int.iota/2' @ 0 @ V_n_dot_1 ) ) ) ) @ ( $to_rat @ V_n_dot_1 ) ) @ ( $to_rat @ ( V_a @ ( $sum @ V_n_dot_1 @ 1 ) ) ) )
          & ! [V_m: $int] :
              ( ( ( $lesseq @ 1 @ V_m )
                & ( $less @ ( $to_rat @ ( V_a @ V_m ) ) @ ( $quotient @ ( $to_rat @ ( 'int.sum/1' @ ( 'map/2' @ $int @ $int @ V_a @ ( 'int.iota/2' @ 0 @ V_m ) ) ) ) @ ( $to_rat @ V_m ) ) )
                & ( $lesseq @ ( $quotient @ ( $to_rat @ ( 'int.sum/1' @ ( 'map/2' @ $int @ $int @ V_a @ ( 'int.iota/2' @ 0 @ V_m ) ) ) ) @ ( $to_rat @ V_m ) ) @ ( $to_rat @ ( V_a @ ( $sum @ V_m @ 1 ) ) ) ) )
             => ( V_n_dot_1 = V_m ) ) ) ) )).

