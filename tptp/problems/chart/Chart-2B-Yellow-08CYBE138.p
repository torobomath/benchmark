%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE138
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   6 equality;  17 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   45 (   3   ~;   1   |;   7   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   0   ?;   9   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_sum1: 'Z'] :
        ( V_sum1
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'int.<=/2' @ 1 @ V_n )
                  & ( 'int.</2' @ V_n @ 200 )
                  & ~ ( 'int.is-divisible-by/2' @ V_n @ 5 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_sum2: 'Z'] :
        ( V_sum2
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'int.<=/2' @ 1 @ V_n )
                  & ( 'int.</2' @ V_n @ 200 )
                  & ( ( 'int.is-divisible-by/2' @ V_n @ 3 )
                    | ( 'int.is-divisible-by/2' @ V_n @ 5 ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_sum3: 'Z'] :
        ( V_sum3
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'int.<=/2' @ 1 @ V_n )
                  & ( 'int.</2' @ V_n @ 200 )
                  & ~ ( 'int.is-divisible-by/2' @ V_n @ 3 )
                  & ~ ( 'int.is-divisible-by/2' @ V_n @ 5 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_sum1_dot_0: 'Z'] : ( V_sum1_dot_0 = 16000 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_sum2_dot_0: 'Z'] : ( V_sum2_dot_0 = 9168 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_sum3_dot_0: 'Z'] : ( V_sum3_dot_0 = 10732 ) ),
    answer_to(p3_question,[])).
