%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-30
%%
%% <PROBLEM-TEXT>
%% Assume that the graph of the function $y = a x - b x^2$ passes
%% through the fixed point $P(p, p^2)$, where $a > 0$, $b\ge 0$, and
%% $0 < p < 1$. Let $C$ be the part of the graph that corresponds to
%% $C$.
%%
%% (1) Represent $b$ using $a$ and $p$.
%%
%% (2) When $a$ moves in the range $p\le a\le 1$, let $D$ be the region
%% in which the point $(x, y)$ on the $C$ moves.
%%
%% (i) Fix $x$, then find the range in which $y$ moves.
%%
%% (ii) Draw $D$.
%%
%% (3) Represent the area $S$ of $D$ using $S$, then find the maximum
%% and minimum values of $S$ in the range of
%% $\frac{1}{2}\le p\le\frac{3}{4}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   14 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  602 (  38 equality; 215 variable)
%            Maximal formula depth :   35 (  20 average)
%            Number of connectives :  512 (   0   ~;   0   |; 103   &; 409   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   0   :)
%            Number of variables   :   83 (   1 sgn;   0   !;  42   ?;  29   ^)
%                                         (  71   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point'] :
        ( ( '>/2' @ V_a @ 0 )
        & ( '>=/2' @ V_b @ 0 )
        & ( '</2' @ 0 @ V_p )
        & ( '</2' @ V_p @ 1 )
        & ( V_P
          = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
        & ( '2d.on/2' @ V_P @ V_F )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
        & ( V_C
          = ( '2d.intersection/2' @ V_F
            @ ( '2d.shape-of-cpfun/1'
              @ ^ [V_q: '2d.Point'] :
                  ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                  & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) ) ) )).

thf(p2_i_qustion,question,
    ( 'Find/1'
    @ ^ [V_y: 'R'] :
      ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: 'R',V_b: 'R',V_D: '2d.Shape',V_Dp: '2d.Point'] :
        ( ( '>/2' @ V_a @ 0 )
        & ( '>=/2' @ V_b @ 0 )
        & ( '</2' @ 0 @ V_p )
        & ( '</2' @ V_p @ 1 )
        & ( V_P
          = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
        & ( '2d.on/2' @ V_P @ V_F )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
        & ( V_C
          = ( '2d.intersection/2' @ V_F
            @ ( '2d.shape-of-cpfun/1'
              @ ^ [V_q: '2d.Point'] :
                  ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                  & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Dp_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_Dp_dot_0 @ V_C )
                & ( '<=/2' @ V_p @ V_a )
                & ( '<=/2' @ V_a @ 1 ) ) ) )
        & ( V_Dp
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_Dp @ V_D ) ) )).

thf(p2_ii_qustion,question,
    ( 'Draw/1'
    @ ^ [V_Dp: '2d.Shape'] :
        ( V_Dp
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_point: '2d.Point'] :
            ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: 'R',V_b: 'R'] :
              ( ( '>/2' @ V_a @ 0 )
              & ( '>=/2' @ V_b @ 0 )
              & ( '</2' @ 0 @ V_p )
              & ( '</2' @ V_p @ 1 )
              & ( '<=/2' @ V_p @ V_a )
              & ( '<=/2' @ V_a @ 1 )
              & ( V_P
                = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
              & ( '2d.on/2' @ V_P @ V_F )
              & ( V_F
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
              & ( V_C
                = ( '2d.intersection/2' @ V_F
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_q: '2d.Point'] :
                        ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                        & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
              & ( '2d.on/2' @ V_point @ V_C ) ) ) ) )).

thf(p3_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_D: '2d.Shape'] :
        ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_p )
        & ( '<=/2' @ V_p @ ( '//2' @ 3 @ 4 ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_D ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Dp: '2d.Point'] :
              ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: 'R',V_b: 'R'] :
                ( ( '>/2' @ V_a @ 0 )
                & ( '>=/2' @ V_b @ 0 )
                & ( '</2' @ 0 @ V_p )
                & ( '</2' @ V_p @ 1 )
                & ( V_P
                  = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
                & ( '2d.on/2' @ V_P @ V_F )
                & ( V_F
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
                & ( V_C
                  = ( '2d.intersection/2' @ V_F
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q: '2d.Point'] :
                          ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                          & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                & ( '2d.on/2' @ V_Dp @ V_C )
                & ( '<=/2' @ V_p @ V_a )
                & ( '<=/2' @ V_a @ 1 ) ) ) ) ) )).

thf(p3_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S_max: 'R'] :
        ( V_S_max
        = ( 'max-of/1'
          @ ^ [V_S: 'R'] :
            ? [V_D: '2d.Shape',V_p: 'R'] :
              ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_p )
              & ( '<=/2' @ V_p @ ( '//2' @ 3 @ 4 ) )
              & ( V_S
                = ( '2d.area-of/1' @ V_D ) )
              & ( V_D
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_Dp: '2d.Point'] :
                    ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: 'R',V_b: 'R'] :
                      ( ( '>/2' @ V_a @ 0 )
                      & ( '>=/2' @ V_b @ 0 )
                      & ( '</2' @ 0 @ V_p )
                      & ( '</2' @ V_p @ 1 )
                      & ( V_P
                        = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
                      & ( '2d.on/2' @ V_P @ V_F )
                      & ( V_F
                        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
                      & ( V_C
                        = ( '2d.intersection/2' @ V_F
                          @ ( '2d.shape-of-cpfun/1'
                            @ ^ [V_q: '2d.Point'] :
                                ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                                & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                      & ( '2d.on/2' @ V_Dp @ V_C )
                      & ( '<=/2' @ V_p @ V_a )
                      & ( '<=/2' @ V_a @ 1 ) ) ) ) ) ) ) )).

