%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR016
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  213 (  32 equality;  70 variable)
%            Maximal formula depth :   34 (  17 average)
%            Number of connectives :  159 (  12   ~;   8   |;  45   &;  94   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   8   ?;   6   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
          @ ^ [V_list: ( 'ListOf' @ $int )] :
            ? [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
              ( ( V_list
                = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'cons/2' @ $int @ V_c @ ( 'cons/2' @ $int @ V_d @ ( 'nil/0' @ $int ) ) ) ) ) )
              & ( $is_int @ V_a )
              & ( $lesseq @ 0 @ V_a )
              & ( $lesseq @ V_a @ 9 )
              & ( $is_int @ V_b )
              & ( $lesseq @ 0 @ V_b )
              & ( $lesseq @ V_b @ 9 )
              & ( $is_int @ V_c )
              & ( $lesseq @ 0 @ V_c )
              & ( $lesseq @ V_c @ 9 )
              & ( $is_int @ V_d )
              & ( $lesseq @ 0 @ V_d )
              & ( $lesseq @ V_d @ 9 )
              & ( $lesseq @ 1 @ ( $sum @ ( $sum @ ( $sum @ V_a @ V_b ) @ V_c ) @ V_d ) )
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
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
          @ ^ [V_list: ( 'ListOf' @ $int )] :
            ? [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
              ( ( V_list
                = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'cons/2' @ $int @ V_c @ ( 'cons/2' @ $int @ V_d @ ( 'nil/0' @ $int ) ) ) ) ) )
              & ( $is_int @ V_a )
              & ( $lesseq @ 0 @ V_a )
              & ( $lesseq @ V_a @ 9 )
              & ( $is_int @ V_b )
              & ( $lesseq @ 0 @ V_b )
              & ( $lesseq @ V_b @ 9 )
              & ( $is_int @ V_c )
              & ( $lesseq @ 0 @ V_c )
              & ( $lesseq @ V_c @ 9 )
              & ( $is_int @ V_d )
              & ( $lesseq @ 0 @ V_d )
              & ( $lesseq @ V_d @ 9 )
              & ( ( V_a = 0 )
                | ( V_b = 0 )
                | ( V_c = 0 )
                | ( V_d = 0 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 252 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 2619 ) ),
    answer_to(p2_question,[])).

