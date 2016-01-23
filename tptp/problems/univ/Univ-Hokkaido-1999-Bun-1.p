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

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  304 (  34 equality; 119 variable)
%            Maximal formula depth :   51 (  22 average)
%            Number of connectives :  230 (   0   ~;   0   |;  41   &; 189   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   41 (   1 sgn;   0   !;  31   ?;   8   ^)
%                                         (  39   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_z: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_D: '2d.Point'] :
        ( ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( 1
          = ( '2d.area-of/1' @ V_ABC ) )
        & ( 2
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( V_x
          = ( '2d.distance/2' @ V_A @ V_D ) )
        & ( V_z
          = ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ ( '-/1' @ 1 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_zmin: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_z: 'R'] :
            ? [V_a: 'R',V_b: 'R',V_x: 'R',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_D: '2d.Point'] :
              ( ( V_A = '2d.origin/0' )
              & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
              & ( V_ABC
                = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
              & ( 1
                = ( '2d.area-of/1' @ V_ABC ) )
              & ( 2
                = ( '2d.distance/2' @ V_A @ V_B ) )
              & ( V_a
                = ( '2d.distance/2' @ V_B @ V_C ) )
              & ( V_b
                = ( '2d.distance/2' @ V_C @ V_A ) )
              & ( V_x
                = ( '2d.distance/2' @ V_A @ V_D ) )
              & ( V_z
                = ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ ( '-/1' @ 1 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) )
              & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
              & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) ) ) )
        @ V_zmin ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_D: '2d.Point',V_z: 'R'] :
        ( ( V_A = '2d.origin/0' )
        & ( '2d.on/2' @ V_B @ '2d.x-axis/0' )
        & ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( 1
          = ( '2d.area-of/1' @ V_ABC ) )
        & ( 2
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_b
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( V_x
          = ( '2d.distance/2' @ V_A @ V_D ) )
        & ( V_z
          = ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ ( '-/1' @ 1 ) ) @ ( '^/2' @ V_b @ 2 ) ) ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_z_dot_0: 'R'] :
              ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_x_dot_0: 'R',V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_C_dot_0: '2d.Point',V_ABC_dot_0: '2d.Shape',V_D_dot_0: '2d.Point'] :
                ( ( V_A_dot_0 = '2d.origin/0' )
                & ( '2d.on/2' @ V_B_dot_0 @ '2d.x-axis/0' )
                & ( V_ABC_dot_0
                  = ( '2d.triangle/3' @ V_A_dot_0 @ V_B_dot_0 @ V_C_dot_0 ) )
                & ( 1
                  = ( '2d.area-of/1' @ V_ABC_dot_0 ) )
                & ( 2
                  = ( '2d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) )
                & ( V_a_dot_0
                  = ( '2d.distance/2' @ V_B_dot_0 @ V_C_dot_0 ) )
                & ( V_b_dot_0
                  = ( '2d.distance/2' @ V_C_dot_0 @ V_A_dot_0 ) )
                & ( V_x_dot_0
                  = ( '2d.distance/2' @ V_A_dot_0 @ V_D_dot_0 ) )
                & ( V_z_dot_0
                  = ( '+/2' @ ( '^/2' @ V_a_dot_0 @ 2 ) @ ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ ( '-/1' @ 1 ) ) @ ( '^/2' @ V_b_dot_0 @ 2 ) ) ) )
                & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '2d.line/2' @ V_C_dot_0 @ V_D_dot_0 ) )
                & ( '2d.on/2' @ V_D_dot_0 @ ( '2d.seg/2' @ V_A_dot_0 @ V_B_dot_0 ) ) ) )
          @ V_z ) ) )).

thf(p1_answer,answer,(
    ^ [V_z_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_x )
      & ( '<=/2' @ V_x @ 2 )
      & ( V_z_dot_0
        = ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( '^/2' @ V_x @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ -4 @ V_x ) @ ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ 4 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_zmin_dot_0: 'R'] :
      ( V_zmin_dot_0
      = ( '+/2' @ ( '//2' @ 4 @ ( 'sqrt/1' @ 3 ) ) @ 4 ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_x_dot_1: 'R'] :
      ( V_x_dot_1
      = ( '//2' @ 1 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p2_1_question,[])).
