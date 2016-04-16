%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE011
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  152 (   2 equality;  58 variable)
%            Maximal formula depth :   26 (  12 average)
%            Number of connectives :  144 (   0   ~;   8   |;  30   &; 102   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   1   :;   0   =)
%            Number of variables   :   18 (   0 sgn;  12   !;   0   ?;   6   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   3 pred;    1 func;    4 numbers)

include('axioms.ax').

thf('min/0_type',type,(
    'min/0': $int )).

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_min: $int] :
        ( ( $is_int @ V_min )
        & ( $less @ 0 @ V_min )
        & ( 'int.minimum/2'
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
          @ V_min ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_max: $int] :
        ( ( $is_int @ 'min/0' )
        & ( $less @ 0 @ 'min/0' )
        & ( 'int.maximum/2'
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
          @ V_max ) ) )).

thf(p1_answer,answer,(
    ^ [V_min_dot_0: $int] : ( V_min_dot_0 = 730 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_max_dot_0: $int] : ( V_max_dot_0 = 1330 ) ),
    answer_to(p2_question,[])).

