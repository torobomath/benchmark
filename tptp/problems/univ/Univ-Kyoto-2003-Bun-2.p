%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2003, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-08
%%
%% <PROBLEM-TEXT>
%% Consider the parabola $C:y=x^2+x$ and the straight line $l:y=k x+k-1$
%% on the $xy$ plane. Answer the following questions:
%%
%% (1) Find the range of $k$ such that the parabola $C$ intersects with
%% the straight line $l$ at different two points.
%%
%% (2) Let $P$ and $Q$ be the $2$ intersections of the parabola $C$ and
%% the straight line $l$, let $L$ be the length of the line segment
%% $PQ$, and let $S$ be the area of the region enclosed by the line
%% segment $PQ$ and the parabola. When $k$ moves in the range found in
%% (1), find the range of the possible value of $\frac{S}{L^3}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  122 (  15 equality;  50 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :   92 (   2   ~;   1   |;  12   &;  77   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;  11   ?;  10   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_l
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( '+/2' @ ( '*/2' @ V_k @ ( '2d.x-coord/1' @ V_p ) ) @ ( '+/2' @ V_k @ -1 ) ) ) ) )
        & ? [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( V_P != V_Q )
            & ( '2d.intersect/3' @ V_C @ V_l @ V_P )
            & ( '2d.intersect/3' @ V_C @ V_l @ V_Q ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_SL3_set: 'SetOf' @ 'R'] :
        ( V_SL3_set
        = ( 'set-by-def/1'
          @ ^ [V_SL3: 'R'] :
            ? [V_k: 'R',V_C: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_S: 'R',V_L: 'R'] :
              ( ( V_C
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p_dot_0: '2d.Point'] :
                      ( ( '2d.y-coord/1' @ V_p_dot_0 )
                      = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
              & ( V_l
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( ( '2d.y-coord/1' @ V_p )
                      = ( '+/2' @ ( '*/2' @ V_k @ ( '2d.x-coord/1' @ V_p ) ) @ ( '+/2' @ V_k @ -1 ) ) ) ) )
              & ( V_P != V_Q )
              & ( '2d.intersect/3' @ V_C @ V_l @ V_P )
              & ( '2d.intersect/3' @ V_C @ V_l @ V_Q )
              & ( V_S
                = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.line/2' @ V_P @ V_Q ) @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) )
              & ( V_L
                = ( '2d.distance/2' @ V_P @ V_Q ) )
              & ( V_SL3
                = ( '//2' @ V_S @ ( '^/2' @ V_L @ 3 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( '</2' @ V_k_dot_0 @ -3 )
      | ( '</2' @ 1 @ V_k_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_SL3_set_dot_0: 'SetOf' @ 'R'] :
      ( V_SL3_set_dot_0
      = ( 'set-by-def/1'
        @ ^ [V_SL3_dot_0: 'R'] :
            ( ( '</2' @ 0 @ V_SL3_dot_0 )
            & ( '</2' @ V_SL3_dot_0 @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 24 ) ) ) ) ) ),
    answer_to(p2_question,[])).
