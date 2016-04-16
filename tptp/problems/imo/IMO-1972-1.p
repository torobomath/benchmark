%% DOMAIN:    Combinatorics, pigeon-hole principle
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1972, Problem 1
%% SCORE:     5
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-12
%%
%% <PROBLEM-TEXT>
%% Prove that from a set of ten distinct two-digit numbers
%% (in the decimal system), it is possible to select two disjoint
%% subsets whose members have the same sum.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  108 (   5 equality;  46 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :  102 (   0   ~;   0   |;  15   &;  86   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   19 (   0 sgn;  11   !;   4   ?;   4   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   2 pred;    0 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_n0: $int,V_n1: $int,V_n2: $int,V_n3: $int,V_n4: $int,V_n5: $int,V_n6: $int,V_n7: $int,V_n8: $int,V_n9: $int,V_ns: ( 'ListOf' @ $int )] :
      ( ( ( V_ns
          = ( 'cons/2' @ $int @ V_n0 @ ( 'cons/2' @ $int @ V_n1 @ ( 'cons/2' @ $int @ V_n2 @ ( 'cons/2' @ $int @ V_n3 @ ( 'cons/2' @ $int @ V_n4 @ ( 'cons/2' @ $int @ V_n5 @ ( 'cons/2' @ $int @ V_n6 @ ( 'cons/2' @ $int @ V_n7 @ ( 'cons/2' @ $int @ V_n8 @ ( 'cons/2' @ $int @ V_n9 @ ( 'nil/0' @ $int ) ) ) ) ) ) ) ) ) ) ) )
        & ( 'all/2' @ $int
          @ ^ [V_m: $int] :
              ( ( $lesseq @ 10 @ V_m )
              & ( $lesseq @ V_m @ 99 ) )
          @ V_ns )
        & ( $less @ V_n0 @ V_n1 )
        & ( $less @ V_n1 @ V_n2 )
        & ( $less @ V_n2 @ V_n3 )
        & ( $less @ V_n3 @ V_n4 )
        & ( $less @ V_n4 @ V_n5 )
        & ( $less @ V_n5 @ V_n6 )
        & ( $less @ V_n6 @ V_n7 )
        & ( $less @ V_n7 @ V_n8 )
        & ( $less @ V_n8 @ V_n9 ) )
     => ? [V_ns1: ( 'ListOf' @ $int ),V_ns2: ( 'ListOf' @ $int ),V_ss1: ( 'SetOf' @ $int ),V_ss2: ( 'SetOf' @ $int )] :
          ( ( V_ss1
            = ( 'set-by-def/1' @ $int
              @ ^ [V_m_dot_2: $int] :
                  ( 'member/2' @ $int @ V_m_dot_2 @ V_ns1 ) ) )
          & ( V_ss2
            = ( 'set-by-def/1' @ $int
              @ ^ [V_m_dot_1: $int] :
                  ( 'member/2' @ $int @ V_m_dot_1 @ V_ns2 ) ) )
          & ( 'is-empty/1' @ $int @ ( 'set-intersection/2' @ $int @ V_ss1 @ V_ss2 ) )
          & ( ( 'set-union/2' @ $int @ V_ss1 @ V_ss2 )
            = ( 'set-by-def/1' @ $int
              @ ^ [V_m_dot_0: $int] :
                  ( 'member/2' @ $int @ V_m_dot_0 @ V_ns ) ) )
          & ( ( 'int.sum/1' @ V_ns1 )
            = ( 'int.sum/1' @ V_ns2 ) ) ) ) )).

