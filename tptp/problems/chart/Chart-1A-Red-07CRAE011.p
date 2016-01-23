%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE011
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   6 equality;  27 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   60 (   0   ~;   0   |;  15   &;  44   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    7 (   0 sgn;   1   !;   0   ?;   6   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_m: 'Z'] :
      ( ( ( 9
          = ( 'int.gcd/2' @ V_m @ 18 ) )
        & ( 9
          = ( 'int.cardinality-of/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n: 'Z'] :
                  ( ( 'int.is-integer/1' @ V_n )
                  & ( 'int.</2' @ 0 @ V_n )
                  & ( 'int.</2' @ V_n @ V_m )
                  & ( 'int.is-divisible-by/2' @ V_m @ V_n ) ) ) ) ) )
     => ( 'int.<=/2'
        @ ( 'int.cardinality-of/1'
          @ ( 'set-by-def/1'
            @ ^ [V_n_dot_0: 'Z'] :
                ( ( 'int.is-prime/1' @ V_n_dot_0 )
                & ( 'int.</2' @ 0 @ V_n_dot_0 )
                & ( 'int.</2' @ V_n_dot_0 @ V_m )
                & ( 'int.is-divisible-by/2' @ V_m @ V_n_dot_0 ) ) ) )
        @ 2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'Z'] :
        ( ( 9
          = ( 'int.gcd/2' @ V_m @ 18 ) )
        & ( 9
          = ( 'int.cardinality-of/1'
            @ ( 'set-by-def/1'
              @ ^ [V_n_dot_0: 'Z'] :
                  ( ( 'int.is-integer/1' @ V_n_dot_0 )
                  & ( 'int.</2' @ 0 @ V_n_dot_0 )
                  & ( 'int.</2' @ V_n_dot_0 @ V_m )
                  & ( 'int.is-divisible-by/2' @ V_m @ V_n_dot_0 ) ) ) ) )
        & ( 1729
          = ( 'int.sum/1'
            @ ( 'int.set-to-list/1'
              @ ( 'set-by-def/1'
                @ ^ [V_n: 'Z'] :
                    ( ( 'int.is-integer/1' @ V_n )
                    & ( 'int.</2' @ 0 @ V_n )
                    & ( 'int.</2' @ V_n @ V_m )
                    & ( 'int.is-divisible-by/2' @ V_m @ V_n ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'Z'] : ( V_m_dot_0 = 1089 ) ),
    answer_to(p2_question,[])).
