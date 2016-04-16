%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2009, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-24
%%
%% <PROBLEM-TEXT>
%% Let $t > 0$, and let $l_1$ be the straight line defined as $x = t$.
%% Let $C$ be the parabola defined as $y =\frac{x^2}{4}$. Let $l_2$ be
%% the tangent to $C$ at the point $(t, \frac{t^2}{4})$ which is the
%% common point of $C$ and $l_1$. Answer the following questions:
%%
%% (1) Let ${\theta}$ be the angle formed by $l_1$ and $l_2$, then find
%% $\cos {\theta}$, where $0\le {\theta}\le\frac{{\pi}}{2}$.
%%
%% (2) Let $l_3$ be the straight line symmetric to $l_1$ about $l_2$,
%% then find the equation of $l_3$.
%%
%% (3) Prove that $l_3$ passes through a fixed point irrespective of the
%% value of $t$.
%%
%% (4) Let $P$ and $Q$ be the two common points of $l_3$ and $C$. Find
%% the value of $t$ that gives the minimum length of the line segment
%% $PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   15 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  627 (  46 equality; 216 variable)
%            Maximal formula depth :   59 (  18 average)
%            Number of connectives :  525 (   4   ~;   0   |; 100   &; 418   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   1   :;   0   =)
%            Number of variables   :   75 (   0 sgn;   3   !;  50   ?;  22   ^)
%                                         (  75   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   3 pred;    5 func;    5 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_cosT: $real] :
      ? [V_theta: $real,V_l1: '2d.Shape',V_l2: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape'] :
        ( ( $greater @ 't/0' @ 0.0 )
        & ( '2d.line-type/1' @ V_l1 )
        & ( V_l1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( 't/0'
                = ( '2d.x-coord/1' @ V_p ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_T
          = ( '2d.point/2' @ 't/0' @ ( $quotient @ ( '^/2' @ 't/0' @ 2.0 ) @ 4.0 ) ) )
        & ( '2d.on/2' @ V_T @ V_C )
        & ( '2d.on/2' @ V_T @ V_l1 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
        & ( $lesseq @ 0.0 @ V_theta )
        & ( $lesseq @ V_theta @ ( $quotient @ 'Pi/0' @ 2.0 ) )
        & ( '2d.lines-intersect-angle/3' @ V_l1 @ V_l2 @ V_theta )
        & ( V_cosT
          = ( 'cos/1' @ V_theta ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_l3: '2d.Shape'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape'] :
        ( ( $greater @ 't/0' @ 0.0 )
        & ( V_l1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( 't/0'
                = ( '2d.x-coord/1' @ V_p ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_T
          = ( '2d.point/2' @ 't/0' @ ( $quotient @ ( '^/2' @ 't/0' @ 2.0 ) @ 4.0 ) ) )
        & ( '2d.on/2' @ V_T @ V_C )
        & ( '2d.on/2' @ V_T @ V_l1 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 ) ) )).

thf(p3,conjecture,(
    ? [V_P: '2d.Point'] :
    ! [V_t: $real] :
      ( ( $greater @ V_t @ 0.0 )
     => ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_C: '2d.Shape',V_T: '2d.Point',V_l3: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l1 )
          & ( V_l1
            = ( '2d.shape-of-cpfun/1'
              @ ^ [V_p: '2d.Point'] :
                  ( V_t
                  = ( '2d.x-coord/1' @ V_p ) ) ) )
          & ( V_C
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
          & ( '2d.line-type/1' @ V_l2 )
          & ( V_T
            = ( '2d.point/2' @ V_t @ ( $quotient @ ( '^/2' @ V_t @ 2.0 ) @ 4.0 ) ) )
          & ( '2d.on/2' @ V_T @ V_C )
          & ( '2d.on/2' @ V_T @ V_l1 )
          & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
          & ( '2d.line-type/1' @ V_l3 )
          & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 )
          & ( '2d.on/2' @ V_P @ V_l3 ) ) ) )).

thf(p3_0,conjecture,(
    ? [V_P: '2d.Point'] :
    ! [V_t: $real] :
      ( ( $greater @ V_t @ 0.0 )
     => ? [V_l3: '2d.Shape'] :
          ( ( V_l3
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( '^/2' @ V_t @ 2.0 ) @ ( $uminus @ 4.0 ) ) @ ( $product @ 4.0 @ V_t ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )
          & ( '2d.on/2' @ V_P @ V_l3 ) ) ) )).

thf(p3_1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ! [V_t: $real] :
        ( ( $greater @ V_t @ 0.0 )
       => ? [V_l3: '2d.Shape'] :
            ( ( V_l3
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( '^/2' @ V_t @ 2.0 ) @ ( $uminus @ 4.0 ) ) @ ( $product @ 4.0 @ V_t ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )
            & ( '2d.on/2' @ V_P @ V_l3 ) ) ) )).

thf(p4_0_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_PQmin: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_PQ: $real] :
            ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_t: $real] :
              ( ( $greater @ V_t @ 0.0 )
              & ( '2d.line-type/1' @ V_l1 )
              & ( V_l1
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( V_t
                      = ( '2d.x-coord/1' @ V_p ) ) ) )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( '2d.line-type/1' @ V_l2 )
              & ( V_T
                = ( '2d.point/2' @ V_t @ ( $quotient @ ( '^/2' @ V_t @ 2.0 ) @ 4.0 ) ) )
              & ( '2d.on/2' @ V_T @ V_C )
              & ( '2d.on/2' @ V_T @ V_l1 )
              & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
              & ( '2d.line-type/1' @ V_l3 )
              & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 )
              & ( '2d.on/2' @ V_P @ V_C )
              & ( '2d.on/2' @ V_P @ V_l3 )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_Q @ V_l3 )
              & ( V_P != V_Q )
              & ( V_PQ
                = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )
        @ V_PQmin ) )).

