%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (   4 equality;  26 variable)
%            Maximal formula depth :   13 (   7 average)
%            Number of connectives :   63 (   1   ~;   1   |;  13   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   0   ?;  12   ^)
%                                         (  12   :;   0  !>;   0  ?*)
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
              ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.<=/2' @ 100 @ V_m )
              & ( 'int.</2' @ V_m @ 1000 )
              & ( 'int.is-divisible-by/2' @ V_m @ 4 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.<=/2' @ 100 @ V_m )
              & ( 'int.</2' @ V_m @ 1000 )
              & ( 'int.is-divisible-by/2' @ V_m @ 6 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.<=/2' @ 100 @ V_m )
              & ( 'int.</2' @ V_m @ 1000 )
              & ( ( 'int.is-divisible-by/2' @ V_m @ 4 )
                | ( 'int.is-divisible-by/2' @ V_m @ 6 ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.<=/2' @ 100 @ V_m )
              & ( 'int.</2' @ V_m @ 1000 )
              & ( 'int.is-divisible-by/2' @ V_m @ 4 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 6 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 225 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 150 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 300 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 150 ) ),
    answer_to(p4_question,[])).
