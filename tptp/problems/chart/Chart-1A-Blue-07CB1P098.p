%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P098
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   5 equality;  22 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   61 (   0   ~;   2   |;   9   &;  50   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_P: 'Equation',V_x: 'Z',V_y: 'Z'] :
        ( ( V_P
          = ( 'poly-equation/1' @ ( 'cons/2' @ ( '^/2' @ ( 'int->real/1' @ V_n ) @ 2 ) @ ( 'cons/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ -9 ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
        & ( 'int.<=/2' @ 0 @ V_n )
        & ( 'int.is-integer/1' @ V_n )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( ( ( V_x = V_y )
            & ( 'is-multiple-root-of/2' @ ( 'int->real/1' @ V_x ) @ V_P ) )
          | ( ( 'int.</2' @ V_x @ V_y )
            & ( 'is-solution-of/2' @ ( 'int->real/1' @ V_x ) @ V_P )
            & ( 'is-solution-of/2' @ ( 'int->real/1' @ V_y ) @ V_P ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
