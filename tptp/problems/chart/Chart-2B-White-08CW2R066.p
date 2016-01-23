%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R066
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (  13 equality;  38 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   79 (   2   ~;   0   |;  13   &;  64   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   20 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_l: '2d.Shape',V_l0: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_l
          = ( '2d.line/2' @ ( '2d.point/2' @ 1 @ -3 ) @ V_P ) )
        & ( V_l0
          = ( '2d.line2d/3' @ 6 @ 3 @ 5 ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( V_P
         != ( '2d.point/2' @ 1 @ -3 ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_l )
        & ( '2d.parallel/2' @ V_l @ V_l0 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ 0 @ 6 ) )
        & ( V_B
          = ( '2d.point/2' @ 4 @ 4 ) )
        & ( V_l
          = ( '2d.line/2' @ V_P @ V_Q ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_l )
        & ( '2d.is-perp-bisector/2' @ V_l @ ( '2d.seg/2' @ V_A @ V_B ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ V_y ) @ 1 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ ( '-/1' @ V_y ) ) @ 1 ) ) ) ),
    answer_to(p2_question,[])).
