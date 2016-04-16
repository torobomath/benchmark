%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2003, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-30
%%
%% <PROBLEM-TEXT>
%% Consider the parabola $C$: $y = a x^2$ ( $a > 0$). Let $l$ be the
%% straight line passing through $P$ and orthogonal to the tangent to
%% the parabola $C$ at the point $P(p, a p^2)$ ( $p\not= 0$). Let $S(P)$
%% be the area of the region enclosed by the straight line $l$ and the
%% parabola $C$.
%%
%% (1) Find the equation of the straight line $l$.
%%
%% (2) Move the point $P$ in the range of $p > 0$. Then, find the
%% minimum value of $S(P)$ and the inclination $m$ of the straight line
%% $l$ at that time.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   13 (   0 unit;   7 type;   0 defn)
%            Number of atoms       :  261 (  16 equality;  54 variable)
%            Maximal formula depth :   30 (   9 average)
%            Number of connectives :  225 (   2   ~;   0   |;  38   &; 185   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   41 (   7   :;   0   =)
%            Number of variables   :   23 (   1 sgn;   0   !;  14   ?;   9   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('P/0_type',type,(
    'P/0': '2d.Point' )).

thf('a/0_type',type,(
    'a/0': $real )).

thf('l/0_type',type,(
    'l/0': '2d.Shape' )).

thf('l2/0_type',type,(
    'l2/0': '2d.Shape' )).

thf('min-sp/0_type',type,(
    'min-sp/0': $real )).

thf('min_sp/0_type',type,(
    'min_sp/0': $real )).

thf('p/0_type',type,(
    'p/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_l: '2d.Shape'] :
      ? [V_P: '2d.Point',V_C: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l2 )
        & ( '2d.line-type/1' @ V_l )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( $less @ 0.0 @ 'a/0' )
        & ( V_P
          = ( '2d.point/2' @ 'p/0' @ ( $product @ 'a/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) ) )
        & ( 'p/0' != 0.0 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_P )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.perpendicular/2' @ V_l @ V_l2 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_min_sp: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_sp: $real] :
            ? [V_l2: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point',V_C: '2d.Shape',V_p: $real] :
              ( ( '2d.line-type/1' @ V_l2 )
              & ( '2d.line-type/1' @ V_l )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( $less @ 0.0 @ 'a/0' )
              & ( V_P
                = ( '2d.point/2' @ V_p @ ( $product @ 'a/0' @ ( '^/2' @ V_p @ 2.0 ) ) ) )
              & ( $greater @ V_p @ 0.0 )
              & ( '2d.tangent/3' @ V_C @ V_l2 @ V_P )
              & ( '2d.on/2' @ V_P @ V_l )
              & ( '2d.perpendicular/2' @ V_l @ V_l2 )
              & ( V_sp
                = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )
        @ 'min-sp/0' ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_C: '2d.Shape',V_min_sp: $real] :
        ( ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_sp: $real] :
              ? [V_l2_dot_0: '2d.Shape',V_l_dot_0: '2d.Shape',V_P_dot_0: '2d.Point',V_p_dot_0: $real] :
                ( ( '2d.line-type/1' @ V_l2_dot_0 )
                & ( '2d.line-type/1' @ V_l_dot_0 )
                & ( $less @ 0.0 @ 'a/0' )
                & ( V_P_dot_0
                  = ( '2d.point/2' @ V_p_dot_0 @ ( $product @ 'a/0' @ ( '^/2' @ V_p_dot_0 @ 2.0 ) ) ) )
                & ( $greater @ V_p_dot_0 @ 0.0 )
                & ( '2d.tangent/3' @ V_C @ V_l2_dot_0 @ V_P_dot_0 )
                & ( '2d.on/2' @ V_P_dot_0 @ V_l_dot_0 )
                & ( '2d.perpendicular/2' @ V_l_dot_0 @ V_l2_dot_0 )
                & ( V_sp
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_l_dot_0 @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )
          @ V_min_sp )
        & ( '2d.line-type/1' @ 'l2/0' )
        & ( '2d.line-type/1' @ 'l/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( 'P/0'
          = ( '2d.point/2' @ 'p/0' @ ( $product @ 'a/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) ) )
        & ( $greater @ 'p/0' @ 0.0 )
        & ( '2d.tangent/3' @ V_C @ 'l2/0' @ 'P/0' )
        & ( '2d.on/2' @ 'P/0' @ 'l/0' )
        & ( '2d.perpendicular/2' @ 'l/0' @ 'l2/0' )
        & ( 'min_sp/0'
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ 'l/0' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( '2d.is-slope-of/2' @ V_m @ 'l/0' ) ) )).

thf(p1_answer,answer,(
    ^ [V_l_dot_0: '2d.Shape'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( 'p/0' != 0.0 )
      & ( V_l_dot_0
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P_dot_0: '2d.Point'] :
              ( ( '2d.y-coord/1' @ V_P_dot_0 )
              = ( $sum @ ( $product @ ( $uminus @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ ( $product @ 'a/0' @ 'p/0' ) ) ) ) @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) @ ( $sum @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ 'a/0' ) ) @ ( $product @ 'a/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans: $real] :
      ( V_ans
      = ( $quotient @ 4.0 @ ( $product @ 3.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_ans: $real] : ( V_ans = -1.0 ) ),
    answer_to(p3_question,[])).

