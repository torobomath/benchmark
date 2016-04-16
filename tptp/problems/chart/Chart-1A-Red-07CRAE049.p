%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE049
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   0 equality;  51 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   79 (   0   ~;   0   |;   8   &;  69   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;  10   !;   2   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) @ V_E ) )
     => ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_E @ ( '2d.foot-of-perpendicular-line-from-to/2' @ V_E @ ( '2d.line/2' @ V_C @ V_D ) ) ) @ ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) @ V_E ) )
     => ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_C @ V_D ) @ ( '2d.line/2' @ V_E @ ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) ) )).

