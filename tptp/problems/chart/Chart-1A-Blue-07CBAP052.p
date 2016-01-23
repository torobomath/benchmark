%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP052
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  189 (   6 equality;  75 variable)
%            Maximal formula depth :   27 (  15 average)
%            Number of connectives :  171 (   0   ~;   0   |;  45   &; 126   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;  12   ?;   9   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_N: 'Z'] :
        ( 'is-cardinality-of/2' @ V_N
        @ ( 'set-by-def/1'
          @ ^ [V_n: 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
              ( ( V_n
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 1000 @ V_a ) @ ( 'int.*/2' @ V_b @ 100 ) ) @ ( 'int.*/2' @ V_c @ 10 ) ) @ V_d ) )
              & ( 'int.is-integer/1' @ V_a )
              & ( 'int.</2' @ 0 @ V_a )
              & ( 'int.</2' @ V_a @ 10 )
              & ( 'int.is-integer/1' @ V_b )
              & ( 'int.<=/2' @ 0 @ V_b )
              & ( 'int.</2' @ V_b @ 10 )
              & ( 'int.is-integer/1' @ V_c )
              & ( 'int.<=/2' @ 0 @ V_c )
              & ( 'int.</2' @ V_c @ 10 )
              & ( 'int.is-integer/1' @ V_d )
              & ( 'int.<=/2' @ 0 @ V_d )
              & ( 'int.</2' @ V_d @ 10 )
              & ( 'int.</2' @ V_d @ V_c )
              & ( 'int.</2' @ V_c @ V_b )
              & ( 'int.</2' @ V_b @ V_a ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_N: 'Z'] :
        ( 'is-cardinality-of/2' @ V_N
        @ ( 'set-by-def/1'
          @ ^ [V_n: 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
              ( ( V_n
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 1000 @ V_a ) @ ( 'int.*/2' @ V_b @ 100 ) ) @ ( 'int.*/2' @ V_c @ 10 ) ) @ V_d ) )
              & ( 'int.is-integer/1' @ V_a )
              & ( 'int.</2' @ 0 @ V_a )
              & ( 'int.</2' @ V_a @ 10 )
              & ( 'int.is-integer/1' @ V_b )
              & ( 'int.<=/2' @ 0 @ V_b )
              & ( 'int.</2' @ V_b @ 10 )
              & ( 'int.is-integer/1' @ V_c )
              & ( 'int.<=/2' @ 0 @ V_c )
              & ( 'int.</2' @ V_c @ 10 )
              & ( 'int.is-integer/1' @ V_d )
              & ( 'int.<=/2' @ 0 @ V_d )
              & ( 'int.</2' @ V_d @ 10 )
              & ( 'int.</2' @ V_a @ V_b )
              & ( 'int.</2' @ V_b @ V_c )
              & ( 'int.</2' @ V_c @ V_d ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_N: 'Z'] :
        ( 'is-cardinality-of/2' @ V_N
        @ ( 'set-by-def/1'
          @ ^ [V_n: 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
              ( ( V_n
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 1000 @ V_a ) @ ( 'int.*/2' @ V_b @ 100 ) ) @ ( 'int.*/2' @ V_c @ 10 ) ) @ V_d ) )
              & ( 'int.is-integer/1' @ V_a )
              & ( 'int.</2' @ 0 @ V_a )
              & ( 'int.</2' @ V_a @ 10 )
              & ( 'int.is-integer/1' @ V_b )
              & ( 'int.<=/2' @ 0 @ V_b )
              & ( 'int.</2' @ V_b @ 10 )
              & ( 'int.is-integer/1' @ V_c )
              & ( 'int.<=/2' @ 0 @ V_c )
              & ( 'int.</2' @ V_c @ 10 )
              & ( 'int.is-integer/1' @ V_d )
              & ( 'int.<=/2' @ 0 @ V_d )
              & ( 'int.</2' @ V_d @ 10 )
              & ( 'int.<=/2' @ V_d @ V_c )
              & ( 'int.<=/2' @ V_c @ V_b )
              & ( 'int.<=/2' @ V_b @ V_a ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_N_dot_0: 'Z'] : ( V_N_dot_0 = 210 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_N_dot_0: 'Z'] : ( V_N_dot_0 = 126 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_N_dot_0: 'Z'] : ( V_N_dot_0 = 714 ) ),
    answer_to(p3_question,[])).
