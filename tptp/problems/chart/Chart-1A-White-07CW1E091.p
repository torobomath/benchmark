%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E091
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   32 (   4 equality;   9 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   22 (   0   ~;   3   |;   3   &;  16   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
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
        & ( 'int.<=/2' @ 10 @ V_x )
        & ( 'int.</2' @ V_x @ 100 )
        & ( 'int.</2' @ 5 @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ V_x ) @ ( 'int.*/2' @ 8 @ ( 'int.-/2' @ 4 @ V_x ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 10 )
      | ( V_x_dot_0 = 11 )
      | ( V_x_dot_0 = 12 )
      | ( V_x_dot_0 = 13 ) ) ),
    answer_to(p_question,[])).
