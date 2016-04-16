%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P054
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   7 equality;  25 variable)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   76 (   0   ~;   3   |;   5   &;  68   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   0   ?;  15   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   19 (   2 pred;    3 func;   14 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( $less @ ( $sum @ ( $product @ 6 @ V_x ) @ 5 ) @ 30 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_x: $int] :
              ( ( 'int.is-natural-number/1' @ V_x )
              & ( $less @ V_x @ 10 )
              & ( $less @ ( $product @ 4 @ ( $sum @ V_x @ 3 ) ) @ ( $sum @ ( $product @ 6 @ V_x ) @ -1 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( 'minimum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_x0: $int] :
                ( $less @ ( $sum @ ( $product @ -2 @ V_x0 ) @ 5 ) @ 12 ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_x ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( 'maximum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_x0: $int] :
                ( $less @ 7 @ ( $sum @ ( $product @ 4 @ ( $difference @ V_x0 @ 2 ) ) @ ( $product @ 5 @ ( $difference @ 6 @ V_x0 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_x ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 )
      | ( V_x_dot_0 = 3 )
      | ( V_x_dot_0 = 4 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 3 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: $int] : ( V_x_dot_0 = -3 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_x_dot_0: $int] : ( V_x_dot_0 = 14 ) ),
    answer_to(p4_question,[])).

