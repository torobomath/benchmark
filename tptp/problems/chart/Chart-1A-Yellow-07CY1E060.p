%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E060
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   18 (   2 equality;   5 variable)
%            Maximal formula depth :    9 (   6 average)
%            Number of connectives :   12 (   0   ~;   0   |;   1   &;  11   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( 'int.is-natural-number/1' @ V_x )
        & ( ( 'int.^/2' @ V_x @ 2 )
          = ( $sum @ ( $sum @ V_x @ 1 ) @ ( $sum @ V_x @ 2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $int] : ( V_x_dot_0 = 3 ) ),
    answer_to(p_question,[])).

