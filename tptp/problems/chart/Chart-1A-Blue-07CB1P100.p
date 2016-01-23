%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P100
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  136 (  16 equality;  29 variable)
%            Maximal formula depth :   15 (  13 average)
%            Number of connectives :  104 (   0   ~;  10   |;   8   &;  86   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
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
        & ( 12
          = ( 'int.+/2' @ ( 'int.*/2' @ ( 'int.^/2' @ V_x @ 2 ) @ V_y ) @ ( 'int.*/2' @ -3 @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ 0 @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 'int.</2' @ 0 @ V_y )
        & ( ( 'rat.ratio/2' @ 1 @ 4 )
          = ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ V_y ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 0 @ ( 'cons/2' @ -4 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ -6 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ -6 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 12 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -2 @ ( 'cons/2' @ 12 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -3 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 5 @ ( 'cons/2' @ 20 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 6 @ ( 'cons/2' @ 12 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 8 @ ( 'cons/2' @ 8 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 12 @ ( 'cons/2' @ 6 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 20 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
