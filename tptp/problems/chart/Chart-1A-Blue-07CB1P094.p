%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P094
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   4 equality;  13 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   47 (   0   ~;   1   |;   3   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 0
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( 'int.*/2' @ 3 @ ( 'int.*/2' @ V_x @ V_y ) ) ) @ ( 'int.*/2' @ -2 @ ( 'int.^/2' @ V_y @ 2 ) ) ) @ ( 'int.*/2' @ -3 @ V_x ) ) @ ( 'int.*/2' @ 4 @ V_y ) ) @ -5 ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -1 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
