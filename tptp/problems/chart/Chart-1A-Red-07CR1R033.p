%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R033
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   4 equality;  13 variable)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   37 (   0   ~;   2   |;   2   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   0   ?;   7   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   3 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( $lesseq @ ( $sum @ ( $product @ 3 @ V_x ) @ -5 ) @ ( $sum @ ( $uminus @ V_x ) @ 7 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( 'maximum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_x0: $int] :
                ( $less @ ( $sum @ ( $product @ 4 @ V_x0 ) @ -3 ) @ ( $sum @ ( $product @ 2 @ V_x0 ) @ 5 ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_x ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 )
      | ( V_x_dot_0 = 3 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $int] : ( V_x_dot_0 = 3 ) ),
    answer_to(p2_question,[])).

