%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E212
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  149 (  13 equality;  70 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :  125 (   2   ~;   0   |;  29   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   24 (   1 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_F: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point',V_P: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( V_Q != V_R )
        & ( '2d.on/2' @ V_Q @ V_F )
        & ( '2d.on/2' @ V_R @ V_F )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_l1 )
        & ( '2d.on/2' @ V_R @ V_l2 )
        & ( '2d.tangent/3' @ V_F @ V_l1 @ V_Q )
        & ( '2d.tangent/3' @ V_F @ V_l2 @ V_R )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_l1 )
        & ( '2d.on/2' @ V_P @ V_l2 )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_F: '2d.Shape',V_M: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_F
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( V_Q != V_R )
        & ( '2d.on/2' @ V_Q @ V_F )
        & ( '2d.on/2' @ V_R @ V_F )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( '2d.on/2' @ V_Q @ V_l1 )
        & ( '2d.on/2' @ V_R @ V_l2 )
        & ( '2d.tangent/3' @ V_F @ V_l1 @ V_Q )
        & ( '2d.tangent/3' @ V_F @ V_l2 @ V_R )
        & ( '2d.perpendicular/2' @ V_l1 @ V_l2 )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_Q @ V_R ) )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_M ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y = -1 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 2 ) @ 1 ) ) ) ),
    answer_to(p2_question,[])).
