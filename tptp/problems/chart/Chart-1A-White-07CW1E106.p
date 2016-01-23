%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E106
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   23 (   2 equality;   6 variable)
%            Maximal formula depth :   10 (   6 average)
%            Number of connectives :   17 (   0   ~;   0   |;   1   &;  16   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( ( 'int.+/2' @ ( 'int.^/2' @ V_n @ 2 ) @ ( 'int.^/2' @ ( 'int.+/2' @ V_n @ 1 ) @ 2 ) )
          = ( 'int.+/2' @ ( 'int.*/2' @ V_n @ ( 'int.+/2' @ V_n @ 1 ) ) @ 13 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 3 ) ),
    answer_to(p_question,[])).
