%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP177
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :   87 (   2 equality;   5 variable)
%            Maximal formula depth :   24 (  10 average)
%            Number of connectives :   81 (   0   ~;   0   |;  14   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   3   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   3 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $int )).

thf('b/0_type',type,(
    'b/0': $int )).

thf('c/0_type',type,(
    'c/0': $int )).

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_s: $int] :
        ( ( $is_int @ 'a/0' )
        & ( $lesseq @ 0 @ 'a/0' )
        & ( $is_int @ 'b/0' )
        & ( $lesseq @ 0 @ 'b/0' )
        & ( $is_int @ 'c/0' )
        & ( $lesseq @ 0 @ 'c/0' )
        & ( V_s
          = ( 'int.sum/1'
            @ ( 'int.set-to-list/1'
              @ ( 'set-by-def/1' @ $int
                @ ^ [V_m: $int] :
                    ( ( $is_int @ V_m )
                    & ( $less @ 0 @ V_m )
                    & ( 'int.is-divisible-by/2' @ ( $product @ ( $product @ ( 'int.^/2' @ 2 @ 'a/0' ) @ ( 'int.^/2' @ 3 @ 'b/0' ) ) @ ( 'int.^/2' @ 5 @ 'c/0' ) ) @ V_m ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_s_dot_0: $int] :
      ( ( $is_int @ 'a/0' )
      & ( $lesseq @ 0 @ 'a/0' )
      & ( $is_int @ 'b/0' )
      & ( $lesseq @ 0 @ 'b/0' )
      & ( $is_int @ 'c/0' )
      & ( $lesseq @ 0 @ 'c/0' )
      & ( ( $to_rat @ V_s_dot_0 )
        = ( $product @ ( $quotient @ 1 @ 8 ) @ ( $to_rat @ ( $product @ ( $product @ ( $sum @ ( 'int.^/2' @ 2 @ ( $sum @ 'a/0' @ 1 ) ) @ 1 ) @ ( $sum @ ( 'int.^/2' @ 3 @ ( $sum @ 'b/0' @ 1 ) ) @ 1 ) ) @ ( $sum @ ( 'int.^/2' @ 5 @ ( $sum @ 'c/0' @ 1 ) ) @ 1 ) ) ) ) ) ) ),
    answer_to(p_question,[])).

