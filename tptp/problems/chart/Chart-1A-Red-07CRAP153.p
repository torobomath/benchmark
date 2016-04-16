%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP153
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   1 equality;  27 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   47 (   2   ~;   0   |;   4   &;  40   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    1 (   0 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
      ( ( ( '2d.parallel/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_R @ ( '2d.line/2' @ V_C @ V_D ) )
        & ~ ( '2d.intersect/2' @ ( '2d.seg/2' @ V_P @ V_Q ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ~ ( '2d.intersect/2' @ ( '2d.seg/2' @ V_P @ V_R ) @ ( '2d.line/2' @ V_A @ V_B ) ) )
     => ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_P @ V_R ) )
        = ( $sum @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_Q @ V_P ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_R @ V_P ) ) ) ) ) )).

