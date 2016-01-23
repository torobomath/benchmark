%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2007, Science Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-05
%%
%% <PROBLEM-TEXT>
%% When the $2$ points $P$ and $Q$ freely move on the curve $y=x^2$ (
%% $-1\le x\le 1$) on the coordinate plane, let $D$ be the moving range
%% of the point $R$ that internally divides the line segment $PQ$ in a
%% ratio of $1:2$. However, if $R=P$, assume that $R=P$.
%%
%% (1) Let $a$ be the real number that satisfies $-1\le a\le 1$, then
%% represent the condition that $b$ must satisfy in order for the point
%% $(a, b)$ to belong to $D$ using $a$.
%%
%% (2) Draw $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  350 (   6 equality;  85 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :  334 (   0   ~;   6   |;  40   &; 288   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   6   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( ( '2d.y-coord/1' @ V_p )
          = ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) )
        & ( ( '2d.y-coord/1' @ V_q )
          = ( '^/2' @ ( '2d.x-coord/1' @ V_q ) @ 2 ) )
        & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_p ) )
        & ( '<=/2' @ ( '2d.x-coord/1' @ V_p ) @ 1 )
        & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_q ) )
        & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ 1 )
        & ( '<=/2' @ -1 @ V_a )
        & ( '<=/2' @ V_a @ 1 )
        & ( '2d.divide-internally/4' @ ( '2d.point/2' @ V_a @ V_b ) @ ( '2d.seg/2' @ V_p @ V_q ) @ 1 @ 2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_y: '2d.Point'] :
            ? [V_p: '2d.Point',V_q: '2d.Point'] :
              ( ( ( '2d.y-coord/1' @ V_p )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) )
              & ( ( '2d.y-coord/1' @ V_q )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_q ) @ 2 ) )
              & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_p ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p ) @ 1 )
              & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_q ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ 1 )
              & ( '<=/2' @ -1 @ ( '2d.x-coord/1' @ V_y ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_y ) @ 1 )
              & ( '2d.divide-internally/4' @ V_y @ ( '2d.seg/2' @ V_p @ V_q ) @ 1 @ 2 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( ( ( '<=/2' @ -1 @ V_a )
        & ( '<=/2' @ V_a @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ V_a ) @ 2 ) ) ) )
      | ( ( '<=/2' @ ( '//2' @ -1 @ 3 ) @ V_a )
        & ( '<=/2' @ V_a @ 0 )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '-/1' @ V_a ) @ ( '//2' @ 1 @ 2 ) ) ) ) )
      | ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ ( '//2' @ 1 @ 3 ) )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ V_a @ ( '//2' @ 1 @ 2 ) ) ) ) )
      | ( ( '<=/2' @ ( '//2' @ 1 @ 3 ) @ V_a )
        & ( '<=/2' @ V_a @ 1 )
        & ( '<=/2' @ ( '^/2' @ V_a @ 2 ) @ V_b_dot_0 )
        & ( '<=/2' @ V_b_dot_0 @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ V_a ) ) @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: '2d.Shape'] :
      ( V_x_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( '<=/2' @ ( '-/1' @ 1 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) )
              & ( '<=/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ 2 ) ) ) )
            | ( ( '<=/2' @ ( '-/1' @ ( '//2' @ 1 @ 3 ) ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 0 )
              & ( '<=/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '//2' @ 1 @ 2 ) ) ) ) )
            | ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( '//2' @ 1 @ 3 ) )
              & ( '<=/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ ( '+/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( '//2' @ 1 @ 2 ) ) ) ) )
            | ( ( '<=/2' @ ( '//2' @ 1 @ 3 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1 )
              & ( '<=/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) @ 2 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).
