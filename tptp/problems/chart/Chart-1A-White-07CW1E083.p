%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E083
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   7 equality;  19 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   63 (   0   ~;   5   |;   3   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   0   ?;   7   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   20 (   3 pred;    6 func;   11 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'minimum/3' @ $int
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_n0: $int] :
              ( ( 'int.is-natural-number/1' @ V_n0 )
              & ( $lesseq @ ( $quotient @ ( $to_rat @ ( $sum @ 9 @ ( $product @ -7 @ V_n0 ) ) ) @ ( $to_rat @ 3 ) ) @ ( $quotient @ ( $to_rat @ ( $difference @ ( $difference @ ( $uminus @ V_n0 ) @ 1 ) @ ( $product @ 3 @ ( $difference @ V_n0 @ 2 ) ) ) ) @ ( $to_rat @ 4 ) ) ) ) )
        @ ^ [V_lhs: $int,V_rhs: $int] :
            ( $less @ V_lhs @ V_rhs )
        @ V_n ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $less @ ( $difference @ ( $product @ 2 @ V_x ) @ 1 ) @ ( $product @ 3 @ ( $sum @ V_x @ 1 ) ) )
        & ( $lesseq @ ( $difference @ V_x @ 4 ) @ ( $difference @ 3 @ ( $product @ 2 @ V_x ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 5 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = -3 )
      | ( V_x_dot_0 = -2 )
      | ( V_x_dot_0 = -1 )
      | ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 ) ) ),
    answer_to(p2_question,[])).

