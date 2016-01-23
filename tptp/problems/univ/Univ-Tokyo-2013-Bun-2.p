%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 2
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2013-11-11
%%
%% <PROBLEM-TEXT>
%% Consider the three points $P(0, -\sqrt{2})$, $Q(0, \sqrt{2})$, and
%% $A(a, \sqrt{a^2+1})$ ( $0\le a\le 1$) on the coordinate plane.
%%
%% (1) Prove that the difference in the length of the two line segment is
%% a constant irrespective of $a$, and find the value of the constant.
%%
%% (2) Let $B$ be the intersection of the parabola
%% $y=\frac{\sqrt{2}}{8} x^2$ and the half line starting from $Q$ and
%% passing through $A$. Let $C$ be the intersection of the straight line
%% $y=2$ and the perpendicular drawn from the point $B$ to the straight
%% line $y=2$. Prove that the sum of the lengths of the line segments
%% $PA+AB+BC$ is a constant independent of $a$, and find the value of
%% the constant.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  273 (  18 equality;  80 variable)
%            Maximal formula depth :   32 (  18 average)
%            Number of connectives :  231 (   0   ~;   0   |;  32   &; 195   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   30 (   0 sgn;  24   !;   2   ?;   4   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1,conjecture,(
    ? [V_d: 'R'] :
    ! [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Point',V_a: 'R'] :
      ( ( ( V_P
          = ( '2d.point/2' @ 0 @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) ) )
        & ( V_Q
          = ( '2d.point/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) ) ) )
        & ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ 1 ) )
     => ( V_d
        = ( '-/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_A ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ! [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Point',V_a: 'R'] :
        ( ( ( V_P
            = ( '2d.point/2' @ 0 @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) ) )
          & ( V_Q
            = ( '2d.point/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) )
          & ( V_A
            = ( '2d.point/2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) ) ) )
          & ( '<=/2' @ 0 @ V_a )
          & ( '<=/2' @ V_a @ 1 ) )
       => ( V_d
          = ( '-/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_A ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) ) ) )).

thf(p2_1,conjecture,(
    ? [V_s: 'R'] :
    ! [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Point',V_a: 'R',V_B: '2d.Point',V_C: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape'] :
      ( ( ( V_P
          = ( '2d.point/2' @ 0 @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) ) )
        & ( V_Q
          = ( '2d.point/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) ) ) )
        & ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ 1 )
        & ( '2d.half-line-type/1' @ V_l )
        & ( '2d.is-end-point-of/2' @ V_Q @ V_l )
        & ( '2d.on/2' @ V_A @ V_l )
        & ( '2d.intersect/3' @ V_l @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 8 ) @ 'nil/0' ) ) ) ) ) @ V_B )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.on/2' @ V_B @ V_m )
        & ( '2d.perpendicular/2' @ V_m @ ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 2 ) @ ( '2d.point/2' @ 1 @ 2 ) ) )
        & ( '2d.intersect/3' @ V_m @ ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 2 ) @ ( '2d.point/2' @ 1 @ 2 ) ) @ V_C ) )
     => ( V_s
        = ( '+/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_A ) ) @ ( '+/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) ) ) ) ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'R'] :
      ! [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Point',V_a: 'R',V_B: '2d.Point',V_C: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape'] :
        ( ( ( V_P
            = ( '2d.point/2' @ 0 @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) ) )
          & ( V_Q
            = ( '2d.point/2' @ 0 @ ( 'sqrt/1' @ 2 ) ) )
          & ( V_A
            = ( '2d.point/2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) ) ) )
          & ( '<=/2' @ 0 @ V_a )
          & ( '<=/2' @ V_a @ 1 )
          & ( '2d.half-line-type/1' @ V_l )
          & ( '2d.is-end-point-of/2' @ V_Q @ V_l )
          & ( '2d.on/2' @ V_A @ V_l )
          & ( '2d.intersect/3' @ V_l @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 8 ) @ 'nil/0' ) ) ) ) ) @ V_B )
          & ( '2d.line-type/1' @ V_m )
          & ( '2d.on/2' @ V_B @ V_m )
          & ( '2d.perpendicular/2' @ V_m @ ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 2 ) @ ( '2d.point/2' @ 1 @ 2 ) ) )
          & ( '2d.intersect/3' @ V_m @ ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 2 ) @ ( '2d.point/2' @ 1 @ 2 ) ) @ V_C ) )
       => ( V_s
          = ( '+/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_A ) ) @ ( '+/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) ) ) ) ) )).

thf(p1_2_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 2 ) ),
    answer_to(p1_2_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_s_dot_0: 'R'] :
      ( V_s_dot_0
      = ( 'sqrt/1' @ 2 ) ) ),
    answer_to(p2_2_question,[])).
