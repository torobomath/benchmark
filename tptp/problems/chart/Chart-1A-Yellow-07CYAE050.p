%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE050
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   94 (   6 equality;  30 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   80 (   0   ~;   0   |;  14   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
          @ ^ [V_answer: ( 'ListOf' @ $int )] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( V_answer
                = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'cons/2' @ $int @ V_z @ ( 'nil/0' @ $int ) ) ) ) )
              & ( $is_int @ V_x )
              & ( $lesseq @ 0 @ V_x )
              & ( $is_int @ V_y )
              & ( $lesseq @ 0 @ V_y )
              & ( $is_int @ V_z )
              & ( $lesseq @ 0 @ V_z )
              & ( 9
                = ( $sum @ ( $sum @ V_x @ V_y ) @ V_z ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
          @ ^ [V_answer: ( 'ListOf' @ $int )] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( V_answer
                = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'cons/2' @ $int @ V_z @ ( 'nil/0' @ $int ) ) ) ) )
              & ( $is_int @ V_x )
              & ( $lesseq @ 0 @ V_x )
              & ( $is_int @ V_y )
              & ( $lesseq @ 0 @ V_y )
              & ( $is_int @ V_z )
              & ( $lesseq @ 0 @ V_z )
              & ( 8
                = ( $sum @ ( $sum @ V_x @ V_y ) @ V_z ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 55 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 21 ) ),
    answer_to(p2_question,[])).

