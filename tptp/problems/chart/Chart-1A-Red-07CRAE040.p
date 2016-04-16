%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE040
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  191 (   4 equality;  75 variable)
%            Maximal formula depth :   27 (  12 average)
%            Number of connectives :  177 (   0   ~;   8   |;  35   &; 130   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   1   :;   0   =)
%            Number of variables   :   29 (   0 sgn;  12   !;   2   ?;  15   ^)
%                                         (  29   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   3 pred;    1 func;    6 numbers)

include('axioms.ax').

thf('min/0_type',type,(
    'min/0': $int )).

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_min: $int] :
        ( 'minimum/3' @ $int
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_v: $int] :
            ? [V_a: $int,V_b: $int] :
              ( ( $is_int @ V_a )
              & ( $is_int @ V_b )
              & ( $less @ 0 @ V_a )
              & ( $lesseq @ V_a @ V_b )
              & ( $lesseq @ 50 @ ( $product @ V_a @ V_b ) )
              & ( V_v = V_b ) ) )
        @ ^ [V_lhs: $int,V_rhs: $int] :
            ( $less @ V_lhs @ V_rhs )
        @ V_min ) )).

thf(p21_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_min: $int] :
        ( ( $is_int @ V_min )
        & ( $less @ 0 @ V_min )
        & ( 'minimum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_k: $int] :
                ( ! [V_a_dot_0: $int,V_b_dot_0: $int,V_c_dot_0: $int] :
                    ( ( ( $is_int @ V_a_dot_0 )
                      & ( $less @ 0 @ V_a_dot_0 )
                      & ( $is_int @ V_b_dot_0 )
                      & ( $less @ 0 @ V_b_dot_0 )
                      & ( $is_int @ V_c_dot_0 )
                      & ( $less @ 0 @ V_c_dot_0 )
                      & ( $lesseq @ V_k @ ( $product @ ( $product @ V_a_dot_0 @ V_b_dot_0 ) @ V_c_dot_0 ) ) )
                   => ( ( $lesseq @ 10 @ V_a_dot_0 )
                      | ( $lesseq @ 10 @ V_b_dot_0 )
                      | ( $lesseq @ 10 @ V_c_dot_0 ) ) )
                & ! [V_a: $int,V_b: $int,V_c: $int] :
                    ( ( ( $is_int @ V_a )
                      & ( $less @ 0 @ V_a )
                      & ( $is_int @ V_b )
                      & ( $less @ 0 @ V_b )
                      & ( $is_int @ V_c )
                      & ( $less @ 0 @ V_c )
                      & ( $lesseq @ ( $product @ ( $product @ V_a @ V_b ) @ V_c ) @ V_k ) )
                   => ( ( $lesseq @ V_a @ 10 )
                      | ( $lesseq @ V_b @ 10 )
                      | ( $lesseq @ V_c @ 10 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_min ) ) )).

thf(p22_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_max: $int] :
        ( ( $is_int @ 'min/0' )
        & ( $less @ 0 @ 'min/0' )
        & ( 'maximum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_k: $int] :
                ( ! [V_a_dot_0: $int,V_b_dot_0: $int,V_c_dot_0: $int] :
                    ( ( ( $is_int @ V_a_dot_0 )
                      & ( $less @ 0 @ V_a_dot_0 )
                      & ( $is_int @ V_b_dot_0 )
                      & ( $less @ 0 @ V_b_dot_0 )
                      & ( $is_int @ V_c_dot_0 )
                      & ( $less @ 0 @ V_c_dot_0 )
                      & ( $lesseq @ V_k @ ( $product @ ( $product @ V_a_dot_0 @ V_b_dot_0 ) @ V_c_dot_0 ) ) )
                   => ( ( $lesseq @ 10 @ V_a_dot_0 )
                      | ( $lesseq @ 10 @ V_b_dot_0 )
                      | ( $lesseq @ 10 @ V_c_dot_0 ) ) )
                & ! [V_a: $int,V_b: $int,V_c: $int] :
                    ( ( ( $is_int @ V_a )
                      & ( $less @ 0 @ V_a )
                      & ( $is_int @ V_b )
                      & ( $less @ 0 @ V_b )
                      & ( $is_int @ V_c )
                      & ( $less @ 0 @ V_c )
                      & ( $lesseq @ ( $product @ ( $product @ V_a @ V_b ) @ V_c ) @ V_k ) )
                   => ( ( $lesseq @ V_a @ 10 )
                      | ( $lesseq @ V_b @ 10 )
                      | ( $lesseq @ V_c @ 10 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_max ) ) )).

thf(p1_answer,answer,(
    ^ [V_min_dot_0: $int] : ( V_min_dot_0 = 8 ) ),
    answer_to(p1_question,[])).

thf(p21_answer,answer,(
    ^ [V_min_dot_0: $int] : ( V_min_dot_0 = 730 ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_max_dot_0: $int] : ( V_max_dot_0 = 1330 ) ),
    answer_to(p22_question,[])).

