%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P084
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (   8 equality;  25 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   63 (   0   ~;   1   |;   9   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   3 pred;    3 func;   10 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_y: $real] :
        ( ( V_y
          = ( $sum @ V_x @ ( $to_real @ 3 ) ) )
        & ( ( $sum @ ( $product @ V_x @ V_y ) @ ( $to_real @ 42 ) )
          = ( $sum @ V_x @ ( $product @ ( $to_real @ 10 ) @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
      ? [V_x: $int,V_y: $int] :
        ( ( $is_int @ V_x )
        & ( $lesseq @ 0 @ V_x )
        & ( $lesseq @ V_x @ 9 )
        & ( $is_int @ V_y )
        & ( $less @ 0 @ V_y )
        & ( $lesseq @ V_y @ 9 )
        & ( V_y
          = ( $sum @ V_x @ 3 ) )
        & ( ( $sum @ ( $product @ V_x @ V_y ) @ 42 )
          = ( $sum @ V_x @ ( $product @ 10 @ V_y ) ) )
        & ( V_n
          = ( $sum @ V_x @ ( $product @ 10 @ V_y ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $to_real @ 0 )
      = ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ ( $to_real @ 2 ) ) @ ( $product @ ( $to_real @ -8 ) @ V_x_dot_0 ) ) @ ( $to_real @ 12 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ( ( V_n_dot_0 = 52 )
      | ( V_n_dot_0 = 96 ) ) ),
    answer_to(p2_question,[])).

