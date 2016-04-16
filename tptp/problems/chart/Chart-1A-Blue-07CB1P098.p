%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P098
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   88 (   5 equality;  18 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   78 (   0   ~;   2   |;   9   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   1   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   3 pred;    3 func;    7 numbers)

include('axioms.ax').

thf('n/0_type',type,(
    'n/0': $int )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_P: 'Equation',V_x: $int,V_y: $int] :
        ( ( V_P
          = ( 'poly-equation/1' @ ( 'cons/2' @ $real @ ( '^/2' @ ( $to_real @ 'n/0' ) @ 2.0 ) @ ( 'cons/2' @ $real @ ( $sum @ ( $product @ 2.0 @ ( $to_real @ 'n/0' ) ) @ -9.0 ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( $lesseq @ 0 @ 'n/0' )
        & ( $is_int @ 'n/0' )
        & ( $is_int @ V_x )
        & ( $is_int @ V_y )
        & ( ( ( V_x = V_y )
            & ( 'is-multiple-root-of/2' @ ( $to_real @ V_x ) @ V_P ) )
          | ( ( $less @ V_x @ V_y )
            & ( 'is-solution-of/2' @ ( $to_real @ V_x ) @ V_P )
            & ( 'is-solution-of/2' @ ( $to_real @ V_y ) @ V_P ) ) )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 0 @ ( 'cons/2' @ $int @ 0 @ ( 'cons/2' @ $int @ 0 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p_question,[])).

