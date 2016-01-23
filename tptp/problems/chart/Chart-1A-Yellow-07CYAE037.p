%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE037
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   90 (   3 equality;  33 variable)
%            Maximal formula depth :   34 (  18 average)
%            Number of connectives :   83 (   0   ~;   0   |;  20   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_N: 'Z'] :
        ( 'is-cardinality-of/2' @ V_N
        @ ( 'set-by-def/1'
          @ ^ [V_list: 'ListOf' @ 'Z'] :
            ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z',V_e: 'Z',V_n: 'Z'] :
              ( ( V_n
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ V_a @ 10000 ) @ ( 'int.*/2' @ V_b @ 1000 ) ) @ ( 'int.*/2' @ V_c @ 100 ) ) @ ( 'int.*/2' @ 10 @ V_d ) ) @ V_e ) )
              & ( V_list
                = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_d @ ( 'cons/2' @ V_e @ 'nil/0' ) ) ) ) ) )
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
              & ( 'int.is-integer/1' @ V_e )
              & ( 'int.<=/2' @ 0 @ V_e )
              & ( 'int.</2' @ V_e @ 10 )
              & ( 'int.</2' @ 54321 @ V_n )
              & ( 'int.</2' @ V_n @ 100000 )
              & ( 'int.is-divisible-by/2' @ V_n @ 5 )
              & ( 'pairwise-distinct/1' @ V_list ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_N_dot_0: 'Z'] : ( V_N_dot_0 = 2884 ) ),
    answer_to(p_question,[])).
