%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR122
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   3 equality;  41 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :   57 (   0   ~;   0   |;  14   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :)
%            Number of variables   :   11 (   0 sgn;  10   !;   1   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_L: '2d.Point',V_M: '2d.Point',V_N: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_Cir: '2d.Shape'] :
      ( ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( V_L
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_N
          = ( '2d.midpoint-of/2' @ V_A @ V_D ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_L @ V_M ) @ V_P )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_L @ V_N ) @ V_Q ) )
     => ? [V_Cir2: '2d.Shape'] :
          ( ( '2d.circle-type/1' @ V_Cir2 )
          & ( '2d.on/2' @ V_M @ V_Cir2 )
          & ( '2d.on/2' @ V_N @ V_Cir2 )
          & ( '2d.on/2' @ V_P @ V_Cir2 )
          & ( '2d.on/2' @ V_Q @ V_Cir2 ) ) ) )).
