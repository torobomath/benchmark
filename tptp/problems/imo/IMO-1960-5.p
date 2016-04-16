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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  244 (  24 equality;  57 variable)
%            Maximal formula depth :   32 (  20 average)
%            Number of connectives :  192 (   0   ~;   0   |;  32   &; 160   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   1   :;   0   =)
%            Number of variables   :   32 (   0 sgn;   0   !;  20   ?;  12   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    5 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '3d.Shape'
    @ ^ [V_M: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ? [V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point',V_D1: '3d.Point',V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_D2: '3d.Point'] :
            ( ( V_A1
              = ( '3d.point/3' @ 'a/0' @ 0.0 @ 0.0 ) )
            & ( V_B1
              = ( '3d.point/3' @ 'a/0' @ 'a/0' @ 0.0 ) )
            & ( V_C1
              = ( '3d.point/3' @ 0.0 @ 'a/0' @ 0.0 ) )
            & ( V_D1
              = ( '3d.point/3' @ 0.0 @ 0.0 @ 0.0 ) )
            & ( V_A2
              = ( '3d.point/3' @ 'a/0' @ 0.0 @ 'a/0' ) )
            & ( V_B2
              = ( '3d.point/3' @ 'a/0' @ 'a/0' @ 'a/0' ) )
            & ( V_C2
              = ( '3d.point/3' @ 0.0 @ 'a/0' @ 'a/0' ) )
            & ( V_D2
              = ( '3d.point/3' @ 0.0 @ 0.0 @ 'a/0' ) )
            & ( V_M
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                  ? [V_X: '3d.Point',V_Y: '3d.Point'] :
                    ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_A1 @ V_C1 ) )
                    & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_B2 @ V_D2 ) )
                    & ( V_p
                      = ( '3d.midpoint-of/2' @ V_X @ V_Y ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '3d.Shape'
    @ ^ [V_M: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ? [V_A1: '3d.Point',V_B1: '3d.Point',V_C1: '3d.Point',V_D1: '3d.Point',V_A2: '3d.Point',V_B2: '3d.Point',V_C2: '3d.Point',V_D2: '3d.Point'] :
            ( ( V_A1
              = ( '3d.point/3' @ 'a/0' @ 0.0 @ 0.0 ) )
            & ( V_B1
              = ( '3d.point/3' @ 'a/0' @ 'a/0' @ 0.0 ) )
            & ( V_C1
              = ( '3d.point/3' @ 0.0 @ 'a/0' @ 0.0 ) )
            & ( V_D1
              = ( '3d.point/3' @ 0.0 @ 0.0 @ 0.0 ) )
            & ( V_A2
              = ( '3d.point/3' @ 'a/0' @ 0.0 @ 'a/0' ) )
            & ( V_B2
              = ( '3d.point/3' @ 'a/0' @ 'a/0' @ 'a/0' ) )
            & ( V_C2
              = ( '3d.point/3' @ 0.0 @ 'a/0' @ 'a/0' ) )
            & ( V_D2
              = ( '3d.point/3' @ 0.0 @ 0.0 @ 'a/0' ) )
            & ( V_M
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                  ? [V_X: '3d.Point',V_Y: '3d.Point'] :
                    ( ( '3d.on/2' @ V_X @ ( '3d.seg/2' @ V_A1 @ V_C1 ) )
                    & ( '3d.on/2' @ V_Y @ ( '3d.seg/2' @ V_B2 @ V_D2 ) )
                    & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_p @ V_Y ) )
                      = ( $product @ 2.0 @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_X @ V_p ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_M_dot_0: '3d.Shape'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_M_dot_0
        = ( '3d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real,V_z: $real] :
              ( ( V_z
                = ( $quotient @ 'a/0' @ 2.0 ) )
              & ( $lesseq @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) @ ( $sum @ V_x @ V_y ) )
              & ( $lesseq @ ( $sum @ V_x @ V_y ) @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ 'a/0' ) )
              & ( $lesseq @ ( $product @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ 'a/0' ) @ ( $difference @ V_x @ V_y ) )
              & ( $lesseq @ ( $difference @ V_x @ V_y ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_M_dot_0: '3d.Shape'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_M_dot_0
        = ( '3d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real,V_z: $real] :
              ( ( V_z
                = ( $quotient @ 'a/0' @ 3.0 ) )
              & ( $lesseq @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ 'a/0' ) @ ( $sum @ V_x @ V_y ) )
              & ( $lesseq @ ( $sum @ V_x @ V_y ) @ ( $product @ ( $quotient @ 5.0 @ 3.0 ) @ 'a/0' ) )
              & ( $lesseq @ ( $product @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) @ 'a/0' ) @ ( $difference @ V_x @ V_y ) )
              & ( $lesseq @ ( $difference @ V_x @ V_y ) @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ 'a/0' ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

