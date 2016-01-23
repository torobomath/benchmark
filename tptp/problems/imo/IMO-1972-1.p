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
%            Number of atoms       :   87 (   5 equality;  46 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :   81 (   0   ~;   0   |;  15   &;  65   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   19 (   0 sgn;  11   !;   4   ?;   4   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_n0: 'Z',V_n1: 'Z',V_n2: 'Z',V_n3: 'Z',V_n4: 'Z',V_n5: 'Z',V_n6: 'Z',V_n7: 'Z',V_n8: 'Z',V_n9: 'Z',V_ns: 'ListOf' @ 'Z'] :
      ( ( ( V_ns
          = ( 'cons/2' @ V_n0 @ ( 'cons/2' @ V_n1 @ ( 'cons/2' @ V_n2 @ ( 'cons/2' @ V_n3 @ ( 'cons/2' @ V_n4 @ ( 'cons/2' @ V_n5 @ ( 'cons/2' @ V_n6 @ ( 'cons/2' @ V_n7 @ ( 'cons/2' @ V_n8 @ ( 'cons/2' @ V_n9 @ 'nil/0' ) ) ) ) ) ) ) ) ) ) )
        & ( 'all/2'
          @ ^ [V_m: 'Z'] :
              ( ( 'int.<=/2' @ 10 @ V_m )
              & ( 'int.<=/2' @ V_m @ 99 ) )
          @ V_ns )
        & ( 'int.</2' @ V_n0 @ V_n1 )
        & ( 'int.</2' @ V_n1 @ V_n2 )
        & ( 'int.</2' @ V_n2 @ V_n3 )
        & ( 'int.</2' @ V_n3 @ V_n4 )
        & ( 'int.</2' @ V_n4 @ V_n5 )
        & ( 'int.</2' @ V_n5 @ V_n6 )
        & ( 'int.</2' @ V_n6 @ V_n7 )
        & ( 'int.</2' @ V_n7 @ V_n8 )
        & ( 'int.</2' @ V_n8 @ V_n9 ) )
     => ? [V_ns1: 'ListOf' @ 'Z',V_ns2: 'ListOf' @ 'Z',V_ss1: 'SetOf' @ 'Z',V_ss2: 'SetOf' @ 'Z'] :
          ( ( V_ss1
            = ( 'set-by-def/1'
              @ ^ [V_m_dot_2: 'Z'] :
                  ( 'member/2' @ V_m_dot_2 @ V_ns1 ) ) )
          & ( V_ss2
            = ( 'set-by-def/1'
              @ ^ [V_m_dot_1: 'Z'] :
                  ( 'member/2' @ V_m_dot_1 @ V_ns2 ) ) )
          & ( 'is-empty/1' @ ( 'set-intersection/2' @ V_ss1 @ V_ss2 ) )
          & ( ( 'set-union/2' @ V_ss1 @ V_ss2 )
            = ( 'set-by-def/1'
              @ ^ [V_m_dot_0: 'Z'] :
                  ( 'member/2' @ V_m_dot_0 @ V_ns ) ) )
          & ( ( 'int.sum/1' @ V_ns1 )
            = ( 'int.sum/1' @ V_ns2 ) ) ) ) )).
