%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Consider the system of equations
%% \[   a_{11} x_1 + a_{12} x_2 + a_{13} x_3 = 0   \]
%% \[   a_{21} x_1 + a_{22} x_2 + a_{23} x_3 = 0   \]
%% \[   a_{31} x_1 + a_{32} x_2 + a_{33} x_3 = 0   \]
%% with unknowns $x_1$, $x_2$, $x_3$. The coeffcients satisfy the conditions:
%% (a) $a_{11}$, $a_{22}$, $a_{33}$ are positive numbers;
%% (b) the remaining coeffcients are negative numbers;
%% (c) in each equation, the sum of the coeffcients is positive.
%% Prove that the given system has only the solution $x_1 = x_2 = x_3 = 0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   96 (   6 equality;  39 variable)
%            Maximal formula depth :   34 (  34 average)
%            Number of connectives :   83 (   0   ~;   0   |;  16   &;  66   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   2 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a11: $real,V_a12: $real,V_a13: $real,V_a21: $real,V_a22: $real,V_a23: $real,V_a31: $real,V_a32: $real,V_a33: $real,V_x1: $real,V_x2: $real,V_x3: $real] :
      ( ( ( $greater @ V_a11 @ 0.0 )
        & ( $greater @ V_a22 @ 0.0 )
        & ( $greater @ V_a33 @ 0.0 )
        & ( $less @ V_a12 @ 0.0 )
        & ( $less @ V_a13 @ 0.0 )
        & ( $less @ V_a21 @ 0.0 )
        & ( $less @ V_a23 @ 0.0 )
        & ( $less @ V_a31 @ 0.0 )
        & ( $less @ V_a32 @ 0.0 )
        & ( $greater @ ( $sum @ V_a11 @ ( $sum @ V_a12 @ V_a13 ) ) @ 0.0 )
        & ( $greater @ ( $sum @ V_a21 @ ( $sum @ V_a22 @ V_a23 ) ) @ 0.0 )
        & ( $greater @ ( $sum @ V_a31 @ ( $sum @ V_a32 @ V_a33 ) ) @ 0.0 )
        & ( ( $sum @ ( $product @ V_a11 @ V_x1 ) @ ( $sum @ ( $product @ V_a12 @ V_x2 ) @ ( $product @ V_a13 @ V_x3 ) ) )
          = 0.0 )
        & ( ( $sum @ ( $product @ V_a21 @ V_x1 ) @ ( $sum @ ( $product @ V_a22 @ V_x2 ) @ ( $product @ V_a23 @ V_x3 ) ) )
          = 0.0 )
        & ( ( $sum @ ( $product @ V_a31 @ V_x1 ) @ ( $sum @ ( $product @ V_a32 @ V_x2 ) @ ( $product @ V_a33 @ V_x3 ) ) )
          = 0.0 ) )
     => ( ( V_x1 = 0.0 )
        & ( V_x2 = 0.0 )
        & ( V_x3 = 0.0 ) ) ) )).

