%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE146
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   39 (   6 equality;  10 variable)
%            Maximal formula depth :   13 (   8 average)
%            Number of connectives :   23 (   0   ~;   0   |;   4   &;  19   @)
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
    @ ^ [V_C: 'Z'] :
        ( V_C
        = ( 'int.cardinality-of/1'
          @ ( 'set-by-def/1'
            @ ^ [V_n: 'Z'] :
                ( ( 'int.<=/2' @ 10 @ V_n )
                & ( 'int.<=/2' @ V_n @ 99 )
                & ( ( 'int.mod/2' @ V_n @ 6 )
                  = 2 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'Z'] :
        ( V_S
        = ( 'int.sum/1'
          @ ( 'int.set-to-list/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'int.<=/2' @ 10 @ V_n )
                  & ( 'int.<=/2' @ V_n @ 99 )
                  & ( ( 'int.mod/2' @ V_n @ 6 )
                    = 2 ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S: 'Z'] : ( V_S = 15 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_C: 'Z'] : ( V_C = 840 ) ),
    answer_to(p2_question,[])).
