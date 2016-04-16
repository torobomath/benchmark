%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R139
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  123 (   9 equality;  28 variable)
%            Maximal formula depth :   26 (  18 average)
%            Number of connectives :  103 (   0   ~;   0   |;   8   &;  94   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   6   !;   0   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    4 func;    9 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_v: $real] :
      ! [V_B0: '3d.Point',V_B1: '3d.Point',V_P0: '3d.Point',V_P1: '3d.Point',V_v1: $real,V_v2: $real] :
        ( ( ( 0.0
            = ( $difference @ ( '3d.x-coord/1' @ V_P0 ) @ ( '3d.x-coord/1' @ V_B0 ) ) )
          & ( 0.0
            = ( $difference @ ( '3d.y-coord/1' @ V_P0 ) @ ( '3d.y-coord/1' @ V_B0 ) ) )
          & ( 4.0
            = ( $difference @ ( '3d.z-coord/1' @ V_P0 ) @ ( '3d.z-coord/1' @ V_B0 ) ) )
          & ( ( '3d.vec/2' @ '3d.origin/0' @ V_B1 )
            = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B0 ) @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 60.0 ) @ ( '3d.vec3d/3' @ 0.0 @ 12.0 @ 0.0 ) ) ) )
          & ( ( '3d.vec/2' @ '3d.origin/0' @ V_P1 )
            = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_P0 ) @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 60.0 ) @ ( '3d.vec3d/3' @ V_v1 @ V_v2 @ 0.0 ) ) ) )
          & ( ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 )
            = ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_P1 @ V_B1 @ ( '3d.point/3' @ ( '3d.x-coord/1' @ V_P1 ) @ ( '3d.y-coord/1' @ V_P1 ) @ ( '3d.z-coord/1' @ V_B1 ) ) ) ) )
          & ( ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) )
            = ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ ( '3d.point/3' @ ( '3d.x-coord/1' @ V_P1 ) @ ( '3d.y-coord/1' @ V_P1 ) @ ( '3d.z-coord/1' @ V_B1 ) ) @ V_B1 @ ( '3d.vec->point/1' @ ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_B1 ) @ ( '3d.vec3d/3' @ 0.0 @ 1.0 @ 0.0 ) ) ) ) ) )
          & ( $less @ 0.0 @ V_v1 )
          & ( $less @ 0.0 @ V_v2 ) )
       => ( V_v
          = ( '3d.radius/1' @ ( '3d.vec3d/3' @ V_v1 @ V_v2 @ 0.0 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_v_dot_0: $real] :
      ( V_v_dot_0
      = ( '3d.radius/1' @ ( '3d.vec3d/3' @ ( $product @ 120.0 @ ( 'sqrt/1' @ 6.0 ) ) @ ( $sum @ ( $product @ 120.0 @ ( 'sqrt/1' @ 6.0 ) ) @ 12.0 ) @ 0.0 ) ) ) ),
    answer_to(p_question,[])).

