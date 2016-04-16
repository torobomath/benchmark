%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR028
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   47 (   3 equality;  15 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   40 (   0   ~;   0   |;   7   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_n
        @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
          @ ^ [V_triple: ( 'ListOf' @ $int )] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( V_triple
                = ( 'cons/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_y @ ( 'cons/2' @ $int @ V_z @ ( 'nil/0' @ $int ) ) ) ) )
              & ( $is_int @ V_x )
              & ( $lesseq @ 0 @ V_x )
              & ( $is_int @ V_y )
              & ( $lesseq @ 0 @ V_y )
              & ( $is_int @ V_z )
              & ( $lesseq @ 0 @ V_z )
              & ( 7
                = ( $sum @ ( $sum @ V_x @ V_y ) @ V_z ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 36 ) ),
    answer_to(p_question,[])).

