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

% Syntax   : Number of formulae    :    7 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  210 (  14 equality;  65 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :  181 (   4   ~;   0   |;  29   &; 147   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   2   :;   0   =)
%            Number of variables   :   25 (   0 sgn;   7   !;  12   ?;   6   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('x0/0_type',type,(
    'x0/0': $real )).

thf('y0/0_type',type,(
    'y0/0': $real )).

thf(a1_1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_l: '2d.Shape',V_m: '2d.Shape',V_s: '2d.Point',V_t: '2d.Point'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( V_s != V_t )
        & ( '2d.tangent/3' @ V_l @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ V_s )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ V_t )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x0/0' @ 'y0/0' ) @ V_l )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x0/0' @ 'y0/0' ) @ V_m )
        & ( $less @ 1.0 @ ( $sum @ ( '^/2' @ 'x0/0' @ 2.0 ) @ ( '^/2' @ 'y0/0' @ 2.0 ) ) )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_s @ V_t ) ) ) )).

thf(a1_2,conjecture,(
    ! [V_l: '2d.Shape',V_m: '2d.Shape',V_s: '2d.Point',V_t: '2d.Point',V_Q: '2d.Point',V_x0: $real,V_y0: $real] :
      ( ( ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( V_s != V_t )
        & ( '2d.tangent/3' @ V_l @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ V_s )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ V_t )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_l )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_m )
        & ( $less @ 1.0 @ ( $sum @ ( '^/2' @ V_x0 @ 2.0 ) @ ( '^/2' @ V_y0 @ 2.0 ) ) )
        & ( V_Q
          = ( '2d.midpoint-of/2' @ V_s @ V_t ) ) )
     => ( 1.0
        = ( $product @ ( '2d.distance/2' @ '2d.origin/0' @ V_Q ) @ ( '2d.distance/2' @ '2d.origin/0' @ ( '2d.point/2' @ V_x0 @ V_y0 ) ) ) ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_l: '2d.Shape',V_m: '2d.Shape',V_s: '2d.Point',V_t: '2d.Point',V_x0: $real,V_y0: $real] :
              ( ( '2d.line-type/1' @ V_l )
              & ( '2d.line-type/1' @ V_m )
              & ( V_s != V_t )
              & ( '2d.tangent/3' @ V_l @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ V_s )
              & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) @ V_t )
              & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_l )
              & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_m )
              & ( $less @ 1.0 @ ( $sum @ ( '^/2' @ V_x0 @ 2.0 ) @ ( '^/2' @ V_y0 @ 2.0 ) ) )
              & ( V_p
                = ( '2d.midpoint-of/2' @ V_s @ V_t ) )
              & ( 2.0
                = ( $sum @ V_x0 @ V_y0 ) ) ) ) ) )).

thf(a1_1_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
    ? [V_Q1: $real,V_Q2: $real] :
      ( ( V_Q1
        = ( $quotient @ 'x0/0' @ ( $sum @ ( '^/2' @ 'x0/0' @ 2.0 ) @ ( '^/2' @ 'y0/0' @ 2.0 ) ) ) )
      & ( V_Q2
        = ( $quotient @ 'y0/0' @ ( $sum @ ( '^/2' @ 'x0/0' @ 2.0 ) @ ( '^/2' @ 'y0/0' @ 2.0 ) ) ) )
      & ( V_Q_dot_0
        = ( '2d.point/2' @ V_Q1 @ V_Q2 ) )
      & ( $less @ 1.0 @ ( $sum @ ( '^/2' @ 'x0/0' @ 2.0 ) @ ( '^/2' @ 'y0/0' @ 2.0 ) ) ) ) ),
    answer_to(a1_1_question,[])).

thf(a2_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ ( '2d.point/2' @ ( $quotient @ 1.0 @ 4.0 ) @ ( $quotient @ 1.0 @ 4.0 ) ) @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ) )
            & ( V_P != '2d.origin/0' ) ) ) ) ),
    answer_to(a2_question,[])).

