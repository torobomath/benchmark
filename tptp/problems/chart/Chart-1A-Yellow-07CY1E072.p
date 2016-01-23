%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E072
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  173 (  17 equality;  35 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :  139 (   0   ~;  11   |;  10   &; 118   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ 0 @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 'int.</2' @ 0 @ V_y )
        & ( 'int.is-integer/1' @ V_z )
        & ( 'int.</2' @ 0 @ V_z )
        & ( 15
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_x ) @ ( 'int.*/2' @ 2 @ V_y ) ) @ V_z ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 2
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( 'int.*/2' @ V_x @ V_y ) ) @ ( 'int.-/1' @ ( 'int.^/2' @ V_y @ 2 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 9 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 7 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 5 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ -1 @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
