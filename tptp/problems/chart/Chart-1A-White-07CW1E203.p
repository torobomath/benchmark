%% DOMAIN:    Quadratic Functions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E203
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  104 (   2 equality;  19 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   94 (   0   ~;   1   |;   6   &;  87   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   19 (   3 pred;    5 func;   11 numbers)

include('axioms.ax').

thf(p11_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $less @ ( 'abs/1' @ ( $sum @ V_x @ ( $to_real @ 1 ) ) ) @ ( $quotient @ ( $to_real @ 3 ) @ ( $to_real @ 2 ) ) )
        & ( $less @ ( $to_real @ 0 ) @ ( $sum @ ( $sum @ ( '^/2' @ V_x @ ( $to_real @ 2 ) ) @ ( $product @ ( $to_real @ -2 ) @ V_x ) ) @ ( $to_real @ -3 ) ) ) ) )).

thf(p12_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $lesseq @ ( $to_real @ 2 ) @ ( $sum @ ( '^/2' @ V_x @ ( $to_real @ 2 ) ) @ ( $uminus @ V_x ) ) )
        & ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ ( $to_real @ 2 ) ) @ ( $uminus @ V_x ) ) @ ( $sum @ ( $product @ ( $to_real @ 4 ) @ V_x ) @ ( $to_real @ -4 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $less @ ( $product @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( $sum @ ( $product @ 7 @ V_x ) @ 4 ) )
        & ( $lesseq @ ( $product @ 3 @ V_x ) @ ( $sum @ ( 'int.^/2' @ V_x @ 2 ) @ 1 ) ) ) )).

thf(p11_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $less @ ( $quotient @ ( $to_real @ -5 ) @ ( $to_real @ 2 ) ) @ V_x_dot_0 )
      & ( $less @ V_x_dot_0 @ ( $to_real @ -1 ) ) ) ),
    answer_to(p11_question,[])).

thf(p12_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ ( $to_real @ 2 ) @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ ( $to_real @ 4 ) ) ) ),
    answer_to(p12_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 3 ) ) ),
    answer_to(p2_question,[])).

