%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2003, Science Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% Assume that the parabolas $A$: $y = x^2$ and $B$:
%% $y = -(x - a)^2 + b$ intersect with each other at different $2$
%% points $P(x_1, y_1)$, $Q(x_2, y_2)$ ( $x_1 > x_2$).
%%
%% (1) When $x_1 - x_2 = 2$ is true, represent $b$ using $a$.
%%
%% (2) When $a$ and $b$ change satisfying $x_1 - x_2 = 2$, find and draw
%% the region that the straight line $PQ$ pass through.
%%
%% (3) When $a$ and $b$ change satisfying $|\vec{PQ}| = 2$, find the
%% minimum value of the $y$ coordinate of the middle point of the line
%% segment $PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  244 (  32 equality; 111 variable)
%            Maximal formula depth :   44 (  20 average)
%            Number of connectives :  174 (   0   ~;   0   |;  31   &; 142   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   55 (   2 sgn;  10   !;  28   ?;  15   ^)
%                                         (  53   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_A: '2d.Shape',V_B: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_x1: 'R',V_y1: 'R',V_x2: 'R',V_y2: 'R'] :
        ( ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) ) )
        & ( V_B
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( '-/2' @ V_b @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ V_a ) @ 2 ) ) ) ) )
        & ( '2d.intersect/3' @ V_A @ V_B @ V_P )
        & ( '2d.intersect/3' @ V_A @ V_B @ V_Q )
        & ( V_P
          = ( '2d.point/2' @ V_x1 @ V_y1 ) )
        & ( V_Q
          = ( '2d.point/2' @ V_x2 @ V_y2 ) )
        & ( '>/2' @ V_x1 @ V_x2 )
        & ( 2
          = ( '-/2' @ V_x1 @ V_x2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_A: '2d.Shape'] :
        ( ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_1 )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_1 ) @ 2 ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_a: 'R',V_b: 'R',V_B: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_x1: 'R',V_y1: 'R',V_x2: 'R',V_y2: 'R'] :
                ( ( '2d.on/2' @ V_p @ ( '2d.line/2' @ V_P @ V_Q ) )
                & ( V_B
                  = ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p_dot_0: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_p_dot_0 )
                        = ( '-/2' @ V_b @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ V_a ) @ 2 ) ) ) ) )
                & ( '2d.intersect/3' @ V_A @ V_B @ V_P )
                & ( '2d.intersect/3' @ V_A @ V_B @ V_Q )
                & ( V_P
                  = ( '2d.point/2' @ V_x1 @ V_y1 ) )
                & ( V_Q
                  = ( '2d.point/2' @ V_x2 @ V_y2 ) )
                & ( '>/2' @ V_x1 @ V_x2 )
                & ( 2
                  = ( '-/2' @ V_x1 @ V_x2 ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_y_min: 'R'] :
      ? [V_A: '2d.Shape',V_a: 'R',V_b: 'R',V_B: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_x1: 'R',V_y1: 'R',V_x2: 'R',V_y2: 'R'] :
        ( ( V_A
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_1 )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_1 ) @ 2 ) ) ) )
        & ( V_B
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '-/2' @ V_b @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ V_a ) @ 2 ) ) ) ) )
        & ( '2d.intersect/3' @ V_A @ V_B @ V_P )
        & ( '2d.intersect/3' @ V_A @ V_B @ V_Q )
        & ( V_P
          = ( '2d.point/2' @ V_x1 @ V_y1 ) )
        & ( V_Q
          = ( '2d.point/2' @ V_x2 @ V_y2 ) )
        & ( '>/2' @ V_x1 @ V_x2 )
        & ( ( '2d.distance/2' @ V_P @ V_Q )
          = 2 )
        & ( V_y_min
          = ( '2d.y-coord/1' @ ( '2d.midpoint-of/2' @ V_P @ V_Q ) ) )
        & ! [V_a2: 'R',V_b2: 'R',V_B2: '2d.Shape',V_P2: '2d.Point',V_Q2: '2d.Point',V_y_im: 'R',V_x12: 'R',V_y12: 'R',V_x22: 'R',V_y22: 'R'] :
            ( ( ( V_B2
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( ( '2d.y-coord/1' @ V_p )
                      = ( '-/2' @ V_b2 @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ V_a2 ) @ 2 ) ) ) ) )
              & ( '2d.intersect/3' @ V_A @ V_B2 @ V_P2 )
              & ( '2d.intersect/3' @ V_A @ V_B2 @ V_Q2 )
              & ( V_P2
                = ( '2d.point/2' @ V_x12 @ V_y12 ) )
              & ( V_Q2
                = ( '2d.point/2' @ V_x22 @ V_y22 ) )
              & ( '>/2' @ V_x12 @ V_x22 )
              & ( ( '2d.distance/2' @ V_P2 @ V_Q2 )
                = 2 )
              & ( V_y_im
                = ( '2d.y-coord/1' @ ( '2d.midpoint-of/2' @ V_P2 @ V_Q2 ) ) ) )
           => ( '<=/2' @ V_y_min @ V_y_im ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( V_b_dot_0
      = ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_D_dot_0: '2d.Shape'] :
      ( V_D_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P_dot_0: '2d.Point'] :
            ( '<=/2' @ ( '2d.y-coord/1' @ V_P_dot_0 ) @ ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ 2 ) @ 1 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_y_min_dot_0: 'R'] :
      ( V_y_min_dot_0
      = ( '//2' @ 3 @ 4 ) ) ),
    answer_to(p3_question,[])).
