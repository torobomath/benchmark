%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2011, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% For the pair of real numbers $(p, q)$, define $f(x)=(x - p)^2 + q$.
%%
%% (1) Assuming that the parabola $y = f(x)$ passes through the point
%% $(0, 1)$ and is in contact with the straight line $y = x$ in the
%% region of $x > 0$, find the pair of real numbers $(p, q)$ and the
%% coordinates of the point of contact.
%%
%% (2) For the pairs of real numbers $(p_1, q_1)$ and $(p_2, q_2)$,
%% define $f_1(x)=(x - p_1)^2 + q_1$ and $f_2(x)=(x - p_2)^2 + q_2$.
%% Assuming that $f_1({\alpha})< f_2({\alpha})$ and
%% $f_1({\beta})< f_2({\beta})$ are true for the real numbers ${\alpha}$
%% and ${\beta}$, where ${\alpha} < {\beta}$, prove that the inequality
%% $f_1(x)< f_2(x)$ is always true in the interval
%% ${\alpha}\le x\le {\beta}$.
%%
%% (3) Consider the rectangle $R : 0\le x\le 1$, $0\le y\le 2$. Let $L$
%% be the polygonal line obtained by connecting the points $P_1(0, 1)$,
%% $P_1(0, 0)$, $P_2(1, 1)$, and $P_3(1, 0)$ with line segments in this
%% order. Move the pair of real numbers $(p, q)$ across all the pairs
%% provided that there are no common points between the parabola
%% $y = f(x)$ and the polygonal line $L$, then let $T$ be the set of all
%% the points that the polygonal line $L$ passes through among the
%% points belonging to $R$. Draw the region $S$ obtained by excluding
%% $T$ from $R$ on the coordinate plane, and find the area of the
%% region.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  282 (  16 equality;  85 variable)
%            Maximal formula depth :   25 (  16 average)
%            Number of connectives :  247 (   2   ~;   0   |;  30   &; 213   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   40 (   0   :;   0   =)
%            Number of variables   :   41 (   0 sgn;   9   !;  16   ?;  16   ^)
%                                         (  41   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    4 func;    7 numbers)

include('axioms.ax').

thf(p1_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_pq: ( 'ListOf' @ $real )] :
      ? [V_p: $real,V_q: $real,V_f: 'R2R'] :
        ( ( V_pq
          = ( 'cons/2' @ $real @ V_p @ ( 'cons/2' @ $real @ V_q @ ( 'nil/0' @ $real ) ) ) )
        & ( V_f
          = ( 'fun/1'
            @ ^ [V_x: $real] :
                ( $sum @ ( '^/2' @ ( $difference @ V_x @ V_p ) @ 2.0 ) @ V_q ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ ( '2d.graph-of/1' @ V_f ) )
        & ? [V_P: '2d.Point'] :
            ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P ) )
            & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ V_f ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) @ V_P ) ) ) )).

thf(p2,conjecture,(
    ! [V_p1: $real,V_q1: $real,V_p2: $real,V_q2: $real,V_f1: 'R2R',V_f2: 'R2R',V_alpha: $real,V_beta: $real] :
      ( ( ( V_f1
          = ( 'fun/1'
            @ ^ [V_x_dot_0: $real] :
                ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ V_p1 ) @ 2.0 ) @ V_q1 ) ) )
        & ( V_f2
          = ( 'fun/1'
            @ ^ [V_x: $real] :
                ( $sum @ ( '^/2' @ ( $difference @ V_x @ V_p2 ) @ 2.0 ) @ V_q2 ) ) )
        & ( $less @ V_alpha @ V_beta )
        & ( $less @ ( 'funapp/2' @ V_f1 @ V_alpha ) @ ( 'funapp/2' @ V_f2 @ V_alpha ) )
        & ( $less @ ( 'funapp/2' @ V_f1 @ V_beta ) @ ( 'funapp/2' @ V_f2 @ V_beta ) ) )
     => ! [V_x_dot_1: $real] :
          ( ( ( $lesseq @ V_alpha @ V_x_dot_1 )
            & ( $lesseq @ V_x_dot_1 @ V_beta ) )
         => ( $less @ ( 'funapp/2' @ V_f1 @ V_x_dot_1 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_1 ) ) ) ) )).

thf(p3_1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_S: '2d.Shape'] :
      ? [V_R: '2d.Shape',V_T: '2d.Shape',V_L: '2d.Shape'] :
        ( ( V_R
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1.0 )
                & ( $lesseq @ 0.0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) ) )
        & ( V_L
          = ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) @ ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) @ ( '2d.seg/2' @ ( '2d.point/2' @ 1.0 @ 1.0 ) @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) ) )
        & ( V_T
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_p: $real,V_q: $real,V_f: 'R2R'] :
                ( ( V_f
                  = ( 'fun/1'
                    @ ^ [V_x: $real] :
                        ( $sum @ ( '^/2' @ ( $difference @ V_x @ V_p ) @ 2.0 ) @ V_q ) ) )
                & ~ ( '2d.intersect/2' @ ( '2d.graph-of/1' @ V_f ) @ V_L )
                & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ V_f ) )
                & ( '2d.on/2' @ V_P @ V_R ) ) ) )
        & ( V_S
          = ( '2d.shape-/2' @ V_R @ V_T ) ) ) )).

thf(p3_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_R: '2d.Shape',V_T: '2d.Shape',V_L: '2d.Shape'] :
        ( ( V_R
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1.0 )
                & ( $lesseq @ 0.0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) ) )
        & ( V_L
          = ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ ( '2d.point/2' @ 0.0 @ 0.0 ) ) @ ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) @ ( '2d.seg/2' @ ( '2d.point/2' @ 1.0 @ 1.0 ) @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) ) )
        & ( V_T
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_p: $real,V_q: $real,V_f: 'R2R'] :
                ( ( V_f
                  = ( 'fun/1'
                    @ ^ [V_x_dot_0: $real] :
                        ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ V_p ) @ 2.0 ) @ V_q ) ) )
                & ~ ( '2d.intersect/2' @ ( '2d.graph-of/1' @ V_f ) @ V_L )
                & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ V_f ) )
                & ( '2d.on/2' @ V_P @ V_R ) ) ) )
        & ( V_x
          = ( '2d.area-of/1' @ ( '2d.shape-/2' @ V_R @ V_T ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_pq_dot_0: ( 'ListOf' @ $real )] :
      ( V_pq_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 4.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p3_1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y: $real] :
        ( ( $lesseq @ 0.0 @ V_x_dot_0 )
        & ( $lesseq @ V_x_dot_0 @ 1.0 )
        & ( $lesseq @ 0.0 @ V_y )
        & ( $lesseq @ V_y @ ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $uminus @ V_x_dot_0 ) ) @ 1.0 ) ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_x_dot_1: $real] :
      ( V_x_dot_1
      = ( $quotient @ 5.0 @ 6.0 ) ) ),
    answer_to(p3_2_question,[])).

