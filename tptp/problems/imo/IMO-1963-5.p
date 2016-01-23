%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 5
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Prove that $\cos\frac{\pi}{7} - \cos\frac{2\pi}{7} + \cos\frac{3\pi}{7} = \frac{1}{2}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   22 (   1 equality;   0 variable)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   19 (   0   ~;   0   |;   0   &;  19   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?;   0   ^)
%                                         (   0   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,
    ( ( '+/2' @ ( '-/2' @ ( 'cos/1' @ ( '//2' @ 'Pi/0' @ 7 ) ) @ ( 'cos/1' @ ( '//2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ 7 ) ) ) @ ( 'cos/1' @ ( '//2' @ ( '*/2' @ 3 @ 'Pi/0' ) @ 7 ) ) )
    = ( '//2' @ 1 @ 2 ) )).
