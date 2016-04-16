%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1985, Science Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% On the $x y$ plane, let $O$ be the origin, and $A$, the fixed point
%% $(1, 0)$. Assume that the points $P$ and $Q$ moves on the
%% circumference $x^2+y^2=1$, and the angle formed by rotating from the
%% line segment $OA$ to the line segment $OP$ in the positive direction
%% is equal to the angle formed by rotating from the line segment $OP$
%% to the line segment $OQ$ in the positive direction.
%%
%% Let $R$ be the intersection of the $x$ axis and the straight line
%% passing through the point $P$ and perpendicular to the $x$ axis, and
%% $S$, the intersection of the $x$ axis and the straight line passing
%% through the point $Q$ and perpendicular to the $x$ axis. When the
%% real number $l\ge 0$ is given, find the number of the combination of
%% the positions of the points $P$ and $Q$ such that the length of the
%% line segment $RS$ is equal to $l$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  149 (  18 equality;  44 variable)
%            Maximal formula depth :   39 (  14 average)
%            Number of connectives :  114 (   0   ~;   0   |;  24   &;  84   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   42 (   2   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   2 pred;    2 func;   11 numbers)

include('axioms.ax').

thf('S2/0_type',type,(
    'S2/0': '2d.Shape' )).

thf('l/0_type',type,(
    'l/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_S1: '2d.Shape',V_PQ_set: ( 'SetOf' @ ( 'ListOf' @ '2d.Point' ) )] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 1.0 @ 0.0 ) )
        & ( V_S1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2.0 ) )
                = 1.0 ) ) )
        & ( V_n
          = ( 'cardinality-of/1' @ ( 'ListOf' @ '2d.Point' ) @ V_PQ_set ) )
        & ( V_PQ_set
          = ( 'set-by-def/1' @ ( 'ListOf' @ '2d.Point' )
            @ ^ [V_PQ: ( 'ListOf' @ '2d.Point' )] :
              ? [V_P: '2d.Point',V_Q: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape',V_R: '2d.Point',V_S: '2d.Point',V_OAP: $real,V_OPQ: $real] :
                ( ( V_PQ
                  = ( 'cons/2' @ '2d.Point' @ V_P @ ( 'cons/2' @ '2d.Point' @ V_Q @ ( 'nil/0' @ '2d.Point' ) ) ) )
                & ( '2d.on/2' @ V_P @ V_S1 )
                & ( '2d.on/2' @ V_Q @ 'S2/0' )
                & ( '2d.lines-intersect-angle/3' @ ( '2d.line/2' @ V_O @ V_A ) @ ( '2d.line/2' @ V_O @ V_P ) @ V_OAP )
                & ( '2d.lines-intersect-angle/3' @ ( '2d.line/2' @ V_O @ V_P ) @ ( '2d.line/2' @ V_O @ V_Q ) @ V_OPQ )
                & ( V_OAP = V_OPQ )
                & ( '2d.on/2' @ V_P @ V_L1 )
                & ( '2d.perpendicular/2' @ V_L1 @ '2d.x-axis/0' )
                & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_L1 @ '2d.x-axis/0' ) )
                & ( '2d.on/2' @ V_Q @ V_L2 )
                & ( '2d.perpendicular/2' @ V_L2 @ '2d.x-axis/0' )
                & ( '2d.on/2' @ V_S @ ( '2d.intersection/2' @ V_L2 @ '2d.x-axis/0' ) )
                & ( $lesseq @ 0.0 @ 'l/0' )
                & ( 'l/0'
                  = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_R @ V_S ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ( ( ( 'l/0' = 0.0 )
       => ( V_n_dot_0 = 3 ) )
      & ( ( ( $less @ 0.0 @ 'l/0' )
          & ( $less @ 'l/0' @ ( $quotient @ 9.0 @ 8.0 ) ) )
       => ( V_n_dot_0 = 6 ) )
      & ( ( 'l/0'
          = ( $quotient @ 9.0 @ 8.0 ) )
       => ( V_n_dot_0 = 4 ) )
      & ( ( ( $less @ ( $quotient @ 9.0 @ 8.0 ) @ 'l/0' )
          & ( $less @ 'l/0' @ 2.0 ) )
       => ( V_n_dot_0 = 2 ) )
      & ( ( 'l/0' = 2.0 )
       => ( V_n_dot_0 = 1 ) )
      & ( ( $less @ 2.0 @ 'l/0' )
       => ( V_n_dot_0 = 0 ) ) ) ),
    answer_to(p_question,[])).

