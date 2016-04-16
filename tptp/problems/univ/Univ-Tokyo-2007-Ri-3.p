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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  352 (   6 equality;  62 variable)
%            Maximal formula depth :   21 (  15 average)
%            Number of connectives :  336 (   0   ~;   6   |;  40   &; 290   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   1   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   4   ?;   6   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( ( '2d.y-coord/1' @ V_p )
          = ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) )
        & ( ( '2d.y-coord/1' @ V_q )
          = ( '^/2' @ ( '2d.x-coord/1' @ V_q ) @ 2.0 ) )
        & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_p ) )
        & ( $lesseq @ ( '2d.x-coord/1' @ V_p ) @ 1.0 )
        & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_q ) )
        & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 1.0 )
        & ( $lesseq @ -1.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 1.0 )
        & ( '2d.divide-internally/4' @ ( '2d.point/2' @ 'a/0' @ V_b ) @ ( '2d.seg/2' @ V_p @ V_q ) @ 1.0 @ 2.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_y: '2d.Point'] :
            ? [V_p: '2d.Point',V_q: '2d.Point'] :
              ( ( ( '2d.y-coord/1' @ V_p )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) )
              & ( ( '2d.y-coord/1' @ V_q )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_q ) @ 2.0 ) )
              & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_p ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_p ) @ 1.0 )
              & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_q ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 1.0 )
              & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_y ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_y ) @ 1.0 )
              & ( '2d.divide-internally/4' @ V_y @ ( '2d.seg/2' @ V_p @ V_q ) @ 1.0 @ 2.0 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( ( ( $lesseq @ -1.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ 'a/0' ) @ 2.0 ) ) ) )
      | ( ( $lesseq @ ( $quotient @ -1.0 @ 3.0 ) @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 0.0 )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $uminus @ 'a/0' ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
      | ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ ( $quotient @ 1.0 @ 3.0 ) )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ 'a/0' @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
      | ( ( $lesseq @ ( $quotient @ 1.0 @ 3.0 ) @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 1.0 )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 4.0 @ 'a/0' ) ) @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: '2d.Shape'] :
      ( V_x_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( $lesseq @ ( $uminus @ 1.0 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) )
              & ( $lesseq @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ 2.0 ) ) ) )
            | ( ( $lesseq @ ( $uminus @ ( $quotient @ 1.0 @ 3.0 ) ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 0.0 )
              & ( $lesseq @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ ( $sum @ ( $uminus @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
            | ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( $quotient @ 1.0 @ 3.0 ) )
              & ( $lesseq @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ ( $sum @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
            | ( ( $lesseq @ ( $quotient @ 1.0 @ 3.0 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1.0 )
              & ( $lesseq @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 4.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) @ 2.0 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

