%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE149
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   8 equality;  12 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   29 (   0   ~;   0   |;   6   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: 'Z'] :
        ( V_C
        = ( 'int.cardinality-of/1'
          @ ( 'set-by-def/1'
            @ ^ [V_n: 'Z'] :
                ( ( 'int.<=/2' @ 200 @ V_n )
                & ( 'int.<=/2' @ V_n @ 500 )
                & ( ( 'int.mod/2' @ V_n @ 7 )
                  = 5 )
                & ( ( 'int.mod/2' @ V_n @ 13 )
                  = 11 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'Z'] :
        ( V_S
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'int.<=/2' @ 200 @ V_n )
                  & ( 'int.<=/2' @ V_n @ 500 )
                  & ( ( 'int.mod/2' @ V_n @ 7 )
                    = 5 )
                  & ( ( 'int.mod/2' @ V_n @ 13 )
                    = 11 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S: 'Z'] : ( V_S = 3 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_C: 'Z'] : ( V_C = 1086 ) ),
    answer_to(p2_question,[])).
