%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 1999, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-12
%%
%% <PROBLEM-TEXT>
%% Answer the following questions about the curve $C$: $y = x |x - 1|$
%% and the straight line $l$: $y = k x$:
%%
%% 1) Find the range of $k$ such that $C$ and $l$ have two intersections
%% in the range of $x > 0$.
%%
%% 2) When $k$ moves in the range found in 1), find the value of $k$
%% that gives the minimum area of the whole region enclosed by $C$ and
%% $l$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  184 (  12 equality;  61 variable)
%            Maximal formula depth :   43 (  18 average)
%            Number of connectives :  159 (   3   ~;   0   |;  28   &; 128   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   0   !;  14   ?;   8   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_P1: '2d.Point',V_P2: '2d.Point'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $product @ V_x @ ( 'abs/1' @ ( $sum @ V_x @ ( $uminus @ 1.0 ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_k @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P1 ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P2 ) )
        & ( V_P1 != V_P2 )
        & ( '2d.on/2' @ V_P1 @ V_C )
        & ( '2d.on/2' @ V_P2 @ V_C )
        & ( '2d.on/2' @ V_P1 @ V_l )
        & ( '2d.on/2' @ V_P2 @ V_l ) ) )).

thf(p2k_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_P1: '2d.Point',V_P2: '2d.Point',V_S: $real] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( $product @ V_x_dot_0 @ ( 'abs/1' @ ( $sum @ V_x_dot_0 @ ( $uminus @ 1.0 ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_k @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P1 ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P2 ) )
        & ( V_P1 != V_P2 )
        & ( '2d.on/2' @ V_P1 @ V_C )
        & ( '2d.on/2' @ V_P2 @ V_C )
        & ( '2d.on/2' @ V_P1 @ V_l )
        & ( '2d.on/2' @ V_P2 @ V_l )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S_dot_0: $real] :
              ? [V_C_dot_0: '2d.Shape',V_l_dot_0: '2d.Shape',V_P1_dot_0: '2d.Point',V_P2_dot_0: '2d.Point',V_k_dot_0: $real] :
                ( ( V_C_dot_0
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] :
                          ( $product @ V_x @ ( 'abs/1' @ ( $sum @ V_x @ ( $uminus @ 1.0 ) ) ) ) ) ) )
                & ( V_l_dot_0
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_k_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) )
                & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P1_dot_0 ) )
                & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_P2_dot_0 ) )
                & ( V_P1_dot_0 != V_P2_dot_0 )
                & ( '2d.on/2' @ V_P1_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_P2_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_P1_dot_0 @ V_l_dot_0 )
                & ( '2d.on/2' @ V_P2_dot_0 @ V_l_dot_0 )
                & ( V_S_dot_0
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C_dot_0 @ ( 'cons/2' @ '2d.Shape' @ V_l_dot_0 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )
          @ V_S ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( $less @ 0.0 @ V_k_dot_0 )
      & ( $less @ V_k_dot_0 @ 1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2k_answer,answer,(
    ^ [V_k_dot_1: $real] :
      ( V_k_dot_1
      = ( $difference @ 3.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ) ),
    answer_to(p2k_question,[])).

