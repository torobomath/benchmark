%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E091
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   33 (   4 equality;   9 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   23 (   0   ~;   3   |;   3   &;  17   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    3 func;    9 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( $lesseq @ 10 @ V_x )
        & ( $less @ V_x @ 100 )
        & ( $less @ 5 @ ( $sum @ ( $product @ 6 @ V_x ) @ ( $product @ 8 @ ( $difference @ 4 @ V_x ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = 10 )
      | ( V_x_dot_0 = 11 )
      | ( V_x_dot_0 = 12 )
      | ( V_x_dot_0 = 13 ) ) ),
    answer_to(p_question,[])).

