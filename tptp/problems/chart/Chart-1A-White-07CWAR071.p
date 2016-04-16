%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR071
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (   6 equality;  44 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :   93 (   0   ~;   0   |;  10   &;  81   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    3 func;   10 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 2.0
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( 4.0
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( 3.0
          = ( '2d.distance/2' @ V_C @ V_A ) ) )
     => ( ( $less @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( $less @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_t: $real] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_t
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
        & ( $less @ ( $quotient @ 1.0 @ 2.0 ) @ V_t )
        & ( $less @ V_t @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( 0.0
          = ( $sum @ ( $product @ 64.0 @ ( '^/2' @ V_t @ 6.0 ) ) @ ( $sum @ ( $product @ -96.0 @ ( '^/2' @ V_t @ 4.0 ) ) @ ( $sum @ ( $product @ 36.0 @ ( '^/2' @ V_t @ 2.0 ) ) @ -3.0 ) ) ) )
        & ( ( $quotient @ 1.0 @ 2.0 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ( ( $less @ ( '2d.distance/2' @ V_B @ V_C ) @ ( '2d.distance/2' @ V_C @ V_A ) )
        & ( $less @ ( '2d.distance/2' @ V_C @ V_A ) @ ( '2d.distance/2' @ V_A @ V_B ) ) ) ) )).

