%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1R039
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   4 equality;  17 variable)
%            Maximal formula depth :   20 (  10 average)
%            Number of connectives :   65 (   0   ~;   2   |;   4   &;  59   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   0   ?;   7   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   21 (   3 pred;    5 func;   13 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'maximum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_n0: $int] :
                ( ( 'int.is-natural-number/1' @ V_n0 )
                & ( $lesseq @ ( $sum @ ( $quotient @ ( $sum @ ( $product @ 3 @ V_n0 ) @ -1 ) @ 4 ) @ ( $quotient @ ( $uminus @ ( $sum @ ( $product @ 2 @ V_n0 ) @ -3 ) ) @ 5 ) ) @ ( $sum @ ( $quotient @ ( $sum @ ( $product @ 7 @ V_n0 ) @ -7 ) @ 10 ) @ ( $to_rat @ -1 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_n ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $lesseq @ ( $sum @ ( $product @ 5 @ V_x ) @ -2 ) @ ( $product @ 2 @ ( $sum @ V_x @ 1 ) ) )
        & ( $less @ ( $product @ -5 @ V_x ) @ ( $sum @ ( $product @ -3 @ V_x ) @ 4 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 5 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = -1 )
      | ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 ) ) ),
    answer_to(p2_question,[])).

