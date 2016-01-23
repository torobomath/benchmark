%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Science Course, Problem 4a
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-23
%%
%% <PROBLEM-TEXT>
%% (a) Draw $2$ tangents to the circle with the center at the origin
%% $O(0, 0)$ and the radius $1$ from the point $P(x_0, y_0)$ outside the
%% circle.
%%
%% (1) Let $Q$ be the midpoint of the $2$ contact points, then represent
%% the coordinates $(x_1, y_1)$ of the point $Q$ using the coordinates
%% $(x_0, y_0)$ of the point $P$. Also, prove that $OP\cdot OQ = 1$.
%%
%% (2) When the point $P$ moves on the straight line $x + y = 2$, find
%% the locus of the point $Q$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  208 (  14 equality;  79 variable)
%            Maximal formula depth :   25 (  18 average)
%            Number of connectives :  179 (   4   ~;   0   |;  29   &; 145   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   29 (   0 sgn;   7   !;  12   ?;   6   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_l: '2d.Shape',V_m: '2d.Shape',V_s: '2d.Point',V_t: '2d.Point'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( V_s != V_t )
        & ( '2d.tangent/3' @ V_l @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ V_s )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ V_t )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_l )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_m )
        & ( '</2' @ 1 @ ( '+/2' @ ( '^/2' @ V_x0 @ 2 ) @ ( '^/2' @ V_y0 @ 2 ) ) )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_s @ V_t ) ) ) )).

thf(p2,conjecture,(
    ! [V_l: '2d.Shape',V_m: '2d.Shape',V_s: '2d.Point',V_t: '2d.Point',V_Q: '2d.Point',V_x0: 'R',V_y0: 'R'] :
      ( ( ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( V_s != V_t )
        & ( '2d.tangent/3' @ V_l @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ V_s )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ V_t )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_l )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_m )
        & ( '</2' @ 1 @ ( '+/2' @ ( '^/2' @ V_x0 @ 2 ) @ ( '^/2' @ V_y0 @ 2 ) ) )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_s @ V_t ) ) )
     => ( 1
        = ( '*/2' @ ( '2d.distance/2' @ '2d.origin/0' @ V_Q ) @ ( '2d.distance/2' @ '2d.origin/0' @ ( '2d.point/2' @ V_x0 @ V_y0 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_l: '2d.Shape',V_m: '2d.Shape',V_s: '2d.Point',V_t: '2d.Point',V_x0: 'R',V_y0: 'R'] :
              ( ( '2d.line-type/1' @ V_l )
              & ( '2d.line-type/1' @ V_m )
              & ( V_s != V_t )
              & ( '2d.tangent/3' @ V_l @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ V_s )
              & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ '2d.origin/0' @ 1 ) @ V_t )
              & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_l )
              & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_m )
              & ( '</2' @ 1 @ ( '+/2' @ ( '^/2' @ V_x0 @ 2 ) @ ( '^/2' @ V_y0 @ 2 ) ) )
              & ( V_p
                = ( '2d.midpoint-of/2' @ V_s @ V_t ) )
              & ( 2
                = ( '+/2' @ V_x0 @ V_y0 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
    ? [V_Q1: 'R',V_Q2: 'R'] :
      ( ( V_Q1
        = ( '//2' @ V_x0 @ ( '+/2' @ ( '^/2' @ V_x0 @ 2 ) @ ( '^/2' @ V_y0 @ 2 ) ) ) )
      & ( V_Q2
        = ( '//2' @ V_y0 @ ( '+/2' @ ( '^/2' @ V_x0 @ 2 ) @ ( '^/2' @ V_y0 @ 2 ) ) ) )
      & ( V_Q_dot_0
        = ( '2d.point/2' @ V_Q1 @ V_Q2 ) )
      & ( '</2' @ 1 @ ( '+/2' @ ( '^/2' @ V_x0 @ 2 ) @ ( '^/2' @ V_y0 @ 2 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p3_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ ( '2d.point/2' @ ( '//2' @ 1 @ 4 ) @ ( '//2' @ 1 @ 4 ) ) @ ( '//2' @ 1 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) ) )
            & ( V_P != '2d.origin/0' ) ) ) ) ),
    answer_to(p3_question,[])).
