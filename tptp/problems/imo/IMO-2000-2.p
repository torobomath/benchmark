%% DOMAIN:    Algebra, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2000, Problem 2
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% A, B, C are positive reals with product 1. Prove that
%% (A - 1 + 1/B)(B - 1 + 1/C)(C - 1 + 1/A) <= 1.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   41 (   1 equality;  12 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   38 (   0   ~;   0   |;   3   &;  34   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: 'R',V_B: 'R',V_C: 'R'] :
      ( ( ( 1
          = ( '*/2' @ V_A @ ( '*/2' @ V_B @ V_C ) ) )
        & ( '</2' @ 0 @ V_A )
        & ( '</2' @ 0 @ V_B )
        & ( '</2' @ 0 @ V_C ) )
     => ( '<=/2' @ ( '*/2' @ ( '+/2' @ ( '-/2' @ V_A @ 1 ) @ ( '//2' @ 1 @ V_B ) ) @ ( '*/2' @ ( '+/2' @ ( '-/2' @ V_B @ 1 ) @ ( '//2' @ 1 @ V_C ) ) @ ( '+/2' @ ( '-/2' @ V_C @ 1 ) @ ( '//2' @ 1 @ V_A ) ) ) ) @ 1 ) ) )).
