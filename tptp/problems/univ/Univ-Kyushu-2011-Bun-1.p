%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2011, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Draw a perpendicular from the point $P(t, t^2)$ on the parabola
%% $y = x^2$ to the straight line $y = x$, and let $H$ be the
%% intersection, where $t > 1$. Answer the following questions:
%%
%% (1) Represent the coordinates of $H$ using $t$.
%%
%% (2) Let $R$ be the intersection of the straight line $y = x$ and the
%% straight line passing through $P$ and parallel to the $y$ axis, then
%% represent the area of the triangle $PRH$ using $t$.
%%
%% (3) Let $S_1$ be the area of the region enclosed by the parabola
%% $y = x^2$, the straight line $y = x$, and the line segment $PH$ in
%% the range of $x\ge 1$, then represent $S_1$ using $t$.
%%
%% (4) Let $S_2$ be the area of the region enclosed by the parabola
%% $y = x^2$ and the straight line $y = x$. When $S_1 = S_2$, find the
%% value of $t$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  313 (  23 equality; 108 variable)
%            Maximal formula depth :   32 (  17 average)
%            Number of connectives :  259 (   0   ~;   0   |;  43   &; 216   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   39 (   0   :)
%            Number of variables   :   43 (   0 sgn;   0   !;  23   ?;  14   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_H: '2d.Point'] :
      ? [V_l: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '</2' @ 1 @ V_t )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_t @ ( '^/2' @ V_t @ 2 ) ) @ V_l )
        & ( '2d.perpendicular/2' @ V_l @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_PRH: 'R'] :
      ? [V_P: '2d.Point',V_R: '2d.Point',V_H: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_P
          = ( '2d.point/2' @ V_t @ ( '^/2' @ V_t @ 2 ) ) )
        & ( '</2' @ 1 @ V_t )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_l0 @ V_l2 ) )
        & ( '2d.on/2' @ V_P @ V_l2 )
        & ( '2d.parallel/2' @ V_l2 @ '2d.y-axis/0' )
        & ( V_PRH
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_R @ V_H ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S1: 'R'] :
      ? [V_C: '2d.Shape',V_l0: '2d.Shape',V_l1: '2d.Shape',V_P: '2d.Point',V_H: '2d.Point',V_C1: '2d.Shape',V_m: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ V_x @ 2 ) ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '</2' @ 1 @ V_t )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( '^/2' @ V_t @ 2 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p_dot_0 @ V_C )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_m
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( ( '2d.x-coord/1' @ V_p )
                  = ( '2d.y-coord/1' @ V_p ) )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p ) ) ) ) )
        & ( V_S1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_m @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_H ) @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_C: '2d.Shape',V_l0: '2d.Shape',V_l1: '2d.Shape',V_P: '2d.Point',V_H: '2d.Point',V_C1: '2d.Shape',V_m: '2d.Shape',V_S1: 'R',V_S2: 'R'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ V_x @ 2 ) ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '</2' @ 1 @ V_t )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( '^/2' @ V_t @ 2 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p_dot_0 @ V_C )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_m
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( ( '2d.x-coord/1' @ V_p )
                  = ( '2d.y-coord/1' @ V_p ) )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p ) ) ) ) )
        & ( V_S1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_m @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_H ) @ 'nil/0' ) ) ) ) ) )
        & ( V_S2
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_l0 @ 'nil/0' ) ) ) ) )
        & ( V_S1 = V_S2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
      ( ( V_H_dot_0
        = ( '2d.point/2' @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ V_t ) @ 2 ) @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ V_t ) @ 2 ) ) )
      & ( '</2' @ 1 @ V_t ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_PRH_dot_0: 'R'] :
      ( ( V_PRH_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 4 ) @ ( '*/2' @ ( '^/2' @ V_t @ 2 ) @ ( '^/2' @ ( '-/2' @ V_t @ 1 ) @ 2 ) ) ) )
      & ( '</2' @ 1 @ V_t ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S1_dot_0: 'R'] :
      ( V_S1_dot_0
      = ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 4 ) @ ( '^/2' @ V_t @ 4 ) ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ -1 @ 6 ) @ ( '^/2' @ V_t @ 3 ) ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 4 ) @ ( '^/2' @ V_t @ 2 ) ) @ ( '//2' @ 1 @ 6 ) ) ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( V_t_dot_0
      = ( '//2' @ ( '+/2' @ 1 @ ( 'sqrt/1' @ 10 ) ) @ 3 ) ) ),
    answer_to(p4_question,[])).
