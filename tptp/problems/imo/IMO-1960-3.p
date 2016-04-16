%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 3
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% In a given right triangle $ABC$, the hypotenuse $BC$, of length $a$, is divided
%% into $n$ equal parts ($n$ an odd integer). Let $\alpha$ be the acute angle
%% subtending, from $A$, that segment which contains the midpoint of
%% the hypotenuse. Let $h$ be the length of the altitude to the hypotenuse
%% of the triangle. Prove:\[
%% \tan \alpha = \frac{4nh}{(n^2 - 1)a}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   82 (   7 equality;  39 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :   67 (   0   ~;   0   |;  10   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;  10   !;   0   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    5 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_BB: '2d.Point',V_CC: '2d.Point',V_h: $real,V_n: $int,V_m: $int,V_a: $real,V_alpha: '2d.Angle'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
        & ( V_h
          = ( '2d.point-shape-distance/2' @ V_A @ ( '2d.line/2' @ V_B @ V_C ) ) )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( 'int.is-odd-number/1' @ V_n )
        & ( V_m
          = ( $quotient_f @ V_n @ 2 ) )
        & ( '2d.on/2' @ V_BB @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( $product @ ( $to_real @ V_m ) @ V_a )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_BB ) ) )
        & ( '2d.on/2' @ V_CC @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( $product @ ( $to_real @ V_m ) @ V_a )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_CC ) ) )
        & ( V_alpha
          = ( '2d.angle/3' @ V_BB @ V_A @ V_CC ) ) )
     => ( ( 'tan/1' @ ( '2d.rad-of-angle/1' @ V_alpha ) )
        = ( $quotient @ ( $product @ 4.0 @ ( $product @ ( $to_real @ V_n ) @ V_h ) ) @ ( $product @ ( $difference @ ( '^/2' @ ( $to_real @ V_n ) @ 2.0 ) @ 1.0 ) @ V_a ) ) ) ) )).

