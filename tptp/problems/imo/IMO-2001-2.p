%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2001, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% Prove that
%% a/sqrt(a^2 + 8bc) + b/sqrt(b^2 + 8ca) + c/sqrt(c^2 + 8ab) >= 1
%% for all positive real numbers a, b and c.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   0 equality;  15 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   48 (   0   ~;   0   |;   2   &;  45   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real] :
      ( ( ( $greater @ V_a @ 0.0 )
        & ( $greater @ V_b @ 0.0 )
        & ( $greater @ V_c @ 0.0 ) )
     => ( $greatereq @ ( $sum @ ( $quotient @ V_a @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ 8.0 @ ( $product @ V_b @ V_c ) ) ) ) ) @ ( $sum @ ( $quotient @ V_b @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ V_b @ 2.0 ) @ ( $product @ 8.0 @ ( $product @ V_c @ V_a ) ) ) ) ) @ ( $quotient @ V_c @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ V_c @ 2.0 ) @ ( $product @ 8.0 @ ( $product @ V_a @ V_b ) ) ) ) ) ) ) @ 1.0 ) ) )).

