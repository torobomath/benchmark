%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P080
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  187 (  18 equality;  48 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :  151 (   0   ~;   6   |;  18   &; 127   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   16 (   0 sgn;   0   !;   8   ?;   8   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 0
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ ( 'int.*/2' @ 2 @ V_x ) @ V_y ) @ ( 'int.*/2' @ -2 @ V_x ) ) @ ( 'int.*/2' @ -5 @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 60
          = ( 'int.-/2' @ ( 'int.^/2' @ V_x @ 2 ) @ ( 'int.^/2' @ V_y @ 2 ) ) )
        & ( 'int.</2' @ 0 @ V_x )
        & ( 'int.</2' @ 0 @ V_y ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 2
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( 'int.*/2' @ V_x @ V_y ) ) @ ( 'int.-/1' @ ( 'int.^/2' @ V_y @ 2 ) ) ) )
        & ( 'int.</2' @ 0 @ V_x )
        & ( 'int.</2' @ 0 @ V_y ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( ( 'rat.ratio/2' @ 1 @ 2 )
          = ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ V_y ) ) )
        & ( 'int.</2' @ 0 @ V_x )
        & ( 'int.</2' @ 0 @ V_y ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 6 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 5 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ -4 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 16 @ ( 'cons/2' @ 14 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 8 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 6 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 4 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 6 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ),
    answer_to(p4_question,[])).
