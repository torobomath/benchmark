%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE150
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   40 (   4 equality;  12 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   29 (   1   ~;   0   |;   6   &;  22   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'Z'] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_m: 'Z'] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( 'int.<=/2' @ 10 @ V_m )
                  & ( 'int.</2' @ V_m @ 100 )
                  & ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'Z'] :
        ( V_s
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_m: 'Z'] :
                  ( ( 'int.is-natural-number/1' @ V_m )
                  & ( 'int.<=/2' @ 10 @ V_m )
                  & ( 'int.</2' @ V_m @ 100 )
                  & ~ ( 'int.is-divisible-by/2' @ V_m @ 7 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: 'Z'] : ( V_s_dot_0 = 728 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_s_dot_0: 'Z'] : ( V_s_dot_0 = 4177 ) ),
    answer_to(p2_question,[])).
