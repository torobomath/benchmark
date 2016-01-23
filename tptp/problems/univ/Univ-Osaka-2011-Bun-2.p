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
%            Number of atoms       :  272 (  16 equality;  85 variable)
%            Maximal formula depth :   25 (  16 average)
%            Number of connectives :  237 (   2   ~;   0   |;  30   &; 203   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   40 (   0   :)
%            Number of variables   :   41 (   0 sgn;   9   !;  16   ?;  16   ^)
%                                         (  41   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_pq: 'ListOf' @ 'R'] :
      ? [V_p: 'R',V_q: 'R',V_f: 'R2R'] :
        ( ( V_pq
          = ( 'cons/2' @ V_p @ ( 'cons/2' @ V_q @ 'nil/0' ) ) )
        & ( V_f
          = ( 'fun/1'
            @ ^ [V_x: 'R'] :
                ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ V_p ) @ 2 ) @ V_q ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ ( '2d.graph-of/1' @ V_f ) )
        & ? [V_P: '2d.Point'] :
            ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_P ) )
            & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ V_f ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) @ V_P ) ) ) )).

thf(p2,conjecture,(
    ! [V_p1: 'R',V_q1: 'R',V_p2: 'R',V_q2: 'R',V_f1: 'R2R',V_f2: 'R2R',V_alpha: 'R',V_beta: 'R'] :
      ( ( ( V_f1
          = ( 'fun/1'
            @ ^ [V_x_dot_0: 'R'] :
                ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ V_p1 ) @ 2 ) @ V_q1 ) ) )
        & ( V_f2
          = ( 'fun/1'
            @ ^ [V_x: 'R'] :
                ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ V_p2 ) @ 2 ) @ V_q2 ) ) )
        & ( '</2' @ V_alpha @ V_beta )
        & ( '</2' @ ( 'funapp/2' @ V_f1 @ V_alpha ) @ ( 'funapp/2' @ V_f2 @ V_alpha ) )
        & ( '</2' @ ( 'funapp/2' @ V_f1 @ V_beta ) @ ( 'funapp/2' @ V_f2 @ V_beta ) ) )
     => ! [V_x_dot_1: 'R'] :
          ( ( ( '<=/2' @ V_alpha @ V_x_dot_1 )
            & ( '<=/2' @ V_x_dot_1 @ V_beta ) )
         => ( '</2' @ ( 'funapp/2' @ V_f1 @ V_x_dot_1 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_1 ) ) ) ) )).

thf(p3_1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_S: '2d.Shape'] :
      ? [V_R: '2d.Shape',V_T: '2d.Shape',V_L: '2d.Shape'] :
        ( ( V_R
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
                & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1 )
                & ( '<=/2' @ 0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 2 ) ) ) )
        & ( V_L
          = ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0 @ 1 ) @ ( '2d.point/2' @ 0 @ 0 ) ) @ ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 1 ) ) @ ( '2d.seg/2' @ ( '2d.point/2' @ 1 @ 1 ) @ ( '2d.point/2' @ 1 @ 0 ) ) ) ) )
        & ( V_T
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_p: 'R',V_q: 'R',V_f: 'R2R'] :
                ( ( V_f
                  = ( 'fun/1'
                    @ ^ [V_x: 'R'] :
                        ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ V_p ) @ 2 ) @ V_q ) ) )
                & ~ ( '2d.intersect/2' @ ( '2d.graph-of/1' @ V_f ) @ V_L )
                & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ V_f ) )
                & ( '2d.on/2' @ V_P @ V_R ) ) ) )
        & ( V_S
          = ( '2d.shape-/2' @ V_R @ V_T ) ) ) )).

thf(p3_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_R: '2d.Shape',V_T: '2d.Shape',V_L: '2d.Shape'] :
        ( ( V_R
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
                & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1 )
                & ( '<=/2' @ 0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 2 ) ) ) )
        & ( V_L
          = ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0 @ 1 ) @ ( '2d.point/2' @ 0 @ 0 ) ) @ ( '2d.union/2' @ ( '2d.seg/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 1 ) ) @ ( '2d.seg/2' @ ( '2d.point/2' @ 1 @ 1 ) @ ( '2d.point/2' @ 1 @ 0 ) ) ) ) )
        & ( V_T
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_p: 'R',V_q: 'R',V_f: 'R2R'] :
                ( ( V_f
                  = ( 'fun/1'
                    @ ^ [V_x_dot_0: 'R'] :
                        ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ V_p ) @ 2 ) @ V_q ) ) )
                & ~ ( '2d.intersect/2' @ ( '2d.graph-of/1' @ V_f ) @ V_L )
                & ( '2d.on/2' @ V_P @ ( '2d.graph-of/1' @ V_f ) )
                & ( '2d.on/2' @ V_P @ V_R ) ) ) )
        & ( V_x
          = ( '2d.area-of/1' @ ( '2d.shape-/2' @ V_R @ V_T ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_pq_dot_0: 'ListOf' @ 'R'] :
      ( V_pq_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ 3 @ 4 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p3_1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y: 'R'] :
        ( ( '<=/2' @ 0 @ V_x_dot_0 )
        & ( '<=/2' @ V_x_dot_0 @ 1 )
        & ( '<=/2' @ 0 @ V_y )
        & ( '<=/2' @ V_y @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '-/1' @ V_x_dot_0 ) ) @ 1 ) ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_x_dot_1: 'R'] :
      ( V_x_dot_1
      = ( '//2' @ 5 @ 6 ) ) ),
    answer_to(p3_2_question,[])).
