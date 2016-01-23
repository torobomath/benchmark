%% DOMAIN:    Geometry, quadrangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 7
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% An isosceles trapezoid with bases $a$ and $c$ and altitude $h$ is given.
%% (a) On the axis of symmetry of this trapezoid, find all points $P$ such that
%% both legs of the trapezoid subtend right angles at $P$.
%% (b) Calculate the distance of $P$ from either base.
%% (c) Determine under what conditions such points $P$ actually exist. (Discuss
%% various cases that might arise.)
%% </PROBLEM-TEXT>
%%@ NOTE: coordinates are fixed for writing answers in terms of a, b, and h

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  368 (  29 equality; 130 variable)
%            Maximal formula depth :   23 (  19 average)
%            Number of connectives :  306 (   0   ~;   2   |;  53   &; 251   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   40 (   0 sgn;   0   !;  16   ?;   6   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_A
          = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ V_b @ 2 ) ) @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ ( '//2' @ V_b @ 2 ) @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ ( '//2' @ V_a @ 2 ) @ V_h ) )
        & ( V_D
          = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ V_a @ 2 ) ) @ V_h ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_P @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_D ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( '2d.on/2' @ V_P @ '2d.y-axis/0' ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Dist: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point'] :
        ( ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_A
          = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ V_b @ 2 ) ) @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ ( '//2' @ V_b @ 2 ) @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ ( '//2' @ V_a @ 2 ) @ V_h ) )
        & ( V_D
          = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ V_a @ 2 ) ) @ V_h ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_P @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_D ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( '2d.on/2' @ V_P @ '2d.y-axis/0' )
        & ( V_Dist
          = ( '2d.point-shape-distance/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_abh: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point'] :
        ( ( V_abh
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_h @ 'nil/0' ) ) ) )
        & ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_A
          = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ V_b @ 2 ) ) @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ ( '//2' @ V_b @ 2 ) @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ ( '//2' @ V_a @ 2 ) @ V_h ) )
        & ( V_D
          = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ V_a @ 2 ) ) @ V_h ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_P @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_D ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( '2d.on/2' @ V_P @ '2d.y-axis/0' ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
    ? [V_Px: 'R',V_Py: 'R'] :
      ( ( ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '>=/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) )
        & ( V_Px = 0 )
        & ( V_Py
          = ( '-/2' @ ( '//2' @ V_h @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) ) ) @ 2 ) ) )
        & ( V_P_dot_0
          = ( '2d.point/2' @ V_Px @ V_Py ) ) )
      | ( ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '>=/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) )
        & ( V_Px = 0 )
        & ( V_Py
          = ( '+/2' @ ( '//2' @ V_h @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) ) ) @ 2 ) ) )
        & ( V_P_dot_0
          = ( '2d.point/2' @ V_Px @ V_Py ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Dist_dot_0: 'R'] :
      ( ( ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '>=/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) )
        & ( V_Dist_dot_0
          = ( '-/2' @ ( '//2' @ V_h @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) ) ) @ 2 ) ) ) )
      | ( ( '</2' @ 0 @ V_h )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '>=/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) )
        & ( V_Dist_dot_0
          = ( '+/2' @ ( '//2' @ V_h @ 2 ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) ) ) @ 2 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_abh_dot_0: 'ListOf' @ 'R'] :
      ( ( V_abh_dot_0
        = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_h @ 'nil/0' ) ) ) )
      & ( '</2' @ 0 @ V_h )
      & ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '>=/2' @ ( '^/2' @ V_h @ 2 ) @ ( '*/2' @ V_a @ V_b ) ) ) ),
    answer_to(p3_question,[])).
