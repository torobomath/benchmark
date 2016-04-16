%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P099
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  185 (  14 equality;  44 variable)
%            Maximal formula depth :   26 (  13 average)
%            Number of connectives :  169 (   0   ~;   0   |;  20   &; 149   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;   8   ?;  10   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    2 func;   10 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_x: $int,V_y: $int] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'nil/0' @ $int ) ) ) )
        & ( 'int.is-natural-number/1' @ V_x )
        & ( $less @ V_x @ 10 )
        & ( 'int.is-natural-number/1' @ V_y )
        & ( $less @ V_y @ 10 )
        & ( 55
          = ( $sum @ ( $product @ 4 @ V_x ) @ ( $product @ 3 @ V_y ) ) ) ) )).

thf(p21_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'Pair' @ $int @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'Pair' @ $int @ $int )
          @ ^ [V_pair: ( 'Pair' @ $int @ $int )] :
            ? [V_x: $int,V_y: $int] :
              ( ( V_x
                = ( 'fst/1' @ $int @ $int @ V_pair ) )
              & ( V_y
                = ( 'snd/1' @ $int @ $int @ V_pair ) )
              & ( 'int.is-natural-number/1' @ V_x )
              & ( $lesseq @ V_x @ 20 )
              & ( 'int.is-natural-number/1' @ V_y )
              & ( $lesseq @ V_y @ 20 )
              & ( 55
                = ( $sum @ ( $product @ 4 @ V_x ) @ ( $product @ 3 @ V_y ) ) ) ) ) ) )).

thf(p22_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_min: ( 'Triple' @ $int @ $int @ $int )] :
        ( ( V_answer
          = ( 'cons/2' @ $int @ ( 'fst-of-3/1' @ $int @ $int @ $int @ V_min ) @ ( 'cons/2' @ $int @ ( 'snd-of-3/1' @ $int @ $int @ $int @ V_min ) @ ( 'nil/0' @ $int ) ) ) )
        & ( 'minimum/3' @ ( 'Triple' @ $int @ $int @ $int )
          @ ( 'set-by-def/1' @ ( 'Triple' @ $int @ $int @ $int )
            @ ^ [V_triple: ( 'Triple' @ $int @ $int @ $int )] :
              ? [V_x: $int,V_y: $int,V_xy: $int] :
                ( ( V_x
                  = ( 'fst-of-3/1' @ $int @ $int @ $int @ V_triple ) )
                & ( V_y
                  = ( 'snd-of-3/1' @ $int @ $int @ $int @ V_triple ) )
                & ( V_xy
                  = ( 'third-of-3/1' @ $int @ $int @ $int @ V_triple ) )
                & ( 'int.is-natural-number/1' @ V_x )
                & ( $lesseq @ V_x @ 20 )
                & ( 'int.is-natural-number/1' @ V_y )
                & ( $lesseq @ V_y @ 20 )
                & ( 55
                  = ( $sum @ ( $product @ 4 @ V_x ) @ ( $product @ 3 @ V_y ) ) )
                & ( V_xy
                  = ( $product @ V_x @ V_y ) ) ) )
          @ ^ [V_lhs: ( 'Triple' @ $int @ $int @ $int ),V_rhs: ( 'Triple' @ $int @ $int @ $int )] :
              ( $less @ ( 'third-of-3/1' @ $int @ $int @ $int @ V_lhs ) @ ( 'third-of-3/1' @ $int @ $int @ $int @ V_rhs ) )
          @ V_min ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ 7 @ ( 'cons/2' @ $int @ 9 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p21_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 5 ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ 13 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p22_question,[])).

