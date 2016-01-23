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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a11: 'R',V_a12: 'R',V_a13: 'R',V_a21: 'R',V_a22: 'R',V_a23: 'R',V_a31: 'R',V_a32: 'R',V_a33: 'R',V_x1: 'R',V_x2: 'R',V_x3: 'R'] :
      ( ( ( '>/2' @ V_a11 @ 0 )
        & ( '>/2' @ V_a22 @ 0 )
        & ( '>/2' @ V_a33 @ 0 )
        & ( '</2' @ V_a12 @ 0 )
        & ( '</2' @ V_a13 @ 0 )
        & ( '</2' @ V_a21 @ 0 )
        & ( '</2' @ V_a23 @ 0 )
        & ( '</2' @ V_a31 @ 0 )
        & ( '</2' @ V_a32 @ 0 )
        & ( '>/2' @ ( '+/2' @ V_a11 @ ( '+/2' @ V_a12 @ V_a13 ) ) @ 0 )
        & ( '>/2' @ ( '+/2' @ V_a21 @ ( '+/2' @ V_a22 @ V_a23 ) ) @ 0 )
        & ( '>/2' @ ( '+/2' @ V_a31 @ ( '+/2' @ V_a32 @ V_a33 ) ) @ 0 )
        & ( ( '+/2' @ ( '*/2' @ V_a11 @ V_x1 ) @ ( '+/2' @ ( '*/2' @ V_a12 @ V_x2 ) @ ( '*/2' @ V_a13 @ V_x3 ) ) )
          = 0 )
        & ( ( '+/2' @ ( '*/2' @ V_a21 @ V_x1 ) @ ( '+/2' @ ( '*/2' @ V_a22 @ V_x2 ) @ ( '*/2' @ V_a23 @ V_x3 ) ) )
          = 0 )
        & ( ( '+/2' @ ( '*/2' @ V_a31 @ V_x1 ) @ ( '+/2' @ ( '*/2' @ V_a32 @ V_x2 ) @ ( '*/2' @ V_a33 @ V_x3 ) ) )
          = 0 ) )
     => ( ( V_x1 = 0 )
        & ( V_x2 = 0 )
        & ( V_x3 = 0 ) ) ) )).
