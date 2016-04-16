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

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  307 (  29 equality;  86 variable)
%            Maximal formula depth :   44 (  19 average)
%            Number of connectives :  245 (   0   ~;   0   |;  37   &; 208   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   1   :;   0   =)
%            Number of variables   :   37 (   0 sgn;   0   !;  29   ?;   8   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    4 func;    7 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_AB: '2d.Shape',V_BC: '2d.Shape',V_CA: '2d.Shape',V_ABC: '2d.Shape',V_P: '2d.Point'] :
        ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ ( 'sqrt/1' @ 3.0 ) )
        & ( V_A
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2.0 @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( V_AB
          = ( '2d.line/2' @ V_A @ V_B ) )
        & ( V_BC
          = ( '2d.line/2' @ V_B @ V_C ) )
        & ( V_CA
          = ( '2d.line/2' @ V_C @ V_A ) )
        & ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ 'a/0' ) )
        & ( '2d.on/2' @ V_P @ ( '2d.with-boundary/1' @ V_ABC ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_n: $real] :
            ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_x: $real,V_P: '2d.Point'] :
              ( ( $lesseq @ 0.0 @ 'a/0' )
              & ( $lesseq @ 'a/0' @ ( 'sqrt/1' @ 3.0 ) )
              & ( V_A
                = ( '2d.point/2' @ 0.0 @ 0.0 ) )
              & ( V_B
                = ( '2d.point/2' @ 2.0 @ 0.0 ) )
              & ( V_C
                = ( '2d.point/2' @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) )
              & ( V_ABC
                = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
              & ( V_P
                = ( '2d.point/2' @ V_x @ 'a/0' ) )
              & ( '2d.on/2' @ V_P @ ( '2d.with-boundary/1' @ V_ABC ) )
              & ( V_n
                = ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_P ) ) @ 2.0 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_P ) ) @ 2.0 ) ) ) ) ) )
        @ V_m ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_mxy: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_ABC: '2d.Shape',V_P: '2d.Point',V_m: $real,V_x: $real,V_y: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2.0 @ 0.0 ) )
        & ( V_C
          = ( '2d.point/2' @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( V_ABC
          = ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_P @ ( '2d.with-boundary/1' @ V_ABC ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_n: $real] :
              ? [V_a: '2d.Point',V_b: '2d.Point',V_c: '2d.Point',V_abc: '2d.Shape',V_p: '2d.Point',V_x1: $real,V_y1: $real] :
                ( ( V_a
                  = ( '2d.point/2' @ 0.0 @ 0.0 ) )
                & ( V_b
                  = ( '2d.point/2' @ 2.0 @ 0.0 ) )
                & ( V_c
                  = ( '2d.point/2' @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) )
                & ( V_abc
                  = ( '2d.triangle/3' @ V_a @ V_b @ V_c ) )
                & ( V_p
                  = ( '2d.point/2' @ V_x1 @ V_y1 ) )
                & ( '2d.point-inside-of/2' @ V_p @ V_abc )
                & ( V_n
                  = ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_a @ V_p ) ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_b @ V_p ) ) @ 2.0 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_c @ V_p ) ) @ 2.0 ) ) ) ) ) )
          @ V_m )
        & ( V_m
          = ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_P ) ) @ 2.0 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_P ) ) @ 2.0 ) ) ) )
        & ( V_mxy
          = ( 'cons/2' @ $real @ V_m @ ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ 'a/0' )
      & ( $lesseq @ 'a/0' @ ( 'sqrt/1' @ 3.0 ) )
      & ( $lesseq @ ( $quotient @ 'a/0' @ ( 'sqrt/1' @ 3.0 ) ) @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ ( $difference @ 2.0 @ ( $quotient @ 'a/0' @ ( 'sqrt/1' @ 3.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ 'a/0' )
      & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ 3.0 )
      & ( V_m_dot_0
        = ( $sum @ ( $product @ 3.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ -2.0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ 'a/0' ) ) @ 5.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_mxy_dot_0: ( 'ListOf' @ $real )] :
      ( V_mxy_dot_0
      = ( 'cons/2' @ $real @ 4.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p3_question,[])).

