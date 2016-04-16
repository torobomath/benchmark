%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP052
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  198 (   6 equality;  75 variable)
%            Maximal formula depth :   27 (  15 average)
%            Number of connectives :  180 (   0   ~;   0   |;  45   &; 135   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   21 (   0 sgn;   0   !;  12   ?;   9   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   3 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_N: $int] :
        ( 'is-cardinality-of/2' @ $int @ V_N
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n: $int] :
            ? [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
              ( ( V_n
                = ( $sum @ ( $sum @ ( $sum @ ( $product @ 1000 @ V_a ) @ ( $product @ V_b @ 100 ) ) @ ( $product @ V_c @ 10 ) ) @ V_d ) )
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
              & ( $less @ V_d @ V_c )
              & ( $less @ V_c @ V_b )
              & ( $less @ V_b @ V_a ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_N: $int] :
        ( 'is-cardinality-of/2' @ $int @ V_N
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n: $int] :
            ? [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
              ( ( V_n
                = ( $sum @ ( $sum @ ( $sum @ ( $product @ 1000 @ V_a ) @ ( $product @ V_b @ 100 ) ) @ ( $product @ V_c @ 10 ) ) @ V_d ) )
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
              & ( $less @ V_a @ V_b )
              & ( $less @ V_b @ V_c )
              & ( $less @ V_c @ V_d ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_N: $int] :
        ( 'is-cardinality-of/2' @ $int @ V_N
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n: $int] :
            ? [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
              ( ( V_n
                = ( $sum @ ( $sum @ ( $sum @ ( $product @ 1000 @ V_a ) @ ( $product @ V_b @ 100 ) ) @ ( $product @ V_c @ 10 ) ) @ V_d ) )
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
              & ( $lesseq @ V_d @ V_c )
              & ( $lesseq @ V_c @ V_b )
              & ( $lesseq @ V_b @ V_a ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_N_dot_0: $int] : ( V_N_dot_0 = 210 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_N_dot_0: $int] : ( V_N_dot_0 = 126 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_N_dot_0: $int] : ( V_N_dot_0 = 714 ) ),
    answer_to(p3_question,[])).

