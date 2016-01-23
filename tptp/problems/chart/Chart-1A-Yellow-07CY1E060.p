%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E060
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   17 (   2 equality;   5 variable)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   11 (   0   ~;   0   |;   1   &;  10   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( ( 'int.^/2' @ V_x @ 2 )
          = ( 'int.+/2' @ ( 'int.+/2' @ V_x @ 1 ) @ ( 'int.+/2' @ V_x @ 2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'Z'] : ( V_x_dot_0 = 3 ) ),
    answer_to(p_question,[])).
