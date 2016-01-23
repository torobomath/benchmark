%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P055
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  122 (  14 equality;  32 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   86 (   0   ~;  10   |;   8   &;  68   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   0   ?;   8   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.<=/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x ) @ -1 ) @ ( 'int.+/2' @ V_x @ 7 ) )
        & ( 'int.</2' @ ( 'int.+/2' @ V_x @ 13 ) @ ( 'int.+/2' @ ( 'int.*/2' @ 3 @ V_x ) @ 2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ ( 'int.+/2' @ ( 'int.*/2' @ 3 @ V_x ) @ -1 ) @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x ) @ 5 ) )
        & ( 'int.<=/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x ) @ -6 ) @ ( 'int.+/2' @ ( 'int.*/2' @ 5 @ V_x ) @ -3 ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.<=/2' @ 21 @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ V_x ) @ -3 ) )
        & ( 'int.</2' @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ V_x ) @ -3 ) @ 30 ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ ( 'int.-/2' @ V_x @ 1 ) @ ( 'int.*/2' @ 3 @ V_x ) )
        & ( 'int.</2' @ ( 'int.*/2' @ 3 @ V_x ) @ ( 'int.+/2' @ V_x @ 3 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 6 )
      | ( V_x_dot_0 = 7 )
      | ( V_x_dot_0 = 8 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = -1 )
      | ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 )
      | ( V_x_dot_0 = 3 )
      | ( V_x_dot_0 = 4 )
      | ( V_x_dot_0 = 5 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 4 )
      | ( V_x_dot_0 = 5 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 ) ) ),
    answer_to(p4_question,[])).
