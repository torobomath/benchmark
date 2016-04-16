%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE011
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   80 (   6 equality;  27 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   65 (   0   ~;   0   |;  15   &;  49   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   1   !;   0   ?;   6   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   3 pred;    0 func;    6 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_m: $int] :
      ( ( ( 9
          = ( 'int.gcd/2' @ V_m @ 18 ) )
        & ( 9
          = ( 'int.cardinality-of/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n: $int] :
                  ( ( $is_int @ V_n )
                  & ( $less @ 0 @ V_n )
                  & ( $less @ V_n @ V_m )
                  & ( 'int.is-divisible-by/2' @ V_m @ V_n ) ) ) ) ) )
     => ( $lesseq
        @ ( 'int.cardinality-of/1'
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_n_dot_0: $int] :
                ( ( 'int.is-prime/1' @ V_n_dot_0 )
                & ( $less @ 0 @ V_n_dot_0 )
                & ( $less @ V_n_dot_0 @ V_m )
                & ( 'int.is-divisible-by/2' @ V_m @ V_n_dot_0 ) ) ) )
        @ 2 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_m: $int] :
        ( ( 9
          = ( 'int.gcd/2' @ V_m @ 18 ) )
        & ( 9
          = ( 'int.cardinality-of/1'
            @ ( 'set-by-def/1' @ $int
              @ ^ [V_n_dot_0: $int] :
                  ( ( $is_int @ V_n_dot_0 )
                  & ( $less @ 0 @ V_n_dot_0 )
                  & ( $less @ V_n_dot_0 @ V_m )
                  & ( 'int.is-divisible-by/2' @ V_m @ V_n_dot_0 ) ) ) ) )
        & ( 1729
          = ( 'int.sum/1'
            @ ( 'int.set-to-list/1'
              @ ( 'set-by-def/1' @ $int
                @ ^ [V_n: $int] :
                    ( ( $is_int @ V_n )
                    & ( $less @ 0 @ V_n )
                    & ( $less @ V_n @ V_m )
                    & ( 'int.is-divisible-by/2' @ V_m @ V_n ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $int] : ( V_m_dot_0 = 1089 ) ),
    answer_to(p2_question,[])).

