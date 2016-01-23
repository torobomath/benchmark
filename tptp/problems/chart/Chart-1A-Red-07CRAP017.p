%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP017
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   3 equality;  20 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   51 (   3   ~;   1   |;  10   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   0   ?;   9   ^)
%                                         (   9   :;   0  !>;   0  ?*)
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
              & ( 'int.<=/2' @ V_m @ 200 )
              & ( ( 'int.is-divisible-by/2' @ V_m @ 5 )
                | ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.<=/2' @ 100 @ V_m )
              & ( 'int.<=/2' @ V_m @ 200 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 35 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-integer/1' @ V_m )
              & ( 'int.<=/2' @ 100 @ V_m )
              & ( 'int.<=/2' @ V_m @ 200 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 3 )
              & ~ ( 'int.is-divisible-by/2' @ V_m @ 35 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 32 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 98 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 66 ) ),
    answer_to(p3_question,[])).
