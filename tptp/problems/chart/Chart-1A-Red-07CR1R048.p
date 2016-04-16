%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R048
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   23 (   2 equality;   6 variable)
%            Maximal formula depth :   11 (   7 average)
%            Number of connectives :   17 (   0   ~;   0   |;   2   &;  15   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $less @ 0 @ V_x )
        & ( ( $sum @ ( $product @ 8 @ ( $sum @ V_x @ 2 ) ) @ 2 )
          = ( $product @ V_x @ ( $sum @ V_x @ 1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $int] : ( V_x_dot_0 = 9 ) ),
    answer_to(p_question,[])).

