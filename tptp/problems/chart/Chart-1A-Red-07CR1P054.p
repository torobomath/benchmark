%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P054
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   89 (   7 equality;  25 variable)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   67 (   0   ~;   3   |;   5   &;  59   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;   0   ?;  15   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( 'int.</2' @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ V_x ) @ 5 ) @ 30 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_x: 'Z'] :
              ( ( 'int.is-natural-number/1' @ V_x )
              & ( 'int.</2' @ V_x @ 10 )
              & ( 'int.</2' @ ( 'int.*/2' @ 4 @ ( 'int.+/2' @ V_x @ 3 ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ V_x ) @ -1 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_x0: 'Z'] :
                ( 'int.</2' @ ( 'int.+/2' @ ( 'int.*/2' @ -2 @ V_x0 ) @ 5 ) @ 12 ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_x ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'maximum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_x0: 'Z'] :
                ( 'int.</2' @ 7 @ ( 'int.+/2' @ ( 'int.*/2' @ 4 @ ( 'int.-/2' @ V_x0 @ 2 ) ) @ ( 'int.*/2' @ 5 @ ( 'int.-/2' @ 6 @ V_x0 ) ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_x ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 )
      | ( V_x_dot_0 = 3 )
      | ( V_x_dot_0 = 4 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 3 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: 'Z'] : ( V_x_dot_0 = -3 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_x_dot_0: 'Z'] : ( V_x_dot_0 = 14 ) ),
    answer_to(p4_question,[])).
