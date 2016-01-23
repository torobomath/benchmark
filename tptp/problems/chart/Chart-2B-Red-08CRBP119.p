%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP119
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   3 equality;  14 variable)
%            Maximal formula depth :   16 (   9 average)
%            Number of connectives :   42 (   0   ~;   0   |;   8   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-natural-number/1' @ V_m )
              & ( 'int.<=/2' @ 200 @ V_m )
              & ( 'int.<=/2' @ V_m @ 500 )
              & ( 'int.is-divisible-by/2' @ ( 'int.-/2' @ V_m @ 5 ) @ 7 )
              & ( 'int.is-divisible-by/2' @ ( 'int.-/2' @ V_m @ 11 ) @ 13 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'Z'] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_m: 'Z'] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( 'int.<=/2' @ 200 @ V_m )
                  & ( 'int.<=/2' @ V_m @ 500 )
                  & ( 'int.is-divisible-by/2' @ ( 'int.-/2' @ V_m @ 5 ) @ 7 )
                  & ( 'int.is-divisible-by/2' @ ( 'int.-/2' @ V_m @ 11 ) @ 13 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 3 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_s_dot_0: 'Z'] : ( V_s_dot_0 = 1086 ) ),
    answer_to(p2_question,[])).
