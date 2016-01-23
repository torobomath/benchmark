%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1984, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% Prove that $0 ¥le yz + zx + xy - 2xyz ¥le 7/27$, where $x$, $y$ and $z$ are
%% non-negative real numbers for which $x + y + z = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   1 equality;  24 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   57 (   0   ~;   0   |;   4   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_x: 'R',V_y: 'R',V_z: 'R'] :
      ( ( ( '>=/2' @ V_x @ 0 )
        & ( '>=/2' @ V_y @ 0 )
        & ( '>=/2' @ V_z @ 0 )
        & ( ( '+/2' @ V_x @ ( '+/2' @ V_y @ V_z ) )
          = 1 ) )
     => ( ( '<=/2' @ 0 @ ( '-/2' @ ( '+/2' @ ( '*/2' @ V_x @ V_y ) @ ( '+/2' @ ( '*/2' @ V_y @ V_z ) @ ( '*/2' @ V_z @ V_x ) ) ) @ ( '*/2' @ 2 @ ( '*/2' @ V_x @ ( '*/2' @ V_y @ V_z ) ) ) ) )
        & ( '<=/2' @ ( '-/2' @ ( '+/2' @ ( '*/2' @ V_x @ V_y ) @ ( '+/2' @ ( '*/2' @ V_y @ V_z ) @ ( '*/2' @ V_z @ V_x ) ) ) @ ( '*/2' @ 2 @ ( '*/2' @ V_x @ ( '*/2' @ V_y @ V_z ) ) ) ) @ ( '//2' @ 7 @ 27 ) ) ) ) )).
