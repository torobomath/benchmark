%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1995, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-10
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ be positive real numbers such that $abc = 1$. Prove that
%% ¥[
%% ¥frac{1}{a^3 (b+c)} + ¥frac{1}{b^3 (c+a)} + ¥frac{1}{c^3 (a+b)} ¥ge ¥frac{3}{2}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   1 equality;  15 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   46 (   0   ~;   0   |;   3   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real] :
      ( ( ( $less @ 0.0 @ V_a )
        & ( $less @ 0.0 @ V_b )
        & ( $less @ 0.0 @ V_c )
        & ( ( $product @ V_a @ ( $product @ V_b @ V_c ) )
          = 1.0 ) )
     => ( $greatereq @ ( $sum @ ( $quotient @ 1.0 @ ( $product @ ( '^/2' @ V_a @ 3.0 ) @ ( $sum @ V_b @ V_c ) ) ) @ ( $sum @ ( $quotient @ 1.0 @ ( $product @ ( '^/2' @ V_b @ 3.0 ) @ ( $sum @ V_c @ V_a ) ) ) @ ( $quotient @ 1.0 @ ( $product @ ( '^/2' @ V_c @ 3.0 ) @ ( $sum @ V_a @ V_b ) ) ) ) ) @ ( $quotient @ 3.0 @ 2.0 ) ) ) )).

