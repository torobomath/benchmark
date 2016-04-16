%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1973, Problem 3
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-22
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers for which the equation\[
%% x^4 +ax^3 +bx^2 +ax+1 = 0
%% \]has at least one real solution. For all such pairs $(a, b)$, find the minimum
%% value of $a^2 + b^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   4 equality;  21 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   61 (   0   ~;   0   |;   2   &;  58   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   2   !;   4   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_a: $real,V_b: $real,V_x: $real] :
        ( ( ( $sum @ ( '^/2' @ V_x @ 4.0 ) @ ( $sum @ ( $product @ V_a @ ( '^/2' @ V_x @ 3.0 ) ) @ ( $sum @ ( $product @ V_b @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $sum @ ( $product @ V_a @ V_x ) @ 1.0 ) ) ) )
          = 0.0 )
        & ( V_m
          = ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) ) )
        & ! [V_a2: $real,V_b2: $real] :
            ( ? [V_x2: $real] :
                ( ( $sum @ ( '^/2' @ V_x2 @ 4.0 ) @ ( $sum @ ( $product @ V_a2 @ ( '^/2' @ V_x2 @ 3.0 ) ) @ ( $sum @ ( $product @ V_b2 @ ( '^/2' @ V_x2 @ 2.0 ) ) @ ( $sum @ ( $product @ V_a2 @ V_x2 ) @ 1.0 ) ) ) )
                = 0.0 )
           => ( $greatereq @ ( $sum @ ( '^/2' @ V_a2 @ 2.0 ) @ ( '^/2' @ V_b2 @ 2.0 ) ) @ V_m ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( V_m_dot_0
      = ( $quotient @ 4.0 @ 5.0 ) ) ),
    answer_to(p_question,[])).

