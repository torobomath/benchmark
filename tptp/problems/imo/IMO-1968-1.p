%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 1968, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% Prove that there is one and only one triangle whose side lengths
%% are consecutive integers, and one of whose angles is twice as large
%% as another.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  147 (  21 equality;  78 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :  104 (   0   ~;   8   |;  13   &;  82   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   4   !;   8   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ? [V_a: $int,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
        = ( $to_real @ V_a ) )
      & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
        = ( $sum @ ( $to_real @ V_a ) @ 1.0 ) )
      & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
        = ( $sum @ ( $to_real @ V_a ) @ 2.0 ) )
      & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
      & ? [V_Ang1_dot_0: '2d.Angle',V_Ang2_dot_0: '2d.Angle'] :
          ( ( ( V_Ang1_dot_0
              = ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
            | ( V_Ang1_dot_0
              = ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
            | ( V_Ang1_dot_0
              = ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
          & ( ( V_Ang2_dot_0
              = ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
            | ( V_Ang2_dot_0
              = ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
            | ( V_Ang2_dot_0
              = ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
          & ( ( '2d.rad-of-angle/1' @ V_Ang1_dot_0 )
            = ( $product @ 2.0 @ ( '2d.rad-of-angle/1' @ V_Ang2_dot_0 ) ) ) )
      & ! [V_b: $int,V_A1: '2d.Point',V_B1: '2d.Point',V_C1: '2d.Point'] :
          ( ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A1 @ V_B1 ) )
              = ( $to_real @ V_b ) )
            & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B1 @ V_C1 ) )
              = ( $sum @ ( $to_real @ V_b ) @ 1.0 ) )
            & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A1 @ V_C1 ) )
              = ( $sum @ ( $to_real @ V_b ) @ 2.0 ) )
            & ( '2d.is-triangle/3' @ V_A1 @ V_B1 @ V_C1 )
            & ? [V_Ang1: '2d.Angle',V_Ang2: '2d.Angle'] :
                ( ( ( V_Ang1
                    = ( '2d.angle/3' @ V_A1 @ V_B1 @ V_C1 ) )
                  | ( V_Ang1
                    = ( '2d.angle/3' @ V_B1 @ V_C1 @ V_A1 ) )
                  | ( V_Ang1
                    = ( '2d.angle/3' @ V_C1 @ V_A1 @ V_B1 ) ) )
                & ( ( V_Ang2
                    = ( '2d.angle/3' @ V_A1 @ V_B1 @ V_C1 ) )
                  | ( V_Ang2
                    = ( '2d.angle/3' @ V_B1 @ V_C1 @ V_A1 ) )
                  | ( V_Ang2
                    = ( '2d.angle/3' @ V_C1 @ V_A1 @ V_B1 ) ) )
                & ( ( '2d.rad-of-angle/1' @ V_Ang1 )
                  = ( $product @ 2.0 @ ( '2d.rad-of-angle/1' @ V_Ang2 ) ) ) ) )
         => ( V_b = V_a ) ) ) )).

