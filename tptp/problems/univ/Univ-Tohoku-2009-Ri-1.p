%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Science Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers. Answer the following
%% questions:
%%
%% (1) When $a + b = c$, prove that $a^3 + b^3 + 3 a b c = c^3$.
%%
%% (2) When $a + b\ge c$, prove that $a^3 + b^3 + 3 a b c\ge c^3$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   2 equality;  18 variable)
%            Maximal formula depth :   13 (  12 average)
%            Number of connectives :   42 (   0   ~;   0   |;   0   &;  40   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real] :
      ( ( ( $sum @ V_a @ V_b )
        = V_c )
     => ( ( $sum @ ( '^/2' @ V_a @ 3.0 ) @ ( $sum @ ( '^/2' @ V_b @ 3.0 ) @ ( $product @ 3.0 @ ( $product @ V_a @ ( $product @ V_b @ V_c ) ) ) ) )
        = ( '^/2' @ V_c @ 3.0 ) ) ) )).

thf(p2,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real] :
      ( ( $greatereq @ ( $sum @ V_a @ V_b ) @ V_c )
     => ( $greatereq @ ( $sum @ ( '^/2' @ V_a @ 3.0 ) @ ( $sum @ ( '^/2' @ V_b @ 3.0 ) @ ( $product @ 3.0 @ ( $product @ V_a @ ( $product @ V_b @ V_c ) ) ) ) ) @ ( '^/2' @ V_c @ 3.0 ) ) ) )).

