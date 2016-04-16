%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2013, Humanities Course, Problem 4
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-09-26
%%
%% <PROBLEM-TEXT>
%% When the real number $t$ satisfies $0\le t < 8$, consider the point
%% $P(t, t^3-8 t^2+15 t-56)$.
%%
%% (1) Prove that two different tangents can be drawn from the point $P$
%% to the parabola $y = x^2$.
%%
%% (2) Let $Q$ and $R$ be the points of contact between the two tangents
%% described in (1). Represent the area $S(t)$ of the region enclosed by
%% the line segments $PQ$, $PR$, and the parabola $y = x^2$ using $t$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  183 (  13 equality;  51 variable)
%            Maximal formula depth :   31 (  16 average)
%            Number of connectives :  155 (   1   ~;   0   |;  23   &; 130   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   1   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   3   !;  12   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   2 pred;    5 func;    8 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1,conjecture,(
    ! [V_t: $real,V_P: '2d.Point',V_f: '2d.Shape'] :
      ( ( ( $lesseq @ 0.0 @ V_t )
        & ( $less @ V_t @ 8.0 )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( $difference @ ( $sum @ ( $difference @ ( '^/2' @ V_t @ 3.0 ) @ ( $product @ 8.0 @ ( '^/2' @ V_t @ 2.0 ) ) ) @ ( $product @ 15.0 @ V_t ) ) @ 56.0 ) ) )
        & ( V_f
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
     => ? [V_Q: '2d.Point',V_R: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
          ( ( '2d.on/2' @ V_Q @ V_f )
          & ( '2d.on/2' @ V_R @ V_f )
          & ( V_l1
            = ( '2d.line/2' @ V_P @ V_Q ) )
          & ( V_l2
            = ( '2d.line/2' @ V_P @ V_R ) )
          & ( V_Q != V_R )
          & ( '2d.tangent/2' @ V_f @ V_l1 )
          & ( '2d.tangent/2' @ V_f @ V_l2 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_P: '2d.Point',V_f: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape',V_PR: '2d.Shape',V_PQ: '2d.Shape'] :
        ( ( $lesseq @ 0.0 @ 't/0' )
        & ( $less @ 't/0' @ 8.0 )
        & ( V_P
          = ( '2d.point/2' @ 't/0' @ ( $difference @ ( $sum @ ( $difference @ ( '^/2' @ 't/0' @ 3.0 ) @ ( $product @ 8.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) ) @ ( $product @ 15.0 @ 't/0' ) ) @ 56.0 ) ) )
        & ( V_f
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_f )
        & ( '2d.on/2' @ V_R @ V_f )
        & ( V_l1
          = ( '2d.line/2' @ V_P @ V_Q ) )
        & ( V_l2
          = ( '2d.line/2' @ V_P @ V_R ) )
        & ( V_PR
          = ( '2d.seg/2' @ V_P @ V_R ) )
        & ( V_PQ
          = ( '2d.seg/2' @ V_P @ V_Q ) )
        & ( '2d.tangent/2' @ V_f @ V_l1 )
        & ( '2d.tangent/2' @ V_f @ V_l2 )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ V_PR @ ( 'cons/2' @ '2d.Shape' @ V_PQ @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ 't/0' )
      & ( $less @ 't/0' @ 8.0 )
      & ( V_S_dot_0
        = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ ( '^/2' @ ( $uminus @ ( $product @ ( $difference @ 't/0' @ 8.0 ) @ ( $sum @ ( '^/2' @ 't/0' @ 2.0 ) @ ( $sum @ ( $uminus @ 't/0' ) @ 7.0 ) ) ) ) @ ( $quotient @ 3.0 @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

