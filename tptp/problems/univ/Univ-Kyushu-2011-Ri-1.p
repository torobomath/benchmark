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

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  259 (  20 equality;  73 variable)
%            Maximal formula depth :   32 (  16 average)
%            Number of connectives :  213 (   0   ~;   0   |;  35   &; 178   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   1   :;   0   =)
%            Number of variables   :   33 (   0 sgn;   0   !;  20   ?;  13   ^)
%                                         (  33   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    3 func;    8 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_H: '2d.Point'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( 'sqrt/1' @ V_x ) ) ) )
        & ( $less @ 1.0 @ 't/0' )
        & ( V_P
          = ( '2d.point/2' @ 't/0' @ ( 'sqrt/1' @ 't/0' ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S1: $real] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape',V_H: '2d.Point',V_C_: '2d.Shape',V_l0_: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( 'sqrt/1' @ V_x ) ) ) )
        & ( $less @ 1.0 @ 't/0' )
        & ( V_P
          = ( '2d.point/2' @ 't/0' @ ( 'sqrt/1' @ 't/0' ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( V_C_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p_dot_0 @ V_C )
                & ( $lesseq @ 1.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_l0_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.on/2' @ V_p @ V_l0 )
                & ( $lesseq @ 1.0 @ ( '2d.x-coord/1' @ V_p ) ) ) ) )
        & ( V_S1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C_ @ ( 'cons/2' @ '2d.Shape' @ V_l0_ @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_P @ V_H ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_l0: '2d.Shape',V_l1: '2d.Shape',V_H: '2d.Point',V_C_: '2d.Shape',V_l0_: '2d.Shape',V_S1: $real,V_S2: $real] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( 'sqrt/1' @ V_x ) ) ) )
        & ( $less @ 1.0 @ V_t )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( 'sqrt/1' @ V_t ) ) )
        & ( V_l0
          = ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.perpendicular/2' @ V_l0 @ V_l1 )
        & ( '2d.on/2' @ V_H @ ( '2d.intersection/2' @ V_l0 @ V_l1 ) )
        & ( V_C_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p_dot_0 @ V_C )
                & ( $lesseq @ 1.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_l0_
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.on/2' @ V_p @ V_l0 )
                & ( $lesseq @ 1.0 @ ( '2d.x-coord/1' @ V_p ) ) ) ) )
        & ( V_S1
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C_ @ ( 'cons/2' @ '2d.Shape' @ V_l0_ @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_P @ V_H ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ( V_S2
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_l0 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_S1 = V_S2 ) ) )).

thf(p1_answer,answer,(
    ^ [V_H_dot_0: '2d.Point'] :
      ( ( $less @ 1.0 @ 't/0' )
      & ( V_H_dot_0
        = ( '2d.point/2' @ ( $quotient @ ( $sum @ 't/0' @ ( 'sqrt/1' @ 't/0' ) ) @ 2.0 ) @ ( $quotient @ ( $sum @ 't/0' @ ( 'sqrt/1' @ 't/0' ) ) @ 2.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S1_dot_0: $real] :
      ( ( $less @ 1.0 @ 't/0' )
      & ( V_S1_dot_0
        = ( $sum @ ( $product @ ( $quotient @ 1.0 @ 4.0 ) @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $sum @ ( $product @ ( $quotient @ -1.0 @ 6.0 ) @ ( $product @ 't/0' @ ( 'sqrt/1' @ 't/0' ) ) ) @ ( $sum @ ( $product @ ( $quotient @ 1.0 @ 4.0 ) @ 't/0' ) @ ( $quotient @ 1.0 @ 6.0 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( V_t_dot_0
      = ( $quotient @ ( $sum @ 11.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 10.0 ) ) ) @ 9.0 ) ) ),
    answer_to(p3_question,[])).

