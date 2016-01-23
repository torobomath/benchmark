%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE021
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   23 (   1 equality;   7 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :   19 (   0   ~;   0   |;   3   &;  16   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.is-natural-number/1' @ V_m )
              & ( 'int.<=/2' @ 10 @ V_m )
              & ( 'int.</2' @ V_m @ 100 )
              & ( 'int.is-even-number/1' @ ( 'int.*/2' @ ( 'int.div/2' @ V_m @ 10 ) @ ( 'int.mod/2' @ V_m @ 10 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 65 ) ),
    answer_to(p_question,[])).
