%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2011, Science Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Draw a perpendicular from the point $P(t, \sqrt{t})$ on the curve
%% $y =\sqrt{x}$ to the straight line $y = x$, and let $H$ be the
%% intersection, where $t > 1$. Answer the following questions:
%%
%% (1) Represent the coordinates of $H$ using $t$.
%%
%% (2) Let $S_1$ be the area of the region enclosed by the curve
%% $y =\sqrt{x}$, the straight line $y = x$, and the line segment $PH$
%% in the range of $x\ge 1$, then represent $S_1$ using $t$.
%%
%% (3) Let $S_2$ be the area of the region enclosed by the curve
%% $y =\sqrt{x}$ and the straight line $y = x$. When $S_1 = S_2$, find
%% the value of $t$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  245 (  20 equality;  89 variable)
%            Maximal formula depth :   32 (  18 average)
%            Number of connectives :  199 (   0   ~;   0   |;  35   &; 164   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   37 (   0 sgn;   0   !;  20   ?;  13   ^)
%                                         (  33   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_H: '2d.Point'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( 'sqrt/1' @ V_x ) ) ) )
        & ( '</2' @ 1 @ V_t )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S1: 'R'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape',V_H: '2d.Point',V_C_: '2d.Shape',V_l0_: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( 'sqrt/1' @ V_x ) ) ) )
        & ( '</2' @ 1 @ V_t )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( V_C_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p_dot_0 @ V_C )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_l0_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.on/2' @ V_p @ V_l0 )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p ) ) ) ) )
        & ( V_S1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C_ @ ( 'cons/2' @ V_l0_ @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_H ) @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape',V_H: '2d.Point',V_C_: '2d.Shape',V_l0_: '2d.Shape',V_S1: 'R',V_S2: 'R'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( 'sqrt/1' @ V_x ) ) ) )
        & ( '</2' @ 1 @ V_t )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( V_C_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p_dot_0 @ V_C )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_l0_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.on/2' @ V_p @ V_l0 )
                & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_p ) ) ) ) )
        & ( V_S1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C_ @ ( 'cons/2' @ V_l0_ @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_H ) @ 'nil/0' ) ) ) ) ) )
        & ( V_S2
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_l0 @ 'nil/0' ) ) ) ) )
        & ( V_S1 = V_S2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
      ( ( '</2' @ 1 @ V_t )
      & ( V_H_dot_0
        = ( '2d.point/2' @ ( '//2' @ ( '+/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) @ 2 ) @ ( '//2' @ ( '+/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) @ 2 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S1_dot_0: 'R'] :
      ( ( '</2' @ 1 @ V_t )
      & ( V_S1_dot_0
        = ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 4 ) @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ -1 @ 6 ) @ ( '*/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 4 ) @ V_t ) @ ( '//2' @ 1 @ 6 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( V_t_dot_0
      = ( '//2' @ ( '+/2' @ 11 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 10 ) ) ) @ 9 ) ) ),
    answer_to(p3_question,[])).
