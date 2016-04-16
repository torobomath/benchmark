%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR073
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  101 (   8 equality;  16 variable)
%            Maximal formula depth :   17 (   8 average)
%            Number of connectives :   87 (   3   ~;   0   |;  17   &;  66   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   3   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   1   !;   2   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   3 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $int )).

thf('b/0_type',type,(
    'b/0': $int )).

thf('n/0_type',type,(
    'n/0': $int )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
        ( ( 'int.is-prime/1' @ 'n/0' )
        & ( $less @ 2 @ 'n/0' )
        & ( $is_int @ 'a/0' )
        & ( $is_int @ 'b/0' )
        & ( $lesseq @ 0 @ 'b/0' )
        & ( $lesseq @ 0 @ 'a/0' )
        & ( 'n/0'
          = ( $difference @ ( 'int.^/2' @ 'a/0' @ 2 ) @ ( 'int.^/2' @ 'b/0' @ 2 ) ) )
        & ( V_answer
          = ( 'cons/2' @ $int @ 'a/0' @ ( 'cons/2' @ $int @ 'b/0' @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_n: $int] :
      ( ( ( 'int.is-odd-number/1' @ V_n )
        & ~ ( 'int.is-prime/1' @ V_n )
        & ( $lesseq @ 2 @ V_n ) )
     => ? [V_a: $int,V_b: $int] :
          ( ( $is_int @ V_a )
          & ( $is_int @ V_b )
          & ( $lesseq @ 0 @ V_b )
          & ( $lesseq @ 0 @ V_a )
          & ( V_n
            = ( $difference @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) )
          & ( V_a
           != ( $quotient_f @ ( $sum @ V_n @ 1 ) @ 2 ) )
          & ( V_b
           != ( $quotient_f @ ( $difference @ V_n @ 1 ) @ 2 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 'a/0' @ ( 'cons/2' @ $int @ 'b/0' @ ( 'nil/0' @ $int ) ) ) )
      & ( 'a/0'
        = ( $quotient_f @ ( $sum @ 'n/0' @ 1 ) @ 2 ) )
      & ( 'b/0'
        = ( $quotient_f @ ( $difference @ 'n/0' @ 1 ) @ 2 ) ) ) ),
    answer_to(p1_question,[])).

