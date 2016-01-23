%% DOMAIN:    Geometry, hexahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% Consider the cube $ABCDA'B'C'D'$(with face $ABCD$ directly above face
%% $A'B'C'D'$).
%% (a) Find the locus of the midpoints of segments $XY$, where $X$ is any point
%% of $AC$ and $Y$ is any point of $B'D'$.
%% (b) Find the locus of points $Z$ which lie on the segments $XY$ of part (a) with
%% $ZY = 2XZ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  230 (  24 equality;  91 variable)
%            Maximal formula depth :   31 (  24 average)
%            Number of connectives :  178 (   0   ~;   0   |;  28   &; 150   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   36 (   0 sgn;   0   !;  20   ?;  12   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: '3d.Shape'] :
      ? [V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point',V_D1: '3d.Point',V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_D2: '3d.Point'] :
        ( ( V_A1
          = ( '3d.point/3' @ V_a @ 0 @ 0 ) )
        & ( V_B1
          = ( '3d.point/3' @ V_a @ V_a @ 0 ) )
        & ( V_C1
          = ( '3d.point/3' @ 0 @ V_a @ 0 ) )
        & ( V_D1
          = ( '3d.point/3' @ 0 @ 0 @ 0 ) )
        & ( V_A2
          = ( '3d.point/3' @ V_a @ 0 @ V_a ) )
        & ( V_B2
          = ( '3d.point/3' @ V_a @ V_a @ V_a ) )
        & ( V_C2
          = ( '3d.point/3' @ 0 @ V_a @ V_a ) )
        & ( V_D2
          = ( '3d.point/3' @ 0 @ 0 @ V_a ) )
        & ( V_M
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
              ? [V_X: '3d.Point',V_Y: '3d.Point'] :
                ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_A1 @ V_C1 ) )
                & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_B2 @ V_D2 ) )
                & ( V_p
                  = ( '3d.midpoint-of/2' @ V_X @ V_Y ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: '3d.Shape'] :
      ? [V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point',V_D1: '3d.Point',V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_D2: '3d.Point'] :
        ( ( V_A1
          = ( '3d.point/3' @ V_a @ 0 @ 0 ) )
        & ( V_B1
          = ( '3d.point/3' @ V_a @ V_a @ 0 ) )
        & ( V_C1
          = ( '3d.point/3' @ 0 @ V_a @ 0 ) )
        & ( V_D1
          = ( '3d.point/3' @ 0 @ 0 @ 0 ) )
        & ( V_A2
          = ( '3d.point/3' @ V_a @ 0 @ V_a ) )
        & ( V_B2
          = ( '3d.point/3' @ V_a @ V_a @ V_a ) )
        & ( V_C2
          = ( '3d.point/3' @ 0 @ V_a @ V_a ) )
        & ( V_D2
          = ( '3d.point/3' @ 0 @ 0 @ V_a ) )
        & ( V_M
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
              ? [V_X: '3d.Point',V_Y: '3d.Point'] :
                ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_A1 @ V_C1 ) )
                & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_B2 @ V_D2 ) )
                & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_p @ V_Y ) )
                  = ( '*/2' @ 2 @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_X @ V_p ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_M_dot_0: '3d.Shape'] :
      ( V_M_dot_0
      = ( '3d.set-of-cfun/1'
        @ ^ [V_x: 'R',V_y: 'R',V_z: 'R'] :
            ( ( V_z
              = ( '//2' @ V_a @ 2 ) )
            & ( '<=/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) @ ( '+/2' @ V_x @ V_y ) )
            & ( '<=/2' @ ( '+/2' @ V_x @ V_y ) @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ V_a ) )
            & ( '<=/2' @ ( '*/2' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ V_a ) @ ( '-/2' @ V_x @ V_y ) )
            & ( '<=/2' @ ( '-/2' @ V_x @ V_y ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_M_dot_0: '3d.Shape'] :
      ( V_M_dot_0
      = ( '3d.set-of-cfun/1'
        @ ^ [V_x: 'R',V_y: 'R',V_z: 'R'] :
            ( ( V_z
              = ( '//2' @ V_a @ 3 ) )
            & ( '<=/2' @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ V_a ) @ ( '+/2' @ V_x @ V_y ) )
            & ( '<=/2' @ ( '+/2' @ V_x @ V_y ) @ ( '*/2' @ ( '//2' @ 5 @ 3 ) @ V_a ) )
            & ( '<=/2' @ ( '*/2' @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) @ V_a ) @ ( '-/2' @ V_x @ V_y ) )
            & ( '<=/2' @ ( '-/2' @ V_x @ V_y ) @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ V_a ) ) ) ) ) ),
    answer_to(p2_question,[])).
