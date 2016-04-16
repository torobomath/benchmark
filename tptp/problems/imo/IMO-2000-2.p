%% DOMAIN:    Algebra, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2000, Problem 2
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% A, B, C are positive reals with product 1. Prove that
%% (A - 1 + 1/B)(B - 1 + 1/C)(C - 1 + 1/A) <= 1.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   41 (   1 equality;  12 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   38 (   0   ~;   0   |;   3   &;  34   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    4 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: $real,V_B: $real,V_C: $real] :
      ( ( ( 1.0
          = ( $product @ V_A @ ( $product @ V_B @ V_C ) ) )
        & ( $less @ 0.0 @ V_A )
        & ( $less @ 0.0 @ V_B )
        & ( $less @ 0.0 @ V_C ) )
     => ( $lesseq @ ( $product @ ( $sum @ ( $difference @ V_A @ 1.0 ) @ ( $quotient @ 1.0 @ V_B ) ) @ ( $product @ ( $sum @ ( $difference @ V_B @ 1.0 ) @ ( $quotient @ 1.0 @ V_C ) ) @ ( $sum @ ( $difference @ V_C @ 1.0 ) @ ( $quotient @ 1.0 @ V_A ) ) ) ) @ 1.0 ) ) )).