thf(p4_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_PQmin: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_PQ: $real] :
            ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_TT: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_t: $real] :
              ( ( $greater @ V_t @ 0.0 )
              & ( '2d.line-type/1' @ V_l1 )
              & ( V_l1
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( V_t
                      = ( '2d.x-coord/1' @ V_p ) ) ) )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( '2d.line-type/1' @ V_l2 )
              & ( V_TT
                = ( '2d.point/2' @ V_t @ ( $quotient @ ( '^/2' @ V_t @ 2.0 ) @ 4.0 ) ) )
              & ( '2d.on/2' @ V_TT @ V_C )
              & ( '2d.on/2' @ V_TT @ V_l1 )
              & ( '2d.tangent/3' @ V_C @ V_l2 @ V_TT )
              & ( '2d.line-type/1' @ V_l3 )
              & ( V_l3
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( '^/2' @ V_t @ 2.0 ) @ ( $uminus @ 4.0 ) ) @ ( $product @ 4.0 @ V_t ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( '2d.on/2' @ V_P @ V_C )
              & ( '2d.on/2' @ V_P @ V_l3 )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_Q @ V_l3 )
              & ( V_P != V_Q )
              & ( V_PQ
                = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )
        @ V_PQmin ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_tmin: $real] :
      ? [V_PQmin: $real,V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_PQmin
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( $greater @ V_tmin @ 0.0 )
        & ( '2d.line-type/1' @ V_l1 )
        & ( V_l1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( V_tmin
                = ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_T
          = ( '2d.point/2' @ V_tmin @ ( $quotient @ ( '^/2' @ V_tmin @ 2.0 ) @ 4.0 ) ) )
        & ( '2d.on/2' @ V_T @ V_C )
        & ( '2d.on/2' @ V_T @ V_l1 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_P @ V_l3 )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.on/2' @ V_Q @ V_l3 )
        & ( V_P != V_Q )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_PQ: $real] :
              ? [V_l1_dot_0: '2d.Shape',V_l2_dot_0: '2d.Shape',V_l3_dot_0: '2d.Shape',V_T_dot_0: '2d.Point',V_C_dot_0: '2d.Shape',V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point',V_t: $real] :
                ( ( $greater @ V_t @ 0.0 )
                & ( '2d.line-type/1' @ V_l1_dot_0 )
                & ( V_l1_dot_0
                  = ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p: '2d.Point'] :
                        ( V_t
                        = ( '2d.x-coord/1' @ V_p ) ) ) )
                & ( V_C_dot_0
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                & ( '2d.line-type/1' @ V_l2_dot_0 )
                & ( V_T_dot_0
                  = ( '2d.point/2' @ V_t @ ( $quotient @ ( '^/2' @ V_t @ 2.0 ) @ 4.0 ) ) )
                & ( '2d.on/2' @ V_T_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_T_dot_0 @ V_l1_dot_0 )
                & ( '2d.tangent/3' @ V_C_dot_0 @ V_l2_dot_0 @ V_T_dot_0 )
                & ( '2d.line-type/1' @ V_l3_dot_0 )
                & ( '2d.line-symmetry-shapes/3' @ V_l1_dot_0 @ V_l3_dot_0 @ V_l2_dot_0 )
                & ( '2d.on/2' @ V_P_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_P_dot_0 @ V_l3_dot_0 )
                & ( '2d.on/2' @ V_Q_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_Q_dot_0 @ V_l3_dot_0 )
                & ( V_P_dot_0 != V_Q_dot_0 )
                & ( V_PQ
                  = ( '2d.distance/2' @ V_P_dot_0 @ V_Q_dot_0 ) ) ) )
          @ V_PQmin ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosT_dot_0: $real] :
      ( ( $less @ 0.0 @ 't/0' )
      & ( V_cosT_dot_0
        = ( $quotient @ 't/0' @ ( 'sqrt/1' @ ( $sum @ 4.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l3_dot_0: '2d.Shape'] :
      ( ( $less @ 0.0 @ 't/0' )
      & ( V_l3_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ ( '2d.point/2' @ 1.0 @ ( $sum @ ( $quotient @ ( $difference @ ( '^/2' @ 't/0' @ 2.0 ) @ 4.0 ) @ ( $product @ 4.0 @ 't/0' ) ) @ 1.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 0.0 @ 1.0 ) ) ),
    answer_to(p3_1_question,[])).

thf(p4_0_answer,answer,(
    ^ [V_PQmin_dot_0: $real] : ( V_PQmin_dot_0 = 16.0 ) ),
    answer_to(p4_0_question,[])).

thf(p4_1_answer,answer,(
    ^ [V_PQmin_dot_0: $real] : ( V_PQmin_dot_0 = 16.0 ) ),
    answer_to(p4_1_question,[])).

thf(p4_answer,answer,(
    ^ [V_tmin_dot_0: $real] : ( V_tmin_dot_0 = 2.0 ) ),
    answer_to(p4_question,[])).

