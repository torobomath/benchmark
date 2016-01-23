%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR016
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  193 (  32 equality;  70 variable)
%            Maximal formula depth :   34 (  17 average)
%            Number of connectives :  139 (  12   ~;   8   |;  45   &;  74   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   8   ?;   6   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_list: 'ListOf' @ 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
              ( ( V_list
                = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) )
              & ( 'int.is-integer/1' @ V_a )
              & ( 'int.<=/2' @ 0 @ V_a )
              & ( 'int.<=/2' @ V_a @ 9 )
              & ( 'int.is-integer/1' @ V_b )
              & ( 'int.<=/2' @ 0 @ V_b )
              & ( 'int.<=/2' @ V_b @ 9 )
              & ( 'int.is-integer/1' @ V_c )
              & ( 'int.<=/2' @ 0 @ V_c )
              & ( 'int.<=/2' @ V_c @ 9 )
              & ( 'int.is-integer/1' @ V_d )
              & ( 'int.<=/2' @ 0 @ V_d )
              & ( 'int.<=/2' @ V_d @ 9 )
              & ( 'int.<=/2' @ 1 @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ V_a @ V_b ) @ V_c ) @ V_d ) )
              & ( ( ( V_a != 0 )
                  & ( V_b != 0 )
                  & ( V_c = 0 )
                  & ( V_d = 0 ) )
                | ( ( V_a != 0 )
                  & ( V_b = 0 )
                  & ( V_c != 0 )
                  & ( V_d = 0 ) )
                | ( ( V_a != 0 )
                  & ( V_b = 0 )
                  & ( V_c = 0 )
                  & ( V_d != 0 ) )
                | ( ( V_a = 0 )
                  & ( V_b != 0 )
                  & ( V_c != 0 )
                  & ( V_d = 0 ) )
                | ( ( V_a = 0 )
                  & ( V_b = 0 )
                  & ( V_c != 0 )
                  & ( V_d != 0 ) )
                | ( ( V_a = 0 )
                  & ( V_b != 0 )
                  & ( V_c = 0 )
                  & ( V_d != 0 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_list: 'ListOf' @ 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
              ( ( V_list
                = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) )
              & ( 'int.is-integer/1' @ V_a )
              & ( 'int.<=/2' @ 0 @ V_a )
              & ( 'int.<=/2' @ V_a @ 9 )
              & ( 'int.is-integer/1' @ V_b )
              & ( 'int.<=/2' @ 0 @ V_b )
              & ( 'int.<=/2' @ V_b @ 9 )
              & ( 'int.is-integer/1' @ V_c )
              & ( 'int.<=/2' @ 0 @ V_c )
              & ( 'int.<=/2' @ V_c @ 9 )
              & ( 'int.is-integer/1' @ V_d )
              & ( 'int.<=/2' @ 0 @ V_d )
              & ( 'int.<=/2' @ V_d @ 9 )
              & ( ( V_a = 0 )
                | ( V_b = 0 )
                | ( V_c = 0 )
                | ( V_d = 0 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 252 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 2619 ) ),
    answer_to(p2_question,[])).