thf(p3_3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S_min: 'R'] :
        ( V_S_min
        = ( 'min-of/1'
          @ ^ [V_S: 'R'] :
            ? [V_D: '2d.Shape',V_p: 'R'] :
              ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_p )
              & ( '<=/2' @ V_p @ ( '//2' @ 3 @ 4 ) )
              & ( V_S
                = ( '2d.area-of/1' @ V_D ) )
              & ( V_D
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_Dp: '2d.Point'] :
                    ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: 'R',V_b: 'R'] :
                      ( ( '>/2' @ V_a @ 0 )
                      & ( '>=/2' @ V_b @ 0 )
                      & ( '</2' @ 0 @ V_p )
                      & ( '</2' @ V_p @ 1 )
                      & ( V_P
                        = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
                      & ( '2d.on/2' @ V_P @ V_F )
                      & ( V_F
                        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
                      & ( V_C
                        = ( '2d.intersection/2' @ V_F
                          @ ( '2d.shape-of-cpfun/1'
                            @ ^ [V_q: '2d.Point'] :
                                ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                                & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                      & ( '2d.on/2' @ V_Dp @ V_C )
                      & ( '<=/2' @ V_p @ V_a )
                      & ( '<=/2' @ V_a @ 1 ) ) ) ) ) ) ) )).

thf(p3_range_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_D: '2d.Shape',V_p: 'R'] :
        ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_p )
        & ( '<=/2' @ V_p @ ( '//2' @ 3 @ 4 ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_D ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Dp: '2d.Point'] :
              ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: 'R',V_b: 'R'] :
                ( ( '>/2' @ V_a @ 0 )
                & ( '>=/2' @ V_b @ 0 )
                & ( '</2' @ 0 @ V_p )
                & ( '</2' @ V_p @ 1 )
                & ( V_P
                  = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2 ) ) )
                & ( '2d.on/2' @ V_P @ V_F )
                & ( V_F
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '-/1' @ V_b ) @ 'nil/0' ) ) ) ) ) )
                & ( V_C
                  = ( '2d.intersection/2' @ V_F
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q: '2d.Point'] :
                          ( ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_q ) )
                          & ( '<=/2' @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                & ( '2d.on/2' @ V_Dp @ V_C )
                & ( '<=/2' @ V_p @ V_a )
                & ( '<=/2' @ V_a @ 1 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( '>=/2' @ V_b_dot_0 @ 0 )
      & ( '</2' @ 0 @ V_p )
      & ( '</2' @ V_p @ 1 )
      & ( V_b_dot_0
        = ( '-/2' @ ( '//2' @ V_a @ V_p ) @ 1 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_i_answer,answer,(
    ^ [V_y_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_p )
      & ( '</2' @ V_p @ 1 )
      & ( '<=/2' @ ( '*/2' @ V_p @ V_x ) @ V_y_dot_0 )
      & ( '<=/2' @ V_y_dot_0 @ ( '+/2' @ ( '*/2' @ ( '-/2' @ 1 @ ( '//2' @ 1 @ V_p ) ) @ ( '^/2' @ V_x @ 2 ) ) @ V_x ) ) ) ),
    answer_to(p2_i_question,[])).

thf(p2_ii_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_Dp_dot_0: '2d.Point'] :
        ( ( '</2' @ 0 @ V_p )
        & ( '</2' @ V_p @ 1 )
        & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) )
        & ( '<=/2' @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) @ V_p )
        & ( '<=/2' @ ( '*/2' @ V_p @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) ) @ ( '2d.y-coord/1' @ V_Dp_dot_0 ) )
        & ( '<=/2' @ ( '2d.y-coord/1' @ V_Dp_dot_0 ) @ ( '+/2' @ ( '*/2' @ ( '-/2' @ 1 @ ( '//2' @ 1 @ V_p ) ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) @ 2 ) ) @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) ) ) ) ),
    answer_to(p2_ii_question,[])).

thf(p3_1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_p )
      & ( '<=/2' @ V_p @ ( '//2' @ 3 @ 4 ) )
      & ( V_S_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 6 ) @ ( '-/2' @ ( '^/2' @ V_p @ 2 ) @ ( '^/2' @ V_p @ 3 ) ) ) ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_S_max_dot_0: 'R'] :
      ( V_S_max_dot_0
      = ( '//2' @ 2 @ 81 ) ) ),
    answer_to(p3_2_question,[])).

thf(p3_3_answer,answer,(
    ^ [V_S_min_dot_0: 'R'] :
      ( V_S_min_dot_0
      = ( '//2' @ 1 @ 48 ) ) ),
    answer_to(p3_3_question,[])).

thf(p3_range_1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 1 @ 48 ) @ V_S_dot_0 )
      & ( '<=/2' @ V_S_dot_0 @ ( '//2' @ 2 @ 81 ) ) ) ),
    answer_to(p3_range_1_question,[])).
