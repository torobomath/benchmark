%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R085
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   7 equality;  17 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   34 (   0   ~;   0   |;   5   &;  29   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -3 @ 1 ) )
        & ( V_B
          = ( '2d.point/2' @ 3 @ -2 ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( ( '2d.distance/2' @ V_A @ V_P )
          = ( '2d.distance/2' @ V_B @ V_P ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ 4 @ V_x ) @ ( '*/2' @ -2 @ V_y ) ) @ -1 ) ) ) ),
    answer_to(p_question,[])).
