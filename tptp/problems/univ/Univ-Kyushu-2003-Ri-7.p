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
%            Number of atoms       :  395 (  45 equality; 118 variable)
%            Maximal formula depth :   33 (  18 average)
%            Number of connectives :  308 (   7   ~;   0   |;  51   &; 250   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   53 (   0 sgn;   0   !;  40   ?;  12   ^)
%                                         (  52   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x_max: 'R'] :
      ? [V_A: '2d.Matrix',V_R: '2d.Point',V_x_set: 'SetOf' @ 'R'] :
        ( ( V_A
          = ( '2d.sm*/2' @ ( '//2' @ 1 @ 3 ) @ ( '2d.matrix/4' @ 2 @ -1 @ -1 @ 2 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_R ) ) )
          = ( '2d.point/2' @ 1 @ -1 ) )
        & ( 'maximum/2' @ V_x_set @ V_x_max )
        & ( V_x_set
          = ( 'set-by-def/1'
            @ ^ [V_x: 'R'] :
              ? [V_a: 'R',V_b: 'R',V_P: '2d.Point',V_B: '2d.Point',V_Q: '2d.Point'] :
                ( ( '<=/2' @ ( 'abs/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) )
                & ( '<=/2' @ ( 'abs/1' @ V_b ) @ ( '//2' @ 1 @ 2 ) )
                & ( V_P
                  = ( '2d.point/2' @ V_a @ V_b ) )
                & ( V_P != '2d.origin/0' )
                & ( V_B
                  = ( '2d.point/2' @ ( '+/2' @ 1 @ V_a ) @ ( '-/2' @ V_b @ 1 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
                  = V_B )
                & ( V_x
                  = ( '//2' @ ( '2d.distance/2' @ V_R @ V_Q ) @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) ) ) ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Matrix',V_R: '2d.Point',V_x_set: 'SetOf' @ 'R',V_a: 'R',V_b: 'R',V_B: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_A
          = ( '2d.sm*/2' @ ( '//2' @ 1 @ 3 ) @ ( '2d.matrix/4' @ 2 @ -1 @ -1 @ 2 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_R ) ) )
          = ( '2d.point/2' @ 1 @ -1 ) )
        & ( 'maximum/2' @ V_x_set @ V_x_max )
        & ( V_x_set
          = ( 'set-by-def/1'
            @ ^ [V_x: 'R'] :
              ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_P_dot_0: '2d.Point',V_B_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                ( ( '<=/2' @ ( 'abs/1' @ V_a_dot_0 ) @ ( '//2' @ 1 @ 2 ) )
                & ( '<=/2' @ ( 'abs/1' @ V_b_dot_0 ) @ ( '//2' @ 1 @ 2 ) )
                & ( V_P_dot_0
                  = ( '2d.point/2' @ V_a_dot_0 @ V_b_dot_0 ) )
                & ( V_P_dot_0 != '2d.origin/0' )
                & ( V_B_dot_0
                  = ( '2d.point/2' @ ( '+/2' @ 1 @ V_a_dot_0 ) @ ( '-/2' @ V_b_dot_0 @ 1 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q_dot_0 ) ) )
                  = V_B_dot_0 )
                & ( V_x
                  = ( '//2' @ ( '2d.distance/2' @ V_R @ V_Q_dot_0 ) @ ( '2d.distance/2' @ '2d.origin/0' @ V_P_dot_0 ) ) ) ) ) )
        & ( '<=/2' @ ( 'abs/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) )
        & ( '<=/2' @ ( 'abs/1' @ V_b ) @ ( '//2' @ 1 @ 2 ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ( V_P != '2d.origin/0' )
        & ( V_B
          = ( '2d.point/2' @ ( '+/2' @ 1 @ V_a ) @ ( '-/2' @ V_b @ 1 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
          = V_B )
        & ( V_x_max
          = ( '//2' @ ( '2d.distance/2' @ V_R @ V_Q ) @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) ) ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_OQ_min: 'R'] :
      ? [V_OQ_set: 'SetOf' @ 'R'] :
        ( ( V_OQ_set
          = ( 'set-by-def/1'
            @ ^ [V_OQ: 'R'] :
              ? [V_a: 'R',V_b: 'R',V_P: '2d.Point',V_A: '2d.Matrix',V_B: '2d.Point',V_Q: '2d.Point'] :
                ( ( '<=/2' @ ( 'abs/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) )
                & ( '<=/2' @ ( 'abs/1' @ V_b ) @ ( '//2' @ 1 @ 2 ) )
                & ( V_P
                  = ( '2d.point/2' @ V_a @ V_b ) )
                & ( V_A
                  = ( '2d.sm*/2' @ ( '//2' @ 1 @ 3 ) @ ( '2d.matrix/4' @ 2 @ -1 @ -1 @ 2 ) ) )
                & ( V_P != '2d.origin/0' )
                & ( V_B
                  = ( '2d.point/2' @ ( '+/2' @ 1 @ V_a ) @ ( '-/2' @ V_b @ 1 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
                  = V_B )
                & ( V_OQ
                  = ( '2d.distance/2' @ '2d.origin/0' @ V_Q ) ) ) ) )
        & ( 'minimum/2' @ V_OQ_set @ V_OQ_min ) ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_OQ_set: 'SetOf' @ 'R',V_OQ_min: 'R',V_a: 'R',V_b: 'R',V_A: '2d.Matrix',V_B: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_OQ_set
          = ( 'set-by-def/1'
            @ ^ [V_OQ: 'R'] :
              ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_P_dot_0: '2d.Point',V_A_dot_0: '2d.Matrix',V_B_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                ( ( '<=/2' @ ( 'abs/1' @ V_a_dot_0 ) @ ( '//2' @ 1 @ 2 ) )
                & ( '<=/2' @ ( 'abs/1' @ V_b_dot_0 ) @ ( '//2' @ 1 @ 2 ) )
                & ( V_P_dot_0
                  = ( '2d.point/2' @ V_a_dot_0 @ V_b_dot_0 ) )
                & ( V_P_dot_0 != '2d.origin/0' )
                & ( V_B_dot_0
                  = ( '2d.point/2' @ ( '+/2' @ 1 @ V_a_dot_0 ) @ ( '-/2' @ V_b_dot_0 @ 1 ) ) )
                & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A_dot_0 @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q_dot_0 ) ) )
                  = V_B_dot_0 )
                & ( V_OQ
                  = ( '2d.distance/2' @ '2d.origin/0' @ V_Q_dot_0 ) ) ) ) )
        & ( 'minimum/2' @ V_OQ_set @ V_OQ_min )
        & ( '<=/2' @ ( 'abs/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) )
        & ( '<=/2' @ ( 'abs/1' @ V_b ) @ ( '//2' @ 1 @ 2 ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ( V_A
          = ( '2d.sm*/2' @ ( '//2' @ 1 @ 3 ) @ ( '2d.matrix/4' @ 2 @ -1 @ -1 @ 2 ) ) )
        & ( V_P != '2d.origin/0' )
        & ( V_B
          = ( '2d.point/2' @ ( '+/2' @ 1 @ V_a ) @ ( '-/2' @ V_b @ 1 ) ) )
        & ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec/2' @ '2d.origin/0' @ V_Q ) ) )
          = V_B )
        & ( V_OQ_min
          = ( '2d.distance/2' @ '2d.origin/0' @ V_Q ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_xmax: 'R'] : ( V_xmax = 3 ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_P_dot_1: '2d.Point'] :
      ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ ( '2d.x-coord/1' @ V_P_dot_1 ) )
      & ( '<=/2' @ ( '2d.x-coord/1' @ V_P_dot_1 ) @ ( '//2' @ 1 @ 2 ) )
      & ( ( '2d.x-coord/1' @ V_P_dot_1 )
       != 0 )
      & ( ( '2d.x-coord/1' @ V_P_dot_1 )
        = ( '2d.y-coord/1' @ V_P_dot_1 ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_OQ_min_dot_0: 'R'] :
      ( V_OQ_min_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_P_dot_1: '2d.Point'] :
      ( V_P_dot_1
      = ( '2d.point/2' @ ( '//2' @ -1 @ 2 ) @ ( '//2' @ 1 @ 2 ) ) ) ),
    answer_to(p2_2_question,[])).
