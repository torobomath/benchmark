%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P070
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   51 (   5 equality;  11 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   37 (   0   ~;   1   |;   3   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_max: 'R'] :
        ( V_max
        = ( 'list-max/1'
          @ ( 'list-int->real/1'
            @ ( 'int.set-to-list/1'
              @ ( 'set-by-def/1'
                @ ^ [V_x: 'Z'] :
                    ( ( 'int.is-integer/1' @ V_x )
                    & ( 'int.</2' @ 7 @ ( 'int.+/2' @ ( 'int.*/2' @ 4 @ ( 'int.-/2' @ V_x @ 2 ) ) @ ( 'int.*/2' @ 5 @ ( 'int.-/2' @ 6 @ V_x ) ) ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'Z'] :
        ( ( 'int.is-integer/1' @ V_a )
        & ( 4
          = ( 'list-min/1'
            @ ( 'list-int->real/1'
              @ ( 'int.set-to-list/1'
                @ ( 'set-by-def/1'
                  @ ^ [V_x: 'Z'] :
                      ( ( 'int.is-integer/1' @ V_x )
                      & ( 'int.</2' @ ( 'int.*/2' @ 2 @ V_a ) @ ( 'int.+/2' @ ( 'int.*/2' @ 3 @ V_x ) @ 1 ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_max_dot_0: 'R'] : ( V_max_dot_0 = 14 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: 'Z'] :
      ( ( V_a_dot_0 = 5 )
      | ( V_a_dot_0 = 6 ) ) ),
    answer_to(p2_question,[])).
