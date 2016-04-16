%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1974, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% Determine all possible values of\[
%% S = \frac{a}{a+b+d} + \frac{b}{a+b+c} + \frac{c}{b+c+d} + \frac{d}{a+c+d}
%% \]where $a$, $b$, $c$, $d$ are arbitrary positive numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   53 (   1 equality;  23 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   49 (   0   ~;   0   |;   5   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_a: $real,V_b: $real,V_c: $real,V_d: $real] :
        ( ( $greater @ V_a @ 0.0 )
        & ( $greater @ V_b @ 0.0 )
        & ( $greater @ V_c @ 0.0 )
        & ( $greater @ V_d @ 0.0 )
        & ( V_S
          = ( $sum @ ( $quotient @ V_a @ ( $sum @ V_a @ ( $sum @ V_b @ V_d ) ) ) @ ( $sum @ ( $quotient @ V_b @ ( $sum @ V_a @ ( $sum @ V_b @ V_c ) ) ) @ ( $sum @ ( $quotient @ V_c @ ( $sum @ V_b @ ( $sum @ V_c @ V_d ) ) ) @ ( $quotient @ V_d @ ( $sum @ V_a @ ( $sum @ V_c @ V_d ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $less @ 1.0 @ V_S_dot_0 )
      & ( $less @ V_S_dot_0 @ 2.0 ) ) ),
    answer_to(p_question,[])).

