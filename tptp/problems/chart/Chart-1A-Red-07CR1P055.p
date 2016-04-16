%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P055
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  126 (  14 equality;  32 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   90 (   0   ~;  10   |;   8   &;  72   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   0   ?;   8   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   21 (   3 pred;    3 func;   15 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $lesseq @ ( $sum @ ( $product @ 2 @ V_x ) @ -1 ) @ ( $sum @ V_x @ 7 ) )
        & ( $less @ ( $sum @ V_x @ 13 ) @ ( $sum @ ( $product @ 3 @ V_x ) @ 2 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $less @ ( $sum @ ( $product @ 3 @ V_x ) @ -1 ) @ ( $sum @ ( $product @ 2 @ V_x ) @ 5 ) )
        & ( $lesseq @ ( $sum @ ( $product @ 2 @ V_x ) @ -6 ) @ ( $sum @ ( $product @ 5 @ V_x ) @ -3 ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $lesseq @ 21 @ ( $sum @ ( $product @ 6 @ V_x ) @ -3 ) )
        & ( $less @ ( $sum @ ( $product @ 6 @ V_x ) @ -3 ) @ 30 ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $less @ ( $difference @ V_x @ 1 ) @ ( $product @ 3 @ V_x ) )
        & ( $less @ ( $product @ 3 @ V_x ) @ ( $sum @ V_x @ 3 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 6 )
      | ( V_x_dot_0 = 7 )
      | ( V_x_dot_0 = 8 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = -1 )
      | ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 )
      | ( V_x_dot_0 = 3 )
      | ( V_x_dot_0 = 4 )
      | ( V_x_dot_0 = 5 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 4 )
      | ( V_x_dot_0 = 5 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 ) ) ),
    answer_to(p4_question,[])).

