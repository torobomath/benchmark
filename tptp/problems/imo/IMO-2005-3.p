%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2005, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Let x, y, z be three positive reals such that xyz >= 1. Prove that
%% (x^5 - x^2)/(x^5 + y^2 + z^2) + (y^5 - y^2)/(x^2 + y^5 + z^2)
%% + (z^5 - z^2)/(x^2 + y^2 + z^5) >= 0.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   0 equality;  21 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   76 (   0   ~;   0   |;   3   &;  72   @)
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
      ( ( ( '>/2' @ V_x @ 0 )
        & ( '>/2' @ V_y @ 0 )
        & ( '>/2' @ V_z @ 0 )
        & ( '>=/2' @ ( '*/2' @ V_x @ ( '*/2' @ V_y @ V_z ) ) @ 1 ) )
     => ( '>=/2' @ ( '+/2' @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_x @ 5 ) @ ( '^/2' @ V_x @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_x @ 5 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '^/2' @ V_z @ 2 ) ) ) ) @ ( '+/2' @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_y @ 5 ) @ ( '^/2' @ V_y @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 5 ) @ ( '^/2' @ V_z @ 2 ) ) ) ) @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_z @ 5 ) @ ( '^/2' @ V_z @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '^/2' @ V_z @ 5 ) ) ) ) ) ) @ 0 ) ) )).
