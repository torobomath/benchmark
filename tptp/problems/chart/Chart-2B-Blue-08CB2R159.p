%% DOMAIN:    Exponential and Logarithm Function
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R159
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   63 (   3 equality;  11 variable)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   55 (   0   ~;   0   |;   5   &;  50   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   1   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'int.</2' @ ( 'int.^/2' @ 8 @ ( 'int.-/2' @ V_n @ 1 ) ) @ ( 'int.^/2' @ 10 @ 39 ) )
        & ( 'int.<=/2' @ ( 'int.^/2' @ 10 @ 39 ) @ ( 'int.^/2' @ 8 @ V_n ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_n: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'int.</2' @ ( 'int.^/2' @ 8 @ ( 'int.-/2' @ V_n @ 1 ) ) @ ( 'int.^/2' @ 10 @ 39 ) )
        & ( 'int.<=/2' @ ( 'int.^/2' @ 10 @ 39 ) @ ( 'int.^/2' @ 8 @ V_n ) )
        & ( V_answer
          = ( 'cons/2' @ ( 'car/1' @ ( 'int.int2decimal/1' @ ( 'int.^/2' @ 8 @ V_n ) ) ) @ ( 'cons/2' @ ( 'last/1' @ ( 'int.int2decimal/1' @ ( 'int.^/2' @ 8 @ V_n ) ) ) @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 44 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 6 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).
