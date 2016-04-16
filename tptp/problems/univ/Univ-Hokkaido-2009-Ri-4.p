%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2009, Science Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-30
%%
%% <PROBLEM-TEXT>
%% Let $0 < a < 1$ and $0 < {\theta} < {\pi}$. Assume that the points
%% $O(0, 0)$, $A(a, 0)$, $P(\cos {\theta}, \sin {\theta})$, and
%% $Q(x, y)$ satisfy the condition $OQ = AQ = PQ$. Answer the following
%% questions:
%%
%% (1) Represent the coordinates of the point $Q$ using $a$ and
%% ${\theta}$.
%%
%% (2) Fix $a$. When ${\theta}$ moves in the range
%% $0 < {\theta} < {\pi}$, find the minimum value of $y$.
%% </PROBLEM-TEXT>
%#250

% Syntax   : Number of formulae    :   11 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  356 (  34 equality;  65 variable)
%            Maximal formula depth :   30 (  14 average)
%            Number of connectives :  280 (   0   ~;   0   |;  61   &; 219   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   3   :;   0   =)
%            Number of variables   :   29 (   0 sgn;   0   !;  20   ?;   9   ^)
%                                         (  29   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    5 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('s/0_type',type,(
    's/0': $real )).

thf(p1_rcf_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( $less @ 0.0 @ 's/0' )
        & ( $less @ 's/0' @ 1.0 )
        & ( $less @ ( $uminus @ 1.0 ) @ 'c/0' )
        & ( $less @ 'c/0' @ 1.0 )
        & ( V_O
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_A
          = ( '2d.point/2' @ 'a/0' @ 0.0 ) )
        & ( V_P
          = ( '2d.point/2' @ 'c/0' @ 's/0' ) )
        & ( ( '2d.distance/2' @ V_O @ V_Q )
          = ( '2d.distance/2' @ V_A @ V_Q ) )
        & ( ( '2d.distance/2' @ V_A @ V_Q )
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( 1.0
          = ( $sum @ ( '^/2' @ 's/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) ) )).

thf(p1_1_rcf_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Qx: $real] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_Qy: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( $less @ 0.0 @ 's/0' )
        & ( $less @ ( $uminus @ 1.0 ) @ 'c/0' )
        & ( $less @ 'c/0' @ 1.0 )
        & ( V_O
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_A
          = ( '2d.point/2' @ 'a/0' @ 0.0 ) )
        & ( V_P
          = ( '2d.point/2' @ 'c/0' @ 's/0' ) )
        & ( V_Q
          = ( '2d.point/2' @ V_Qx @ V_Qy ) )
        & ( ( '2d.distance/2' @ V_O @ V_Q )
          = ( '2d.distance/2' @ V_A @ V_Q ) )
        & ( ( '2d.distance/2' @ V_A @ V_Q )
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( 1.0
          = ( $sum @ ( '^/2' @ 's/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) ) )).

thf(p1_2_rcf_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Qy: $real] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_Qx: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 1.0 )
        & ( $less @ 0.0 @ 's/0' )
        & ( $less @ ( $uminus @ 1.0 ) @ 'c/0' )
        & ( $less @ 'c/0' @ 1.0 )
        & ( V_O
          = ( '2d.point/2' @ 0.0 @ 0.0 ) )
        & ( V_A
          = ( '2d.point/2' @ 'a/0' @ 0.0 ) )
        & ( V_P
          = ( '2d.point/2' @ 'c/0' @ 's/0' ) )
        & ( V_Q
          = ( '2d.point/2' @ V_Qx @ V_Qy ) )
        & ( ( '2d.distance/2' @ V_O @ V_Q )
          = ( '2d.distance/2' @ V_A @ V_Q ) )
        & ( ( '2d.distance/2' @ V_A @ V_Q )
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( 1.0
          = ( $sum @ ( '^/2' @ 's/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) ) )).

thf(p2_rcf_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ymin: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_y: $real] :
            ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_x: $real,V_c: $real,V_s: $real] :
              ( ( $less @ 0.0 @ 'a/0' )
              & ( $less @ 'a/0' @ 1.0 )
              & ( $less @ 0.0 @ V_s )
              & ( $less @ ( $uminus @ 1.0 ) @ V_c )
              & ( $less @ V_c @ 1.0 )
              & ( V_O
                = ( '2d.point/2' @ 0.0 @ 0.0 ) )
              & ( V_A
                = ( '2d.point/2' @ 'a/0' @ 0.0 ) )
              & ( V_P
                = ( '2d.point/2' @ V_c @ V_s ) )
              & ( V_Q
                = ( '2d.point/2' @ V_x @ V_y ) )
              & ( ( '2d.distance/2' @ V_O @ V_Q )
                = ( '2d.distance/2' @ V_A @ V_Q ) )
              & ( ( '2d.distance/2' @ V_O @ V_Q )
                = ( '2d.distance/2' @ V_P @ V_Q ) )
              & ( 1.0
                = ( $sum @ ( '^/2' @ V_s @ 2.0 ) @ ( '^/2' @ V_c @ 2.0 ) ) ) ) )
        @ V_ymin ) )).

thf(p1_rcf_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
      ( ( 1.0
        = ( $sum @ ( '^/2' @ 's/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( $less @ 0.0 @ 's/0' )
      & ( $less @ 's/0' @ 1.0 )
      & ( V_Q_dot_0
        = ( '2d.point/2' @ ( $quotient @ 'a/0' @ 2.0 ) @ ( $quotient @ ( $difference @ 1.0 @ ( $product @ 'a/0' @ 'c/0' ) ) @ ( $product @ 2.0 @ 's/0' ) ) ) ) ) ),
    answer_to(p1_rcf_question,[])).

thf(p1_1_rcf_answer,answer,(
    ^ [V_Qx_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( $less @ ( $uminus @ 1.0 ) @ 'c/0' )
      & ( $less @ 'c/0' @ 1.0 )
      & ( 's/0'
        = ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) )
      & ( V_Qx_dot_0
        = ( $quotient @ 'a/0' @ 2.0 ) ) ) ),
    answer_to(p1_1_rcf_question,[])).

thf(p1_2_rcf_answer,answer,(
    ^ [V_Qy_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( $less @ ( $uminus @ 1.0 ) @ 'c/0' )
      & ( $less @ 'c/0' @ 1.0 )
      & ( 's/0'
        = ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) )
      & ( V_Qy_dot_0
        = ( $quotient @ ( $difference @ 1.0 @ ( $product @ 'a/0' @ 'c/0' ) ) @ ( $product @ 2.0 @ 's/0' ) ) ) ) ),
    answer_to(p1_2_rcf_question,[])).

thf(p2_rcf_answer,answer,(
    ^ [V_ymin_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( V_ymin_dot_0
        = ( $quotient @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) @ 2.0 ) ) ) ),
    answer_to(p2_rcf_question,[])).

