%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E053
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   79 (   4 equality;  20 variable)
%            Maximal formula depth :   13 (  10 average)
%            Number of connectives :   68 (   1   ~;   3   |;   8   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( 'int.<=/2' @ 10 @ V_x )
        & ( 'int.</2' @ V_x @ 100 )
        & ( 'int.</2' @ 5 @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ V_x ) @ ( 'int.*/2' @ 8 @ ( 'int.-/2' @ 4 @ V_x ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
        ( ? [V_x_dot_0: 'R'] :
            ( ( '</2' @ ( '*/2' @ 5 @ ( '-/2' @ V_x_dot_0 @ 1 ) ) @ ( '*/2' @ 2 @ ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_0 ) @ V_a ) ) )
            & ( '<=/2' @ 6 @ V_x_dot_0 )
            & ( '</2' @ V_x_dot_0 @ 7 ) )
        & ~ ( ? [V_x: 'R'] :
                ( ( '</2' @ ( '*/2' @ 5 @ ( '-/2' @ V_x @ 1 ) ) @ ( '*/2' @ 2 @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ V_a ) ) )
                & ( '<=/2' @ 7 @ V_x ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 10 )
      | ( V_x_dot_0 = 11 )
      | ( V_x_dot_0 = 12 )
      | ( V_x_dot_0 = 13 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ ( 'int->real/1' @ 1 ) @ ( 'int->real/1' @ 2 ) ) @ V_a_dot_0 )
      & ( '<=/2' @ V_a_dot_0 @ ( 'int->real/1' @ 1 ) ) ) ),
    answer_to(p2_question,[])).
