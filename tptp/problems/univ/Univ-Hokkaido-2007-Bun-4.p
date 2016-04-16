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

% Syntax   : Number of formulae    :   17 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  637 (  38 equality; 166 variable)
%            Maximal formula depth :   35 (  17 average)
%            Number of connectives :  547 (   0   ~;   0   |; 103   &; 444   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   39 (   3   :;   0   =)
%            Number of variables   :   71 (   0 sgn;   0   !;  42   ?;  29   ^)
%                                         (  71   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   17 (   4 pred;    5 func;    8 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('p/0_type',type,(
    'p/0': $real )).

thf('x/0_type',type,(
    'x/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point'] :
        ( ( $greater @ 'a/0' @ 0.0 )
        & ( $greatereq @ V_b @ 0.0 )
        & ( $less @ 0.0 @ 'p/0' )
        & ( $less @ 'p/0' @ 1.0 )
        & ( V_P
          = ( '2d.point/2' @ 'p/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) )
        & ( '2d.on/2' @ V_P @ V_F )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_C
          = ( '2d.intersection/2' @ V_F
            @ ( '2d.shape-of-cpfun/1'
              @ ^ [V_q: '2d.Point'] :
                  ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                  & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 'p/0' ) ) ) ) ) ) )).

thf(p2_i_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_y: $real] :
      ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: $real,V_b: $real,V_D: '2d.Shape',V_Dp: '2d.Point'] :
        ( ( $greater @ V_a @ 0.0 )
        & ( $greatereq @ V_b @ 0.0 )
        & ( $less @ 0.0 @ 'p/0' )
        & ( $less @ 'p/0' @ 1.0 )
        & ( V_P
          = ( '2d.point/2' @ 'p/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) )
        & ( '2d.on/2' @ V_P @ V_F )
        & ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_C
          = ( '2d.intersection/2' @ V_F
            @ ( '2d.shape-of-cpfun/1'
              @ ^ [V_q: '2d.Point'] :
                  ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                  & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 'p/0' ) ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Dp_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_Dp_dot_0 @ V_C )
                & ( $lesseq @ 'p/0' @ V_a )
                & ( $lesseq @ V_a @ 1.0 ) ) ) )
        & ( V_Dp
          = ( '2d.point/2' @ 'x/0' @ V_y ) )
        & ( '2d.on/2' @ V_Dp @ V_D ) ) )).

thf(p2_ii_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_Dp: '2d.Shape'] :
        ( V_Dp
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_point: '2d.Point'] :
            ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: $real,V_b: $real] :
              ( ( $greater @ V_a @ 0.0 )
              & ( $greatereq @ V_b @ 0.0 )
              & ( $less @ 0.0 @ 'p/0' )
              & ( $less @ 'p/0' @ 1.0 )
              & ( $lesseq @ 'p/0' @ V_a )
              & ( $lesseq @ V_a @ 1.0 )
              & ( V_P
                = ( '2d.point/2' @ 'p/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) )
              & ( '2d.on/2' @ V_P @ V_F )
              & ( V_F
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( V_C
                = ( '2d.intersection/2' @ V_F
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_q: '2d.Point'] :
                        ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                        & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 'p/0' ) ) ) ) )
              & ( '2d.on/2' @ V_point @ V_C ) ) ) ) )).

thf(p3_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_D: '2d.Shape'] :
        ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ 'p/0' )
        & ( $lesseq @ 'p/0' @ ( $quotient @ 3.0 @ 4.0 ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_D ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Dp: '2d.Point'] :
              ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: $real,V_b: $real] :
                ( ( $greater @ V_a @ 0.0 )
                & ( $greatereq @ V_b @ 0.0 )
                & ( $less @ 0.0 @ 'p/0' )
                & ( $less @ 'p/0' @ 1.0 )
                & ( V_P
                  = ( '2d.point/2' @ 'p/0' @ ( '^/2' @ 'p/0' @ 2.0 ) ) )
                & ( '2d.on/2' @ V_P @ V_F )
                & ( V_F
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                & ( V_C
                  = ( '2d.intersection/2' @ V_F
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q: '2d.Point'] :
                          ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                          & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 'p/0' ) ) ) ) )
                & ( '2d.on/2' @ V_Dp @ V_C )
                & ( $lesseq @ 'p/0' @ V_a )
                & ( $lesseq @ V_a @ 1.0 ) ) ) ) ) )).

thf(p3_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S_max: $real] :
        ( V_S_max
        = ( 'max-of/1'
          @ ^ [V_S: $real] :
            ? [V_D: '2d.Shape',V_p: $real] :
              ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ V_p )
              & ( $lesseq @ V_p @ ( $quotient @ 3.0 @ 4.0 ) )
              & ( V_S
                = ( '2d.area-of/1' @ V_D ) )
              & ( V_D
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_Dp: '2d.Point'] :
                    ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: $real,V_b: $real] :
                      ( ( $greater @ V_a @ 0.0 )
                      & ( $greatereq @ V_b @ 0.0 )
                      & ( $less @ 0.0 @ V_p )
                      & ( $less @ V_p @ 1.0 )
                      & ( V_P
                        = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2.0 ) ) )
                      & ( '2d.on/2' @ V_P @ V_F )
                      & ( V_F
                        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                      & ( V_C
                        = ( '2d.intersection/2' @ V_F
                          @ ( '2d.shape-of-cpfun/1'
                            @ ^ [V_q: '2d.Point'] :
                                ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                                & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                      & ( '2d.on/2' @ V_Dp @ V_C )
                      & ( $lesseq @ V_p @ V_a )
                      & ( $lesseq @ V_a @ 1.0 ) ) ) ) ) ) ) )).

