%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R048
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   22 (   2 equality;   6 variable)
%            Maximal formula depth :   11 (   7 average)
%            Number of connectives :   16 (   0   ~;   0   |;   2   &;  14   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ 0 @ V_x )
        & ( ( 'int.+/2' @ ( 'int.*/2' @ 8 @ ( 'int.+/2' @ V_x @ 2 ) ) @ 2 )
          = ( 'int.*/2' @ V_x @ ( 'int.+/2' @ V_x @ 1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'Z'] : ( V_x_dot_0 = 9 ) ),
    answer_to(p_question,[])).
