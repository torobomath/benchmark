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

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  170 (  13 equality;  62 variable)
%            Maximal formula depth :   30 (  21 average)
%            Number of connectives :  142 (   1   ~;   0   |;  23   &; 117   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   19 (   0 sgn;   3   !;  12   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_t: 'R',V_P: '2d.Point',V_f: '2d.Shape'] :
      ( ( ( '<=/2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 8 )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( '-/2' @ ( '+/2' @ ( '-/2' @ ( '^/2' @ V_t @ 3 ) @ ( '*/2' @ 8 @ ( '^/2' @ V_t @ 2 ) ) ) @ ( '*/2' @ 15 @ V_t ) ) @ 56 ) ) )
        & ( V_f
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) )
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
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_P: '2d.Point',V_f: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape',V_PR: '2d.Shape',V_PQ: '2d.Shape'] :
        ( ( '<=/2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 8 )
        & ( V_P
          = ( '2d.point/2' @ V_t @ ( '-/2' @ ( '+/2' @ ( '-/2' @ ( '^/2' @ V_t @ 3 ) @ ( '*/2' @ 8 @ ( '^/2' @ V_t @ 2 ) ) ) @ ( '*/2' @ 15 @ V_t ) ) @ 56 ) ) )
        & ( V_f
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
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
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ V_PR @ ( 'cons/2' @ V_PQ @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_t )
      & ( '</2' @ V_t @ 8 )
      & ( V_S_dot_0
        = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( '^/2' @ ( '-/1' @ ( '*/2' @ ( '-/2' @ V_t @ 8 ) @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ ( '+/2' @ ( '-/1' @ V_t ) @ 7 ) ) ) ) @ ( '//2' @ 3 @ 2 ) ) ) ) ) ),
    answer_to(p2_question,[])).