thf(p3_3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S_min: $real] :
        ( V_S_min
        = ( 'min-of/1'
          @ ^ [V_S: $real] :
            ? [V_D: '2d.Shape',V_p: $real] :
              ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ V_p )
              & ( $lesseq @ V_p @ ( $quotient @ 3.0 @ 4.0 ) )
              & ( V_S
                = ( '2d.area-of/1' @ V_D ) )
              & ( V_D
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_Dp: '2d.Point'] :
                    ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: $real,V_b: $real] :
                      ( ( $greater @ V_a @ 0.0 )
                      & ( $greatereq @ V_b @ 0.0 )
                      & ( $less @ 0.0 @ V_p )
                      & ( $less @ V_p @ 1.0 )
                      & ( V_P
                        = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2.0 ) ) )
                      & ( '2d.on/2' @ V_P @ V_F )
                      & ( V_F
                        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                      & ( V_C
                        = ( '2d.intersection/2' @ V_F
                          @ ( '2d.shape-of-cpfun/1'
                            @ ^ [V_q: '2d.Point'] :
                                ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                                & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                      & ( '2d.on/2' @ V_Dp @ V_C )
                      & ( $lesseq @ V_p @ V_a )
                      & ( $lesseq @ V_a @ 1.0 ) ) ) ) ) ) ) )).

thf(p3_range_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_D: '2d.Shape',V_p: $real] :
        ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ V_p )
        & ( $lesseq @ V_p @ ( $quotient @ 3.0 @ 4.0 ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_D ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Dp: '2d.Point'] :
              ? [V_C: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_a: $real,V_b: $real] :
                ( ( $greater @ V_a @ 0.0 )
                & ( $greatereq @ V_b @ 0.0 )
                & ( $less @ 0.0 @ V_p )
                & ( $less @ V_p @ 1.0 )
                & ( V_P
                  = ( '2d.point/2' @ V_p @ ( '^/2' @ V_p @ 2.0 ) ) )
                & ( '2d.on/2' @ V_P @ V_F )
                & ( V_F
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ ( $uminus @ V_b ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                & ( V_C
                  = ( '2d.intersection/2' @ V_F
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q: '2d.Point'] :
                          ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q ) )
                          & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ V_p ) ) ) ) )
                & ( '2d.on/2' @ V_Dp @ V_C )
                & ( $lesseq @ V_p @ V_a )
                & ( $lesseq @ V_a @ 1.0 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( $greatereq @ V_b_dot_0 @ 0.0 )
      & ( $less @ 0.0 @ 'p/0' )
      & ( $less @ 'p/0' @ 1.0 )
      & ( V_b_dot_0
        = ( $difference @ ( $quotient @ 'a/0' @ 'p/0' ) @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_i_answer,answer,(
    ^ [V_y_dot_0: $real] :
      ( ( $less @ 0.0 @ 'p/0' )
      & ( $less @ 'p/0' @ 1.0 )
      & ( $lesseq @ ( $product @ 'p/0' @ 'x/0' ) @ V_y_dot_0 )
      & ( $lesseq @ V_y_dot_0 @ ( $sum @ ( $product @ ( $difference @ 1.0 @ ( $quotient @ 1.0 @ 'p/0' ) ) @ ( '^/2' @ 'x/0' @ 2.0 ) ) @ 'x/0' ) ) ) ),
    answer_to(p2_i_question,[])).

thf(p2_ii_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_Dp_dot_0: '2d.Point'] :
        ( ( $less @ 0.0 @ 'p/0' )
        & ( $less @ 'p/0' @ 1.0 )
        & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) )
        & ( $lesseq @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) @ 'p/0' )
        & ( $lesseq @ ( $product @ 'p/0' @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) ) @ ( '2d.y-coord/1' @ V_Dp_dot_0 ) )
        & ( $lesseq @ ( '2d.y-coord/1' @ V_Dp_dot_0 ) @ ( $sum @ ( $product @ ( $difference @ 1.0 @ ( $quotient @ 1.0 @ 'p/0' ) ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) @ 2.0 ) ) @ ( '2d.x-coord/1' @ V_Dp_dot_0 ) ) ) ) ),
    answer_to(p2_ii_question,[])).

thf(p3_1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ 'p/0' )
      & ( $lesseq @ 'p/0' @ ( $quotient @ 3.0 @ 4.0 ) )
      & ( V_S_dot_0
        = ( $product @ ( $quotient @ 1.0 @ 6.0 ) @ ( $difference @ ( '^/2' @ 'p/0' @ 2.0 ) @ ( '^/2' @ 'p/0' @ 3.0 ) ) ) ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_S_max_dot_0: $real] :
      ( V_S_max_dot_0
      = ( $quotient @ 2.0 @ 81.0 ) ) ),
    answer_to(p3_2_question,[])).

thf(p3_3_answer,answer,(
    ^ [V_S_min_dot_0: $real] :
      ( V_S_min_dot_0
      = ( $quotient @ 1.0 @ 48.0 ) ) ),
    answer_to(p3_3_question,[])).

thf(p3_range_1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ 1.0 @ 48.0 ) @ V_S_dot_0 )
      & ( $lesseq @ V_S_dot_0 @ ( $quotient @ 2.0 @ 81.0 ) ) ) ),
    answer_to(p3_range_1_question,[])).

