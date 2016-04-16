%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE037
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  102 (   3 equality;  33 variable)
%            Maximal formula depth :   34 (  18 average)
%            Number of connectives :   95 (   0   ~;   0   |;  20   &;  75   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   3 pred;    2 func;    9 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_N: $int] :
        ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_N
        @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
          @ ^ [V_list: ( 'ListOf' @ $int )] :
            ? [V_a: $int,V_b: $int,V_c: $int,V_d: $int,V_e: $int,V_n: $int] :
              ( ( V_n
                = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $product @ V_a @ 10000 ) @ ( $product @ V_b @ 1000 ) ) @ ( $product @ V_c @ 100 ) ) @ ( $product @ 10 @ V_d ) ) @ V_e ) )
              & ( V_list
                = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'cons/2' @ $int @ V_c @ ( 'cons/2' @ $int @ V_d @ ( 'cons/2' @ $int @ V_e @ ( 'nil/0' @ $int ) ) ) ) ) ) )
              & ( $is_int @ V_a )
              & ( $less @ 0 @ V_a )
              & ( $less @ V_a @ 10 )
              & ( $is_int @ V_b )
              & ( $lesseq @ 0 @ V_b )
              & ( $less @ V_b @ 10 )
              & ( $is_int @ V_c )
              & ( $lesseq @ 0 @ V_c )
              & ( $less @ V_c @ 10 )
              & ( $is_int @ V_d )
              & ( $lesseq @ 0 @ V_d )
              & ( $less @ V_d @ 10 )
              & ( $is_int @ V_e )
              & ( $lesseq @ 0 @ V_e )
              & ( $less @ V_e @ 10 )
              & ( $less @ 54321 @ V_n )
              & ( $less @ V_n @ 100000 )
              & ( 'int.is-divisible-by/2' @ V_n @ 5 )
              & ( 'pairwise-distinct/1' @ $int @ V_list ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_N_dot_0: $int] : ( V_N_dot_0 = 2884 ) ),
    answer_to(p_question,[])).

