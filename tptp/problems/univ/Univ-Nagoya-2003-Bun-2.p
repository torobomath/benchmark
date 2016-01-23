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

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  235 (  16 equality;  92 variable)
%            Maximal formula depth :   29 (  17 average)
%            Number of connectives :  199 (   2   ~;   0   |;  38   &; 159   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   36 (   2 sgn;   1   !;  15   ?;   9   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,(
    ! [Tv3: $tType] :
      ( 'Find/1'
      @ ^ [V_l: '2d.Shape'] :
        ? [V_m: Tv3,V_P: '2d.Point',V_C: '2d.Shape',V_l2: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l2 )
          & ( '2d.line-type/1' @ V_l )
          & ( V_C
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
          & ( '</2' @ 0 @ V_a )
          & ( V_P
            = ( '2d.point/2' @ V_p @ ( '*/2' @ V_a @ ( '^/2' @ V_p @ 2 ) ) ) )
          & ( V_p != 0 )
          & ( '2d.tangent/3' @ V_C @ V_l2 @ V_P )
          & ( '2d.on/2' @ V_P @ V_l )
          & ( '2d.perpendicular/2' @ V_l @ V_l2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_min_sp: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_sp: 'R'] :
            ? [V_l2: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point',V_C: '2d.Shape',V_p: 'R'] :
              ( ( '2d.line-type/1' @ V_l2 )
              & ( '2d.line-type/1' @ V_l )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
              & ( '</2' @ 0 @ V_a )
              & ( V_P
                = ( '2d.point/2' @ V_p @ ( '*/2' @ V_a @ ( '^/2' @ V_p @ 2 ) ) ) )
              & ( '>/2' @ V_p @ 0 )
              & ( '2d.tangent/3' @ V_C @ V_l2 @ V_P )
              & ( '2d.on/2' @ V_P @ V_l )
              & ( '2d.perpendicular/2' @ V_l @ V_l2 )
              & ( V_sp
                = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) ) )
        @ V_min_sp ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_C: '2d.Shape',V_min_sp: 'R'] :
        ( ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_sp: 'R'] :
              ? [V_l2_dot_0: '2d.Shape',V_l_dot_0: '2d.Shape',V_P_dot_0: '2d.Point',V_p_dot_0: 'R'] :
                ( ( '2d.line-type/1' @ V_l2_dot_0 )
                & ( '2d.line-type/1' @ V_l_dot_0 )
                & ( '</2' @ 0 @ V_a )
                & ( V_P_dot_0
                  = ( '2d.point/2' @ V_p_dot_0 @ ( '*/2' @ V_a @ ( '^/2' @ V_p_dot_0 @ 2 ) ) ) )
                & ( '>/2' @ V_p_dot_0 @ 0 )
                & ( '2d.tangent/3' @ V_C @ V_l2_dot_0 @ V_P_dot_0 )
                & ( '2d.on/2' @ V_P_dot_0 @ V_l_dot_0 )
                & ( '2d.perpendicular/2' @ V_l_dot_0 @ V_l2_dot_0 )
                & ( V_sp
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_l_dot_0 @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) ) )
          @ V_min_sp )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.line-type/1' @ V_l )
        & ( '</2' @ 0 @ V_a )
        & ( V_P
          = ( '2d.point/2' @ V_p @ ( '*/2' @ V_a @ ( '^/2' @ V_p @ 2 ) ) ) )
        & ( '>/2' @ V_p @ 0 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_P )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.perpendicular/2' @ V_l @ V_l2 )
        & ( V_min_sp
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) )
        & ( '2d.is-slope-of/2' @ V_m @ V_l ) ) )).

thf(p1_answer,answer,(
    ^ [V_l_dot_0: '2d.Shape'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_p != 0 )
      & ( V_l_dot_0
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P_dot_0: '2d.Point'] :
              ( ( '2d.y-coord/1' @ V_P_dot_0 )
              = ( '+/2' @ ( '*/2' @ ( '-/1' @ ( '//2' @ 1 @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ V_p ) ) ) ) @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) @ ( '+/2' @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_a ) ) @ ( '*/2' @ V_a @ ( '^/2' @ V_p @ 2 ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans: 'R'] :
      ( V_ans
      = ( '//2' @ 4 @ ( '*/2' @ 3 @ ( '^/2' @ V_a @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_ans: 'R'] : ( V_ans = -1 ) ),
    answer_to(p3_question,[])).
