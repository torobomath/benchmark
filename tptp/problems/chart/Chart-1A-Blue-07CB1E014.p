%% DOMAIN:    Quadratic Functions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1E014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   82 (   4 equality;  21 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   70 (   0   ~;   1   |;   6   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   3 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_f: 'Equation',V_k: $real] :
        ( ( V_f
          = ( 'poly-equation/1' @ ( 'cons/2' @ $real @ ( $sum @ ( $sum @ ( '^/2' @ V_k @ 2.0 ) @ ( $product @ 3.0 @ V_k ) ) @ -9.0 ) @ ( 'cons/2' @ $real @ V_k @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( 'is-solution-of/2' @ V_x @ V_f ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_f: 'Equation',V_x1: $int,V_x2: $int] :
        ( ( V_f
          = ( 'poly-equation/1' @ ( 'cons/2' @ $real @ ( $sum @ ( $sum @ ( '^/2' @ V_k @ 2.0 ) @ ( $product @ 3.0 @ V_k ) ) @ -9.0 ) @ ( 'cons/2' @ $real @ V_k @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( $is_int @ V_x1 )
        & ( $is_int @ V_x2 )
        & ( $less @ V_x1 @ V_x2 )
        & ( 'are-real-solutions-of/2' @ ( 'cons/2' @ $real @ ( $to_real @ V_x1 ) @ ( 'cons/2' @ $real @ ( $to_real @ V_x2 ) @ ( 'nil/0' @ $real ) ) ) @ V_f ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ -3.0 @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( V_k_dot_0 = 0.0 )
      | ( V_k_dot_0 = -4.0 ) ) ),
    answer_to(p2_question,[])).

