%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2001, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% Let a, b, c, d be integers with a > b > c > d > 0. Suppose that
%% ac + bd = (b + d + a - c)(b + d - a + c).
%% Prove that ab + cd is not prime.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   1 equality;  23 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   43 (   1   ~;   0   |;   4   &;  37   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    3 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
      ( ( ( $greater @ V_a @ V_b )
        & ( $greater @ V_b @ V_c )
        & ( $greater @ V_c @ V_d )
        & ( $greater @ V_d @ 0 )
        & ( ( $sum @ ( $product @ V_a @ V_c ) @ ( $product @ V_b @ V_d ) )
          = ( $product @ ( $sum @ V_b @ ( $sum @ V_d @ ( $sum @ V_a @ ( $uminus @ V_c ) ) ) ) @ ( $sum @ V_b @ ( $sum @ V_d @ ( $sum @ ( $uminus @ V_a ) @ V_c ) ) ) ) ) )
     => ~ ( 'int.is-prime/1' @ ( $sum @ ( $product @ V_a @ V_b ) @ ( $product @ V_c @ V_d ) ) ) ) )).

