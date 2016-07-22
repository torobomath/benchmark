%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P081
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  144 (   9 equality;  28 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :  126 (   0   ~;   3   |;  10   &; 113   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( 'int.is-natural-number/1' @ V_x )
        & ( 'int.is-natural-number/1' @ V_y )
        & ( $less @ V_x @ V_y )
        & ( ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ 4 ) )
          = ( $sum @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_x ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_y ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_l: $int,V_m: $int,V_n: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_l @ ( 'cons/2' @ $int @ V_m @ ( 'cons/2' @ $int @ V_n @ ( 'nil/0' @ $int ) ) ) ) )
        & ( 'int.is-natural-number/1' @ V_l )
        & ( 'int.is-natural-number/1' @ V_m )
        & ( 'int.is-natural-number/1' @ V_n )
        & ( $lesseq @ V_l @ V_m )
        & ( $lesseq @ V_m @ V_n )
        & ( ( $to_rat @ 1 )
          = ( $sum @ ( $sum @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_l ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_m ) ) ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_n ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 5 @ ( 'cons/2' @ $int @ 20 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 6 @ ( 'cons/2' @ $int @ 12 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 6 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

