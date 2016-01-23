%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2007, Humanities Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Answer the following questions about $\triangle ABC$ whose vertices
%% are the points $A(0, 0)$, $B(2, 0)$, and $C(1, \sqrt{3})$ on the
%% $x y$ plane.
%%
%% (1) For the constant $a$ satisfying $0\le a\le\sqrt{3}$, find the
%% range of $x$ such that the point $P(x, a)$ is contained in
%% $\triangle ABC$.
%%
%% (2) For the constant $a$ described in (1), when $x$ moves in the
%% range found in (1), find the minimum value of $AP^2 + BP^2 + CP^2$
%% and the value of $x$ that gives the minimum value.
%%
%% (3) When the point $P(x, y)$ is contained in $\triangle ABC$, find
%% the minimum value of $AP^2 + BP^2 + CP^2$ and the coordinates of the
%% point $P$ that give the minimum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  293 (  29 equality; 100 variable)
%            Maximal formula depth :   44 (  22 average)
%            Number of connectives :  231 (   0   ~;   0   |;  37   &; 194   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   41 (   0 sgn;   0   !;  29   ?;   8   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_AB: '2d.Shape',V_BC: '2d.Shape',V_CA: '2d.Shape',V_ABC: '2d.Shape',V_P: '2d.Point'] :
        ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ ( 'sqrt/1' @ 3 ) )
        & ( V_A
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2 @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) )
        & ( V_AB
          = ( '2d.line/2' @ V_A @ V_B ) )
        & ( V_BC
          = ( '2d.line/2' @ V_B @ V_C ) )
        & ( V_CA
          = ( '2d.line/2' @ V_C @ V_A ) )
        & ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_a ) )
        & ( '2d.on/2' @ V_P @ ( '2d.with-boundary/1' @ V_ABC ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_n: 'R'] :
            ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_x: 'R',V_P: '2d.Point'] :
              ( ( '<=/2' @ 0 @ V_a )
              & ( '<=/2' @ V_a @ ( 'sqrt/1' @ 3 ) )
              & ( V_A
                = ( '2d.point/2' @ 0 @ 0 ) )
              & ( V_B
                = ( '2d.point/2' @ 2 @ 0 ) )
              & ( V_C
                = ( '2d.point/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) )
              & ( V_ABC
                = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
              & ( V_P
                = ( '2d.point/2' @ V_x @ V_a ) )
              & ( '2d.on/2' @ V_P @ ( '2d.with-boundary/1' @ V_ABC ) )
              & ( V_n
                = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_P ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_P ) ) @ 2 ) ) ) ) ) )
        @ V_m ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_mxy: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_P: '2d.Point',V_m: 'R',V_x: 'R',V_y: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2 @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) )
        & ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_P @ ( '2d.with-boundary/1' @ V_ABC ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_n: 'R'] :
              ? [V_a: '2d.Point',V_b: '2d.Point',V_c: '2d.Point',V_abc: '2d.Shape',V_p: '2d.Point',V_x1: 'R',V_y1: 'R'] :
                ( ( V_a
                  = ( '2d.point/2' @ 0 @ 0 ) )
                & ( V_b
                  = ( '2d.point/2' @ 2 @ 0 ) )
                & ( V_c
                  = ( '2d.point/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) )
                & ( V_abc
                  = ( '2d.triangle/3' @ V_a @ V_b @ V_c ) )
                & ( V_p
                  = ( '2d.point/2' @ V_x1 @ V_y1 ) )
                & ( '2d.point-inside-of/2' @ V_p @ V_abc )
                & ( V_n
                  = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_a @ V_p ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_b @ V_p ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_c @ V_p ) ) @ 2 ) ) ) ) ) )
          @ V_m )
        & ( V_m
          = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_P ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_P ) ) @ 2 ) ) ) )
        & ( V_mxy
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_a )
      & ( '<=/2' @ V_a @ ( 'sqrt/1' @ 3 ) )
      & ( '<=/2' @ ( '//2' @ V_a @ ( 'sqrt/1' @ 3 ) ) @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ ( '-/2' @ 2 @ ( '//2' @ V_a @ ( 'sqrt/1' @ 3 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_a )
      & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ 3 )
      & ( V_m_dot_0
        = ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ -2 @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ V_a ) ) @ 5 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_mxy_dot_0: 'ListOf' @ 'R'] :
      ( V_mxy_dot_0
      = ( 'cons/2' @ 4 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 3 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p3_question,[])).
