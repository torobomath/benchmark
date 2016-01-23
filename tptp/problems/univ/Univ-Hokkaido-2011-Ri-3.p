%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2011, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-18
%%
%% <PROBLEM-TEXT>
%% Answer the following questions:
%%
%% (1) Find the equation of the circle passing through the points
%% $O(0, 0)$, $A(2, 1)$, and $B(1, 2)$ on the $x y$ plane.
%%
%% (2) When $t$ moves across all real numbers, let $l$ be the straight
%% line formed by the point $(t+2, t+2, t)$ in the $x y z$ space. Find
%% the condition that $a$, $b$, must $c$ specify in order that the
%% spherical surface $S$ passing through the points $O(0, 0, 0)$,
%% $A^{\prime }(2, 1, 0)$, and $B^{\prime }(1, 2, 0)$ and centered at
%% $C(a, b, c)$ has common points with the straight line $l$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  147 (  17 equality;  49 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  111 (   0   ~;   1   |;  23   &;  87   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;  16   ?;   5   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_A
          = ( '2d.point/2' @ 2 @ 1 ) )
        & ( V_B
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( '2d.on/2' @ V_O @ V_C )
        & ( '2d.on/2' @ V_A @ V_C )
        & ( '2d.on/2' @ V_B @ V_C ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R'] :
        ( ( V_abc
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_l: '3d.Shape',V_S: '3d.Shape'] :
            ( ( '3d.line-type/1' @ V_l )
            & ( V_l
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                  ? [V_t: 'R'] :
                    ( V_p
                    = ( '3d.point/3' @ ( '+/2' @ V_t @ 2 ) @ ( '+/2' @ V_t @ 2 ) @ V_t ) ) ) )
            & ( '3d.sphere-type/1' @ V_S )
            & ( V_O
              = ( '3d.point/3' @ 0 @ 0 @ 0 ) )
            & ( V_A
              = ( '3d.point/3' @ 2 @ 1 @ 0 ) )
            & ( V_B
              = ( '3d.point/3' @ 1 @ 2 @ 0 ) )
            & ( '3d.on/2' @ V_O @ V_S )
            & ( '3d.on/2' @ V_A @ V_S )
            & ( '3d.on/2' @ V_B @ V_S )
            & ( V_C
              = ( '3d.point/3' @ V_a @ V_b @ V_c ) )
            & ( V_C
              = ( '3d.center-of/1' @ V_S ) )
            & ( '3d.intersect/2' @ V_l @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.circle/2' @ ( '2d.point/2' @ ( '//2' @ 5 @ 6 ) @ ( '//2' @ 5 @ 6 ) ) @ ( 'sqrt/1' @ ( '//2' @ 25 @ 18 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_abc_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_c_dot_0: 'R'] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ ( 'cons/2' @ V_c_dot_0 @ 'nil/0' ) ) ) )
      & ( ( ( V_a_dot_0
            = ( '//2' @ 5 @ 6 ) )
          & ( V_b_dot_0
            = ( '//2' @ 5 @ 6 ) )
          & ( '<=/2' @ V_c_dot_0 @ ( '//2' @ 1 @ 3 ) ) )
        | ( ( V_a_dot_0
            = ( '//2' @ 5 @ 6 ) )
          & ( V_b_dot_0
            = ( '//2' @ 5 @ 6 ) )
          & ( '<=/2' @ ( '//2' @ 13 @ 3 ) @ V_c_dot_0 ) ) ) ) ),
    answer_to(p2_question,[])).
