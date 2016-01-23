%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2009, Humanities Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Assume that the tangents to the curve $y = x^2$ at the points
%% $P(a, a^2)$ and $Q(b, b^2)$ intersect with each other at the point
%% $R$, where $a < 0 < b$. Answer the following questions:
%%
%% (1) Find the coordinates of the point $R$ and the area of the
%% triangle $PRQ$.
%%
%% (2) Let $PRQS$ be the parallelogram with the line segments $PR$ and
%% $QR$ as two sides. Find the area of the region enclosed by the
%% polygonal line $PSQ$ and the curve $y = x^2$.
%%
%% (3) When $P$ and $Q$ moves satisfying $\angle PRQ = 90^{\circ}$, find
%% the minimum value of the area found in (2).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  346 (  16 equality; 137 variable)
%            Maximal formula depth :   37 (  19 average)
%            Number of connectives :  306 (   0   ~;   0   |;  57   &; 249   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   64 (   0 sgn;   0   !;  23   ?;  27   ^)
%                                         (  50   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_R_qustion,question,
    ( 'Find/1'
    @ ^ [V_R: '2d.Point'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape'] :
        ( ( '2d.on/2' @ V_P
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_2: 'R'] :
                  ( '^/2' @ V_x_dot_2 @ 2 ) ) ) )
        & ( '2d.on/2' @ V_Q
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_1: 'R'] :
                  ( '^/2' @ V_x_dot_1 @ 2 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '^/2' @ V_x_dot_0 @ 2 ) ) )
          @ V_l
          @ V_P )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ V_x @ 2 ) ) )
          @ V_m
          @ V_Q )
        & ( ( '2d.x-coord/1' @ V_P )
          = V_a )
        & ( ( '2d.x-coord/1' @ V_Q )
          = V_b )
        & ( '</2' @ V_a @ 0 )
        & ( '</2' @ 0 @ V_b )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_R @ V_m ) ) )).

thf(p1_PRQ_qustion,question,
    ( 'Find/1'
    @ ^ [V_PRQ: 'R'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_R: '2d.Point'] :
        ( ( '2d.on/2' @ V_P
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_2: 'R'] :
                  ( '^/2' @ V_x_dot_2 @ 2 ) ) ) )
        & ( '2d.on/2' @ V_Q
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_1: 'R'] :
                  ( '^/2' @ V_x_dot_1 @ 2 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '^/2' @ V_x_dot_0 @ 2 ) ) )
          @ V_l
          @ V_P )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ V_x @ 2 ) ) )
          @ V_m
          @ V_Q )
        & ( ( '2d.x-coord/1' @ V_P )
          = V_a )
        & ( ( '2d.x-coord/1' @ V_Q )
          = V_b )
        & ( '</2' @ V_a @ 0 )
        & ( '</2' @ 0 @ V_b )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_R @ V_m )
        & ( V_PRQ
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_R @ V_Q ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'R'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_R: '2d.Point',V_S: '2d.Point'] :
        ( ( '2d.on/2' @ V_P
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_3: 'R'] :
                  ( '^/2' @ V_x_dot_3 @ 2 ) ) ) )
        & ( '2d.on/2' @ V_Q
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_2: 'R'] :
                  ( '^/2' @ V_x_dot_2 @ 2 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_1: 'R'] :
                  ( '^/2' @ V_x_dot_1 @ 2 ) ) )
          @ V_l
          @ V_P )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '^/2' @ V_x_dot_0 @ 2 ) ) )
          @ V_m
          @ V_Q )
        & ( ( '2d.x-coord/1' @ V_P )
          = V_a )
        & ( ( '2d.x-coord/1' @ V_Q )
          = V_b )
        & ( '</2' @ V_a @ 0 )
        & ( '</2' @ 0 @ V_b )
        & ( '2d.on/2' @ V_R @ V_l )
        & ( '2d.on/2' @ V_R @ V_m )
        & ( '2d.is-parallelogram/4' @ V_P @ V_R @ V_Q @ V_S )
        & ( V_ans
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x: 'R'] :
                        ( '^/2' @ V_x @ 2 ) ) )
                @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_S ) @ ( 'cons/2' @ ( '2d.seg/2' @ V_S @ V_Q ) @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_min_ans: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_ans: 'R'] :
            ? [V_P: '2d.Point',V_Q: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_R: '2d.Point',V_S: '2d.Point'] :
              ( ( '2d.on/2' @ V_P
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_3: 'R'] :
                        ( '^/2' @ V_x_dot_3 @ 2 ) ) ) )
              & ( '2d.on/2' @ V_Q
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_2: 'R'] :
                        ( '^/2' @ V_x_dot_2 @ 2 ) ) ) )
              & ( '2d.line-type/1' @ V_l )
              & ( '2d.line-type/1' @ V_m )
              & ( '2d.tangent/3'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_1: 'R'] :
                        ( '^/2' @ V_x_dot_1 @ 2 ) ) )
                @ V_l
                @ V_P )
              & ( '2d.tangent/3'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_0: 'R'] :
                        ( '^/2' @ V_x_dot_0 @ 2 ) ) )
                @ V_m
                @ V_Q )
              & ( ( '2d.x-coord/1' @ V_P )
                = V_a )
              & ( ( '2d.x-coord/1' @ V_Q )
                = V_b )
              & ( '</2' @ V_a @ 0 )
              & ( '</2' @ 0 @ V_b )
              & ( '2d.on/2' @ V_R @ V_l )
              & ( '2d.on/2' @ V_R @ V_m )
              & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_P @ V_R @ V_Q ) )
              & ( '2d.is-parallelogram/4' @ V_P @ V_R @ V_Q @ V_S )
              & ( V_ans
                = ( '2d.area-of/1'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2'
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x: 'R'] :
                              ( '^/2' @ V_x @ 2 ) ) )
                      @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_S ) @ ( 'cons/2' @ ( '2d.seg/2' @ V_S @ V_Q ) @ 'nil/0' ) ) ) ) ) ) ) )
        @ V_min_ans ) )).

thf(p1_R_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
    ? [V_Rx: 'R',V_Ry: 'R'] :
      ( ( V_R_dot_0
        = ( '2d.point/2' @ V_Rx @ V_Ry ) )
      & ( '</2' @ V_a @ 0 )
      & ( '</2' @ 0 @ V_b )
      & ( V_R_dot_0
        = ( '2d.point/2' @ ( '+/2' @ ( '//2' @ V_a @ 2 ) @ ( '//2' @ V_b @ 2 ) ) @ ( '*/2' @ V_a @ V_b ) ) ) ) ),
    answer_to(p1_R_question,[])).

thf(p1_PRQ_answer,answer,(
    ^ [V_PRQ_dot_0: 'R'] :
      ( ( '</2' @ V_a @ 0 )
      & ( '</2' @ 0 @ V_b )
      & ( V_PRQ_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 4 ) @ ( '^/2' @ ( '-/2' @ V_b @ V_a ) @ 3 ) ) ) ) ),
    answer_to(p1_PRQ_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans_dot_0: 'R'] :
      ( ( '</2' @ V_a @ 0 )
      & ( '</2' @ 0 @ V_b )
      & ( V_ans_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 5 ) @ ( '^/2' @ ( '-/2' @ V_b @ V_a ) @ 3 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_min_ans_dot_0: 'R'] :
      ( V_min_ans_dot_0
      = ( '//2' @ 5 @ 12 ) ) ),
    answer_to(p3_question,[])).
