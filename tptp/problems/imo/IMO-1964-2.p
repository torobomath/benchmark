%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1964, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Suppose $a$, $b$, $c$ are the sides of a triangle. Prove that\[
%% a^2(b + c - a) + b^2(c + a - b) + c^2(a + b - c) \leq 3abc.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   41 (   0 equality;  18 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   40 (   0   ~;   0   |;   0   &;  39   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real] :
      ( ( 'are-triangle-edges/3' @ V_a @ V_b @ V_c )
     => ( $lesseq @ ( $sum @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ ( $difference @ ( $sum @ V_b @ V_c ) @ V_a ) ) @ ( $sum @ ( $product @ ( '^/2' @ V_b @ 2.0 ) @ ( $difference @ ( $sum @ V_a @ V_c ) @ V_b ) ) @ ( $product @ ( '^/2' @ V_c @ 2.0 ) @ ( $difference @ ( $sum @ V_b @ V_a ) @ V_c ) ) ) ) @ ( $product @ 3.0 @ ( $product @ V_a @ ( $product @ V_b @ V_c ) ) ) ) ) )).

