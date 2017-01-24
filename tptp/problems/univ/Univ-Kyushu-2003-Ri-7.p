%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2003, Science Course, Problem 7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-30
%%
%% <PROBLEM-TEXT>
%% Assume that the point $P(a, b)$ moves in the range of
%% $|a|\le\frac{1}{2}$ and $|b|\le\frac{1}{2}$ on the coordinate plane.
%% Also assume that the coordinates of the point $Q(x, y)$ are the
%% solution of the simultaneous linear equation $A X = B$, where
%% $A =\frac{1}{3}(\begin{matrix} 2 & -1\\ -1 & 2\end{matrix})$,
%% $X =(\begin{matrix} x\\ y\end{matrix})$, and
%% $B =(\begin{matrix} 1+a\\ -1+b\end{matrix})$.
%%
%% (1) Let the point $Q$ be at the point $R$ when the point $P$ is at
%% the origin $O$. When $P\not= O$, find the maximum value of
%% $\frac{RQ}{OP}$, and graph all the points $P$ that give the maximum
%% value.
%%
%% (2) Find the minimum value of $OQ$ and the coordinates of the point
%% $P$ that give the minimum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  414 (  46 equality; 119 variable)
%            Maximal formula depth :   34 (  18 average)
%            Number of connectives :  325 (   7   ~;   0   |;  52   &; 266   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :;   0   =)
%            Number of variables   :   53 (   0 sgn;   0   !;  41   ?;  12   ^)
%                                         (  53   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x_max: $real] :
      ? [V_A: '2d.Matrix',V_R: '2d.Point',V_x_set: ( 'SetOf' @ $real )] :
        ( ( V_A
          = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.matrix/4' @ 2.0 @ -1.0 @ -1.0 @ 2.0 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_R ) ) )
          = ( '2d.point/2' @ 1.0 @ -1.0 ) )
        & ( 'maximum/2' @ V_x_set @ V_x_max )
        & ( V_x_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x: $real] :
              ? [V_a: $real,V_b: $real,V_P: '2d.Point',V_B: '2d.Point',V_Q: '2d.Point'] :
                ( ( $lesseq @ ( 'abs/1' @ V_a ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( $lesseq @ ( 'abs/1' @ V_b ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( V_P
                  = ( '2d.point/2' @ V_a @ V_b ) )
                & ( V_P != '2d.origin/0' )
                & ( V_B
                  = ( '2d.point/2' @ ( $sum @ 1.0 @ V_a ) @ ( $difference @ V_b @ 1.0 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
                  = V_B )
                & ( V_x
                  = ( $quotient @ ( '2d.distance/2' @ V_R @ V_Q ) @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) ) ) ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Matrix',V_R: '2d.Point',V_x_set: ( 'SetOf' @ $real ),V_x_max: $real,V_a: $real,V_b: $real,V_B: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_A
          = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.matrix/4' @ 2.0 @ -1.0 @ -1.0 @ 2.0 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_R ) ) )
          = ( '2d.point/2' @ 1.0 @ -1.0 ) )
        & ( 'maximum/2' @ V_x_set @ V_x_max )
        & ( V_x_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x: $real] :
              ? [V_a_dot_0: $real,V_b_dot_0: $real,V_P_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                ( ( $lesseq @ ( 'abs/1' @ V_a_dot_0 ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( $lesseq @ ( 'abs/1' @ V_b_dot_0 ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( V_P_dot_0
                  = ( '2d.point/2' @ V_a_dot_0 @ V_b_dot_0 ) )
                & ( V_P_dot_0 != '2d.origin/0' )
                & ( V_B_dot_0
                  = ( '2d.point/2' @ ( $sum @ 1.0 @ V_a_dot_0 ) @ ( $difference @ V_b_dot_0 @ 1.0 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q_dot_0 ) ) )
                  = V_B_dot_0 )
                & ( V_x
                  = ( $quotient @ ( '2d.distance/2' @ V_R @ V_Q_dot_0 ) @ ( '2d.distance/2' @ '2d.origin/0' @ V_P_dot_0 ) ) ) ) ) )
        & ( $lesseq @ ( 'abs/1' @ V_a ) @ ( $quotient @ 1.0 @ 2.0 ) )
        & ( $lesseq @ ( 'abs/1' @ V_b ) @ ( $quotient @ 1.0 @ 2.0 ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ( V_P != '2d.origin/0' )
        & ( V_B
          = ( '2d.point/2' @ ( $sum @ 1.0 @ V_a ) @ ( $difference @ V_b @ 1.0 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
          = V_B )
        & ( V_x_max
          = ( $quotient @ ( '2d.distance/2' @ V_R @ V_Q ) @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) ) ) ) )).

thf(p2_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_OQ_min: $real] :
      ? [V_OQ_set: ( 'SetOf' @ $real )] :
        ( ( V_OQ_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_OQ: $real] :
              ? [V_a: $real,V_b: $real,V_P: '2d.Point',V_A: '2d.Matrix',V_B: '2d.Point',V_Q: '2d.Point'] :
                ( ( $lesseq @ ( 'abs/1' @ V_a ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( $lesseq @ ( 'abs/1' @ V_b ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( V_P
                  = ( '2d.point/2' @ V_a @ V_b ) )
                & ( V_A
                  = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.matrix/4' @ 2.0 @ -1.0 @ -1.0 @ 2.0 ) ) )
                & ( V_P != '2d.origin/0' )
                & ( V_B
                  = ( '2d.point/2' @ ( $sum @ 1.0 @ V_a ) @ ( $difference @ V_b @ 1.0 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
                  = V_B )
                & ( V_OQ
                  = ( '2d.distance/2' @ '2d.origin/0' @ V_Q ) ) ) ) )
        & ( 'minimum/2' @ V_OQ_set @ V_OQ_min ) ) )).

thf(p2_2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_OQ_set: ( 'SetOf' @ $real ),V_OQ_min: $real,V_a: $real,V_b: $real,V_A: '2d.Matrix',V_B: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_OQ_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_OQ: $real] :
              ? [V_a_dot_0: $real,V_b_dot_0: $real,V_P_dot_0: '2d.Point',V_A_dot_0: '2d.Matrix',V_B_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                ( ( $lesseq @ ( 'abs/1' @ V_a_dot_0 ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( $lesseq @ ( 'abs/1' @ V_b_dot_0 ) @ ( $quotient @ 1.0 @ 2.0 ) )
                & ( V_P_dot_0
                  = ( '2d.point/2' @ V_a_dot_0 @ V_b_dot_0 ) )
                & ( V_A_dot_0
                  = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.matrix/4' @ 2.0 @ -1.0 @ -1.0 @ 2.0 ) ) )
                & ( V_P_dot_0 != '2d.origin/0' )
                & ( V_B_dot_0
                  = ( '2d.point/2' @ ( $sum @ 1.0 @ V_a_dot_0 ) @ ( $difference @ V_b_dot_0 @ 1.0 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A_dot_0 @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q_dot_0 ) ) )
                  = V_B_dot_0 )
                & ( V_OQ
                  = ( '2d.distance/2' @ '2d.origin/0' @ V_Q_dot_0 ) ) ) ) )
        & ( 'minimum/2' @ V_OQ_set @ V_OQ_min )
        & ( $lesseq @ ( 'abs/1' @ V_a ) @ ( $quotient @ 1.0 @ 2.0 ) )
        & ( $lesseq @ ( 'abs/1' @ V_b ) @ ( $quotient @ 1.0 @ 2.0 ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ( V_A
          = ( '2d.sm*/2' @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.matrix/4' @ 2.0 @ -1.0 @ -1.0 @ 2.0 ) ) )
        & ( V_P != '2d.origin/0' )
        & ( V_B
          = ( '2d.point/2' @ ( $sum @ 1.0 @ V_a ) @ ( $difference @ V_b @ 1.0 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
          = V_B )
        & ( V_OQ_min
          = ( '2d.distance/2' @ '2d.origin/0' @ V_Q ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_xmax: $real] : ( V_xmax = 3.0 ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_P_dot_1: '2d.Point'] :
      ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ ( '2d.x-coord/1' @ V_P_dot_1 ) )
      & ( $lesseq @ ( '2d.x-coord/1' @ V_P_dot_1 ) @ ( $quotient @ 1.0 @ 2.0 ) )
      & ( ( '2d.x-coord/1' @ V_P_dot_1 )
       != 0.0 )
      & ( ( '2d.x-coord/1' @ V_P_dot_1 )
        = ( '2d.y-coord/1' @ V_P_dot_1 ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_OQ_min_dot_0: $real] :
      ( V_OQ_min_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 2.0 ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_P_dot_1: '2d.Point'] :
      ( V_P_dot_1
      = ( '2d.point/2' @ ( $quotient @ -1.0 @ 2.0 ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ),
    answer_to(p2_2_question,[])).

