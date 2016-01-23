%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE011
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  148 (   2 equality;  60 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :  140 (   0   ~;   8   |;  30   &;  98   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   19 (   0 sgn;  12   !;   0   ?;   6   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_min: 'Z'] :
        ( ( 'int.is-integer/1' @ V_min )
        & ( 'int.</2' @ 0 @ V_min )
        & ( 'int.minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_k: 'Z'] :
                ( ! [V_a_dot_0: 'Z',V_b_dot_0: 'Z',V_c_dot_0: 'Z'] :
                    ( ( ( 'int.is-integer/1' @ V_a_dot_0 )
                      & ( 'int.</2' @ 0 @ V_a_dot_0 )
                      & ( 'int.is-integer/1' @ V_b_dot_0 )
                      & ( 'int.</2' @ 0 @ V_b_dot_0 )
                      & ( 'int.is-integer/1' @ V_c_dot_0 )
                      & ( 'int.</2' @ 0 @ V_c_dot_0 )
                      & ( 'int.<=/2' @ V_k @ ( 'int.*/2' @ ( 'int.*/2' @ V_a_dot_0 @ V_b_dot_0 ) @ V_c_dot_0 ) ) )
                   => ( ( 'int.<=/2' @ 10 @ V_a_dot_0 )
                      | ( 'int.<=/2' @ 10 @ V_b_dot_0 )
                      | ( 'int.<=/2' @ 10 @ V_c_dot_0 ) ) )
                & ! [V_a: 'Z',V_b: 'Z',V_c: 'Z'] :
                    ( ( ( 'int.is-integer/1' @ V_a )
                      & ( 'int.</2' @ 0 @ V_a )
                      & ( 'int.is-integer/1' @ V_b )
                      & ( 'int.</2' @ 0 @ V_b )
                      & ( 'int.is-integer/1' @ V_c )
                      & ( 'int.</2' @ 0 @ V_c )
                      & ( 'int.<=/2' @ ( 'int.*/2' @ ( 'int.*/2' @ V_a @ V_b ) @ V_c ) @ V_k ) )
                   => ( ( 'int.<=/2' @ V_a @ 10 )
                      | ( 'int.<=/2' @ V_b @ 10 )
                      | ( 'int.<=/2' @ V_c @ 10 ) ) ) ) )
          @ V_min ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_max: 'Z'] :
        ( ( 'int.is-integer/1' @ V_min )
        & ( 'int.</2' @ 0 @ V_min )
        & ( 'int.maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_k: 'Z'] :
                ( ! [V_a_dot_0: 'Z',V_b_dot_0: 'Z',V_c_dot_0: 'Z'] :
                    ( ( ( 'int.is-integer/1' @ V_a_dot_0 )
                      & ( 'int.</2' @ 0 @ V_a_dot_0 )
                      & ( 'int.is-integer/1' @ V_b_dot_0 )
                      & ( 'int.</2' @ 0 @ V_b_dot_0 )
                      & ( 'int.is-integer/1' @ V_c_dot_0 )
                      & ( 'int.</2' @ 0 @ V_c_dot_0 )
                      & ( 'int.<=/2' @ V_k @ ( 'int.*/2' @ ( 'int.*/2' @ V_a_dot_0 @ V_b_dot_0 ) @ V_c_dot_0 ) ) )
                   => ( ( 'int.<=/2' @ 10 @ V_a_dot_0 )
                      | ( 'int.<=/2' @ 10 @ V_b_dot_0 )
                      | ( 'int.<=/2' @ 10 @ V_c_dot_0 ) ) )
                & ! [V_a: 'Z',V_b: 'Z',V_c: 'Z'] :
                    ( ( ( 'int.is-integer/1' @ V_a )
                      & ( 'int.</2' @ 0 @ V_a )
                      & ( 'int.is-integer/1' @ V_b )
                      & ( 'int.</2' @ 0 @ V_b )
                      & ( 'int.is-integer/1' @ V_c )
                      & ( 'int.</2' @ 0 @ V_c )
                      & ( 'int.<=/2' @ ( 'int.*/2' @ ( 'int.*/2' @ V_a @ V_b ) @ V_c ) @ V_k ) )
                   => ( ( 'int.<=/2' @ V_a @ 10 )
                      | ( 'int.<=/2' @ V_b @ 10 )
                      | ( 'int.<=/2' @ V_c @ 10 ) ) ) ) )
          @ V_max ) ) )).

thf(p1_answer,answer,(
    ^ [V_min_dot_0: 'Z'] : ( V_min_dot_0 = 730 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_max_dot_0: 'Z'] : ( V_max_dot_0 = 1330 ) ),
    answer_to(p2_question,[])).
