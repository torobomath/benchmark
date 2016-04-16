%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR072
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   6 equality;  18 variable)
%            Maximal formula depth :   11 (  10 average)
%            Number of connectives :   25 (   1   ~;   0   |;   6   &;  18   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   6   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    0 func;    6 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ~ ( ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
          ( ( 3.0
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 6.0
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 2.0
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C ) ) ) )).

thf(p2,conjecture,(
    ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( 8.0
        = ( '2d.distance/2' @ V_A @ V_B ) )
      & ( 10.0
        = ( '2d.distance/2' @ V_B @ V_C ) )
      & ( 17.0
        = ( '2d.distance/2' @ V_C @ V_A ) )
      & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C ) ) )).

