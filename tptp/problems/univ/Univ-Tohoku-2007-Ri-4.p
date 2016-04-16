%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2007, Science Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Consider the square $K$ whose vertices are at the points $(0, 0)$,
%% $(4, 0)$, $(4, 4)$, and $(0, 4)$ on the $x y$ plane. For each
%% straight line passing through the point $(1, 2)$, let $l$ be the
%% region contained in $K$.
%%
%% (1) Find the maximum length of $l$ and the equation of the straight
%% line that gives the maximum length.
%%
%% (2) Find the minimum length of $l$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  232 (  17 equality;  74 variable)
%            Maximal formula depth :   33 (  16 average)
%            Number of connectives :  196 (   4   ~;   1   |;  33   &; 158   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :;   0   =)
%            Number of variables   :   27 (   0 sgn;   0   !;  18   ?;   9   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p1_M_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_M: $real] :
      ? [V_K: '2d.Shape'] :
        ( ( V_K
          = ( '2d.boundary-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 4.0 @ 0.0 ) @ ( '2d.point/2' @ 4.0 @ 4.0 ) @ ( '2d.point/2' @ 0.0 @ 4.0 ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_Ml: $real] :
              ? [V_ll: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ V_ll )
                & ( '2d.line-type/1' @ V_ll )
                & ( '2d.on/2' @ V_P @ V_ll )
                & ( '2d.on/2' @ V_P @ V_K )
                & ( '2d.on/2' @ V_Q @ V_ll )
                & ( '2d.on/2' @ V_Q @ V_K )
                & ( V_P != V_Q )
                & ( V_Ml
                  = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) )
          @ V_M ) ) )).

thf(p1_f_qustion,question,
    ( 'find/1' @ 'R2R'
    @ ^ [V_f: 'R2R'] :
      ? [V_K: '2d.Shape',V_l: '2d.Shape',V_M: $real,V_Po: '2d.Point',V_Qo: '2d.Point',V_a: $real,V_b: $real] :
        ( ( V_K
          = ( '2d.boundary-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 4.0 @ 0.0 ) @ ( '2d.point/2' @ 4.0 @ 4.0 ) @ ( '2d.point/2' @ 0.0 @ 4.0 ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ V_l )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1' @ V_f ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_Ml: $real] :
              ? [V_ll: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ V_ll )
                & ( '2d.line-type/1' @ V_ll )
                & ( '2d.on/2' @ V_P @ V_ll )
                & ( '2d.on/2' @ V_P @ V_K )
                & ( '2d.on/2' @ V_Q @ V_ll )
                & ( '2d.on/2' @ V_Q @ V_K )
                & ( V_P != V_Q )
                & ( V_Ml
                  = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) )
          @ V_M )
        & ( '2d.on/2' @ V_Po @ V_l )
        & ( '2d.on/2' @ V_Po @ V_K )
        & ( '2d.on/2' @ V_Qo @ V_l )
        & ( '2d.on/2' @ V_Qo @ V_K )
        & ( V_Po != V_Qo )
        & ( V_M
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Po @ V_Qo ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_K: '2d.Shape'] :
        ( ( V_K
          = ( '2d.boundary-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 4.0 @ 0.0 ) @ ( '2d.point/2' @ 4.0 @ 4.0 ) @ ( '2d.point/2' @ 0.0 @ 4.0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_Ml: $real] :
              ? [V_ll: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ V_ll )
                & ( '2d.line-type/1' @ V_ll )
                & ( '2d.on/2' @ V_P @ V_ll )
                & ( '2d.on/2' @ V_P @ V_K )
                & ( '2d.on/2' @ V_Q @ V_ll )
                & ( '2d.on/2' @ V_Q @ V_K )
                & ( V_P != V_Q )
                & ( V_Ml
                  = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) )
          @ V_m ) ) )).

thf(p1_M_answer,answer,(
    ^ [V_M_dot_0: $real] :
      ( V_M_dot_0
      = ( $quotient @ ( $product @ 4.0 @ ( 'sqrt/1' @ 13.0 ) ) @ 3.0 ) ) ),
    answer_to(p1_M_question,[])).

thf(p1_f_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
      ( ( V_f_dot_0
        = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $quotient @ 4.0 @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 2.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) )
      | ( V_f_dot_0
        = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $quotient @ 8.0 @ 3.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ -2.0 @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p1_f_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] : ( V_m_dot_0 = 4.0 ) ),
    answer_to(p2_question,[])).

