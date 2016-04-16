%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR017
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   4 equality;  17 variable)
%            Maximal formula depth :   19 (  10 average)
%            Number of connectives :   56 (   0   ~;   0   |;   7   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   3   ?;   7   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
            ? [V_x: $int,V_y: $int] :
              ( ( $is_int @ V_x )
              & ( $lesseq @ 1 @ V_x )
              & ( $lesseq @ V_x @ 5 )
              & ( $is_int @ V_y )
              & ( $lesseq @ 1 @ V_y )
              & ( $lesseq @ V_y @ 5 )
              & ( V_m
                = ( $sum @ ( $product @ 10 @ V_x ) @ V_y ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'SetOf' @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'SetOf' @ $int )
          @ ^ [V_s: ( 'SetOf' @ $int )] :
            ? [V_S: ( 'SetOf' @ $int )] :
              ( ( V_S
                = ( 'set-by-def/1' @ $int
                  @ ^ [V_s_dot_0: $int] :
                      ( 'member/2' @ $int @ V_s_dot_0 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) ) )
              & ( 'is-subset-of/2' @ $int @ V_s @ V_S ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 25 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 8 ) ),
    answer_to(p2_question,[])).

