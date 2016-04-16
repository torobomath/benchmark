%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1966, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ be the lengths of the sides of a triangle, and $\alpha$, $\beta$,
%% $\gamma$, respectively, the angles opposite these sides. Prove that if\[
%% a+b = \tan \frac{\gamma}{2} (a \tan \alpha + b \tan \beta)
%% \]the triangle is isosceles.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   7 equality;  34 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :   52 (   0   ~;   0   |;   7   &;  44   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   9   !;   0   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real,V_c: $real,V_alpha: $real,V_beta: $real,V_gamma: $real] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_c )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_B ) )
          = V_a )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
          = V_gamma )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = V_beta )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
          = V_alpha )
        & ( ( $sum @ V_a @ V_b )
          = ( $product @ ( 'tan/1' @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ V_gamma ) ) @ ( $sum @ ( $product @ V_a @ ( 'tan/1' @ V_alpha ) ) @ ( $product @ V_b @ ( 'tan/1' @ V_beta ) ) ) ) ) )
     => ( '2d.is-isosceles-triangle/3' @ V_A @ V_B @ V_C ) ) )).

