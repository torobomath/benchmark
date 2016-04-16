%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P082
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :   76 (   5 equality;   2 variable)
%            Maximal formula depth :   15 (   7 average)
%            Number of connectives :   66 (   0   ~;   0   |;  13   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   3   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   3 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('m/0_type',type,(
    'm/0': $int )).

thf('x/0_type',type,(
    'x/0': $int )).

thf('y/0_type',type,(
    'y/0': $int )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ 'x/0' @ ( 'cons/2' @ $int @ 'y/0' @ ( 'nil/0' @ $int ) ) ) )
        & ( $is_int @ 'x/0' )
        & ( $is_int @ 'y/0' )
        & ( $less @ 0 @ 'x/0' )
        & ( $less @ 'x/0' @ 'y/0' )
        & ( 'int.is-prime/1' @ 'm/0' )
        & ( $lesseq @ 3 @ 'm/0' )
        & ( ( $quotient @ 2 @ 'm/0' )
          = ( $sum @ ( $quotient @ 1 @ 'x/0' ) @ ( $quotient @ 1 @ 'y/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 'x/0' @ ( 'cons/2' @ $int @ 'y/0' @ ( 'nil/0' @ $int ) ) ) )
      & ( 'int.is-prime/1' @ 'm/0' )
      & ( $lesseq @ 3 @ 'm/0' )
      & ( $less @ 0 @ 'x/0' )
      & ( $less @ 'x/0' @ 'y/0' )
      & ( 'x/0'
        = ( $quotient_f @ ( $sum @ 'm/0' @ 1 ) @ 2 ) )
      & ( 'y/0'
        = ( $quotient_f @ ( $product @ 'm/0' @ ( $sum @ 'm/0' @ 1 ) ) @ 2 ) ) ) ),
    answer_to(p_question,[])).

