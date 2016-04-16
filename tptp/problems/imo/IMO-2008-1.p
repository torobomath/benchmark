%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2008, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% An acute-angled triangle ABC has orthocentre H. The circle passing through
%% H with centre the midpoint of BC intersects the line BC at A1 and A2.
%% Similarly, the circle passing through H with centre the midpoint of CA
%% intersects the line CA at B1 and B2, and the circle passing through H with
%% centre the midpoint of AB intersects the line AB at C1 and C2. Show that A1,
%% A2, B1, B2, C1, C2 lie on a circle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (   6 equality;  61 variable)
%            Maximal formula depth :   39 (  39 average)
%            Number of connectives :   99 (   3   ~;   0   |;  19   &;  76   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;  13   !;   0   ?;   0   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_H: '2d.Point',V_K1: '2d.Shape',V_A1: '2d.Point',V_A2: '2d.Point',V_K2: '2d.Shape',V_B1: '2d.Point',V_B2: '2d.Point',V_K3: '2d.Shape',V_C1: '2d.Point',V_C2: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-orthocenter-of/2' @ V_H @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( ( '2d.center-of/1' @ V_K1 )
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_H @ V_K1 )
        & ( V_A1 != V_A2 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_C ) @ V_K1 @ V_A1 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_C ) @ V_K1 @ V_A2 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( ( '2d.center-of/1' @ V_K2 )
          = ( '2d.midpoint-of/2' @ V_C @ V_A ) )
        & ( '2d.on/2' @ V_H @ V_K2 )
        & ( V_B1 != V_B2 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_C ) @ V_K2 @ V_B1 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_C ) @ V_K2 @ V_B2 )
        & ( '2d.circle-type/1' @ V_K3 )
        & ( ( '2d.center-of/1' @ V_K3 )
          = ( '2d.midpoint-of/2' @ V_B @ V_A ) )
        & ( '2d.on/2' @ V_H @ V_K3 )
        & ( V_C1 != V_C2 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ V_K3 @ V_C1 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ V_K3 @ V_C2 ) )
     => ( '2d.concircular/1' @ ( 'cons/2' @ '2d.Point' @ V_A1 @ ( 'cons/2' @ '2d.Point' @ V_A2 @ ( 'cons/2' @ '2d.Point' @ V_B1 @ ( 'cons/2' @ '2d.Point' @ V_B2 @ ( 'cons/2' @ '2d.Point' @ V_C1 @ ( 'cons/2' @ '2d.Point' @ V_C2 @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) ) )).

