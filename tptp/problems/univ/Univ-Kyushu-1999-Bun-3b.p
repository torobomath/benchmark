%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 1999, Humanities Course, Problem 3b
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-20
%%
%% <PROBLEM-TEXT>
%% Assume that the real numbers $a$ and $b$ satisfy $0 < a < b$. Find
%% the magnitude relation of the following three numbers:
%% $\frac{a+2 b}{3}$, $\sqrt{a b}$, and
%% $\sqrt[3]{\frac{b(a^2 + a b + b^2)}{3}}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   0 equality;  27 variable)
%            Maximal formula depth :   16 (  15 average)
%            Number of connectives :   81 (   3   ~;   0   |;   3   &;  72   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p12l,conjecture,(
    ~ ( ! [V_a: $real,V_b: $real] :
          ( ( ( $less @ 0.0 @ V_a )
            & ( $less @ V_a @ V_b ) )
         => ( $less @ ( $quotient @ ( $sum @ V_a @ ( $product @ 2.0 @ V_b ) ) @ 3.0 ) @ ( 'sqrt/1' @ ( $product @ V_a @ V_b ) ) ) ) ) )).

thf(p13g,conjecture,(
    ~ ( ! [V_a: $real,V_b: $real] :
          ( ( ( $less @ 0.0 @ V_a )
            & ( $less @ V_a @ V_b ) )
         => ( $greater @ ( $quotient @ ( $sum @ V_a @ ( $product @ 2.0 @ V_b ) ) @ 3.0 ) @ ( '^/2' @ ( $quotient @ ( $product @ V_b @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ ( $product @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2.0 ) ) ) ) @ 3.0 ) @ ( $quotient @ 1.0 @ 3.0 ) ) ) ) ) )).

thf(p23g,conjecture,(
    ~ ( ! [V_a: $real,V_b: $real] :
          ( ( ( $less @ 0.0 @ V_a )
            & ( $less @ V_a @ V_b ) )
         => ( $greater @ ( 'sqrt/1' @ ( $product @ V_a @ V_b ) ) @ ( '^/2' @ ( $quotient @ ( $product @ V_b @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ ( $product @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2.0 ) ) ) ) @ 3.0 ) @ ( $quotient @ 1.0 @ 3.0 ) ) ) ) ) )).

