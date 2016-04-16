%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1984, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% Prove that $0 ¥le yz + zx + xy - 2xyz ¥le 7/27$, where $x$, $y$ and $z$ are
%% non-negative real numbers for which $x + y + z = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   1 equality;  24 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   57 (   0   ~;   0   |;   4   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_x: $real,V_y: $real,V_z: $real] :
      ( ( ( $greatereq @ V_x @ 0.0 )
        & ( $greatereq @ V_y @ 0.0 )
        & ( $greatereq @ V_z @ 0.0 )
        & ( ( $sum @ V_x @ ( $sum @ V_y @ V_z ) )
          = 1.0 ) )
     => ( ( $lesseq @ 0.0 @ ( $difference @ ( $sum @ ( $product @ V_x @ V_y ) @ ( $sum @ ( $product @ V_y @ V_z ) @ ( $product @ V_z @ V_x ) ) ) @ ( $product @ 2.0 @ ( $product @ V_x @ ( $product @ V_y @ V_z ) ) ) ) )
        & ( $lesseq @ ( $difference @ ( $sum @ ( $product @ V_x @ V_y ) @ ( $sum @ ( $product @ V_y @ V_z ) @ ( $product @ V_z @ V_x ) ) ) @ ( $product @ 2.0 @ ( $product @ V_x @ ( $product @ V_y @ V_z ) ) ) ) @ ( $quotient @ 7.0 @ 27.0 ) ) ) ) )).

