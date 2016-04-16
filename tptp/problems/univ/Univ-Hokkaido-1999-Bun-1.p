%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 1999, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-09
%%
%% <PROBLEM-TEXT>
%% For the triangle $ABC$ with the area of $1$, define $AB = 2$,
%% $BC = a$, and $CA = b$. Assuming that the foot $D$ of the
%% perpendicular drawn from $C$ to the straight line $AB$ is on the line
%% segment $AB$, answer the following questions:
%%
%% (1) Assuming that $AD = x$, represent $a^2 +(2\sqrt{3} - 1)b^2$ using
%% $x$.
%%
%% (2) Find the value of $x$ that gives the minimum value of
%% $a^2 +(2\sqrt{3} - 1)b^2$ and the magnitude of $\angle BAC$ at that
%% time.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  309 (  34 equality; 114 variable)
%            Maximal formula depth :   51 (  19 average)
%            Number of connectives :  235 (   0   ~;   0   |;  41   &; 194   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :   39 (   0 sgn;   0   !;  31   ?;   8   ^)
%                                         (  39   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_z: $real] :
      ? [V_a: $real,V_b: $real,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_D: '2d.Point'] :
        ( ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( 1.0
          = ( '2d.area-of/1' @ V_ABC ) )
        & ( 2.0
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( 'x/0'
          = ( '2d.distance/2' @ V_A @ V_D ) )
        & ( V_z
          = ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_zmin: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_z: $real] :
            ? [V_a: $real,V_b: $real,V_x: $real,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_D: '2d.Point'] :
              ( ( V_A = '2d.origin/0' )
              & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
              & ( V_ABC
                = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
              & ( 1.0
                = ( '2d.area-of/1' @ V_ABC ) )
              & ( 2.0
                = ( '2d.distance/2' @ V_A @ V_B ) )
              & ( V_a
                = ( '2d.distance/2' @ V_B @ V_C ) )
              & ( V_b
                = ( '2d.distance/2' @ V_C @ V_A ) )
              & ( V_x
                = ( '2d.distance/2' @ V_A @ V_D ) )
              & ( V_z
                = ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) )
              & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
              & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) ) ) )
        @ V_zmin ) )).

thf(p2_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_a: $real,V_b: $real,V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_D: '2d.Point',V_z: $real] :
        ( ( V_A = '2d.origin/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( 1.0
          = ( '2d.area-of/1' @ V_ABC ) )
        & ( 2.0
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( V_x
          = ( '2d.distance/2' @ V_A @ V_D ) )
        & ( V_z
          = ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( '^/2' @ V_b @ 2.0 ) ) ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_z_dot_0: $real] :
              ? [V_a_dot_0: $real,V_b_dot_0: $real,V_x_dot_0: $real,V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_ABC_dot_0: '2d.Shape',V_D_dot_0: '2d.Point'] :
                ( ( V_A_dot_0 = '2d.origin/0' )
                & ( '2d.on/2' @ V_B_dot_0 @ '2d.x-axis/0' )
                & ( V_ABC_dot_0
                  = ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
                & ( 1.0
                  = ( '2d.area-of/1' @ V_ABC_dot_0 ) )
                & ( 2.0
                  = ( '2d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) )
                & ( V_a_dot_0
                  = ( '2d.distance/2' @ V_B_dot_0 @ V_C_dot_0 ) )
                & ( V_b_dot_0
                  = ( '2d.distance/2' @ V_C_dot_0 @ V_A_dot_0 ) )
                & ( V_x_dot_0
                  = ( '2d.distance/2' @ V_A_dot_0 @ V_D_dot_0 ) )
                & ( V_z_dot_0
                  = ( $sum @ ( '^/2' @ V_a_dot_0 @ 2.0 ) @ ( $product @ ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( $uminus @ 1.0 ) ) @ ( '^/2' @ V_b_dot_0 @ 2.0 ) ) ) )
                & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '2d.line/2' @ V_C_dot_0 @ V_D_dot_0 ) )
                & ( '2d.on/2' @ V_D_dot_0 @ ( '2d.seg/2' @ V_A_dot_0 @ V_B_dot_0 ) ) ) )
          @ V_z ) ) )).

thf(p1_answer,answer,(
    ^ [V_z_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ 'x/0' )
      & ( $lesseq @ 'x/0' @ 2.0 )
      & ( V_z_dot_0
        = ( $sum @ ( $product @ 2.0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( '^/2' @ 'x/0' @ 2.0 ) ) ) @ ( $sum @ ( $product @ -4.0 @ 'x/0' ) @ ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 4.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_zmin_dot_0: $real] :
      ( V_zmin_dot_0
      = ( $sum @ ( $quotient @ 4.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 4.0 ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_x_dot_1: $real] :
      ( V_x_dot_1
      = ( $quotient @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p2_1_question,[])).

