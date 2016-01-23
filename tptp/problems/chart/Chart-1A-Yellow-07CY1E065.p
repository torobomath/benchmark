%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E065
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  166 (  13 equality;  40 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :  138 (   0   ~;   4   |;  19   &; 115   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   8   ?;   6   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
        ( ( V_x = 1 )
        & ( V_answer
          = ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_y )
        & ( 'int.</2' @ 0 @ V_y )
        & ( 'int.is-integer/1' @ V_z )
        & ( 'int.</2' @ 0 @ V_z )
        & ( ( 'rat.ratio/2' @ 4 @ 3 )
          = ( 'rat.+/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ ( 'int.*/2' @ 2 @ V_y ) ) ) @ ( 'rat.ratio/2' @ 1 @ ( 'int.*/2' @ 3 @ V_z ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ 0 @ V_x )
        & ? [V_y: 'Z',V_z: 'Z'] :
            ( ( 'int.is-integer/1' @ V_y )
            & ( 'int.</2' @ 0 @ V_y )
            & ( 'int.is-integer/1' @ V_z )
            & ( 'int.</2' @ 0 @ V_z )
            & ( ( 'rat.ratio/2' @ 4 @ 3 )
              = ( 'rat.+/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ ( 'int.*/2' @ 2 @ V_y ) ) ) @ ( 'rat.ratio/2' @ 1 @ ( 'int.*/2' @ 3 @ V_z ) ) ) ) ) ) )).

thf(p3_qustion,question,
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
        & ( ( 'rat.ratio/2' @ 4 @ 3 )
          = ( 'rat.+/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ ( 'int.*/2' @ 2 @ V_y ) ) ) @ ( 'rat.ratio/2' @ 1 @ ( 'int.*/2' @ 3 @ V_z ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p3_question,[])).
