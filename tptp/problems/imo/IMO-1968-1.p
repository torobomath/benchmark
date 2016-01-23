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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   12 (   0 sgn;   4   !;   8   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ? [V_a: 'Z',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
        = ( 'int->real/1' @ V_a ) )
      & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
        = ( '+/2' @ ( 'int->real/1' @ V_a ) @ 1 ) )
      & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
        = ( '+/2' @ ( 'int->real/1' @ V_a ) @ 2 ) )
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
            = ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ V_Ang2_dot_0 ) ) ) )
      & ! [V_b: 'Z',V_A1: '2d.Point',V_B1: '2d.Point',V_C1: '2d.Point'] :
          ( ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A1 @ V_B1 ) )
              = ( 'int->real/1' @ V_b ) )
            & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B1 @ V_C1 ) )
              = ( '+/2' @ ( 'int->real/1' @ V_b ) @ 1 ) )
            & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A1 @ V_C1 ) )
              = ( '+/2' @ ( 'int->real/1' @ V_b ) @ 2 ) )
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
                  = ( '*/2' @ 2 @ ( '2d.rad-of-angle/1' @ V_Ang2 ) ) ) ) )
         => ( V_b = V_a ) ) ) )).
