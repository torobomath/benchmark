%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R046
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  131 (   9 equality;  20 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  114 (   0   ~;   4   |;   6   &; 104   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   2   ?;   5   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   0 pred;    2 func;   11 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( 'int.is-natural-number/1' @ V_x )
        & ( 'int.is-natural-number/1' @ V_y )
        & ( 33
          = ( $sum @ ( $product @ 2 @ V_x ) @ ( $product @ 3 @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'Triple' @ $int @ $int @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'Triple' @ $int @ $int @ $int )
          @ ^ [V_triple: ( 'Triple' @ $int @ $int @ $int )] :
              ( ( 'int.is-natural-number/1' @ ( 'fst-of-3/1' @ $int @ $int @ $int @ V_triple ) )
              & ( 'int.is-natural-number/1' @ ( 'snd-of-3/1' @ $int @ $int @ $int @ V_triple ) )
              & ( 'int.is-natural-number/1' @ ( 'third-of-3/1' @ $int @ $int @ $int @ V_triple ) )
              & ( 10
                = ( $sum @ ( $sum @ ( 'fst-of-3/1' @ $int @ $int @ $int @ V_triple ) @ ( $product @ 3 @ ( 'snd-of-3/1' @ $int @ $int @ $int @ V_triple ) ) ) @ ( 'third-of-3/1' @ $int @ $int @ $int @ V_triple ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 15 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 12 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 9 @ ( 'cons/2' @ $int @ 5 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 6 @ ( 'cons/2' @ $int @ 7 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 9 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 9 ) ),
    answer_to(p2_question,[])).

