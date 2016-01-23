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
%            Number of atoms       :  217 (  17 equality;  74 variable)
%            Maximal formula depth :   33 (  16 average)
%            Number of connectives :  181 (   4   ~;   1   |;  33   &; 143   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   27 (   0 sgn;   0   !;  18   ?;   9   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_M_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: 'R'] :
      ? [V_K: '2d.Shape'] :
        ( ( V_K
          = ( '2d.boundary-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 4 @ 0 ) @ ( '2d.point/2' @ 4 @ 4 ) @ ( '2d.point/2' @ 0 @ 4 ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_Ml: 'R'] :
              ? [V_ll: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 1 @ 2 ) @ V_ll )
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
    ( 'Find/1'
    @ ^ [V_f: 'R2R'] :
      ? [V_K: '2d.Shape',V_l: '2d.Shape',V_M: 'R',V_Po: '2d.Point',V_Qo: '2d.Point',V_a: 'R',V_b: 'R'] :
        ( ( V_K
          = ( '2d.boundary-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 4 @ 0 ) @ ( '2d.point/2' @ 4 @ 4 ) @ ( '2d.point/2' @ 0 @ 4 ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 1 @ 2 ) @ V_l )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1' @ V_f ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_Ml: 'R'] :
              ? [V_ll: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 1 @ 2 ) @ V_ll )
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
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_K: '2d.Shape'] :
        ( ( V_K
          = ( '2d.boundary-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 4 @ 0 ) @ ( '2d.point/2' @ 4 @ 4 ) @ ( '2d.point/2' @ 0 @ 4 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_Ml: 'R'] :
              ? [V_ll: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 1 @ 2 ) @ V_ll )
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
    ^ [V_M_dot_0: 'R'] :
      ( V_M_dot_0
      = ( '//2' @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 13 ) ) @ 3 ) ) ),
    answer_to(p1_M_question,[])).

thf(p1_f_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
      ( ( V_f_dot_0
        = ( 'poly-fun/1' @ ( 'cons/2' @ ( '//2' @ 4 @ 3 ) @ ( 'cons/2' @ ( '//2' @ 2 @ 3 ) @ 'nil/0' ) ) ) )
      | ( V_f_dot_0
        = ( 'poly-fun/1' @ ( 'cons/2' @ ( '//2' @ 8 @ 3 ) @ ( 'cons/2' @ ( '//2' @ -2 @ 3 ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p1_f_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = 4 ) ),
    answer_to(p2_question,[])).
