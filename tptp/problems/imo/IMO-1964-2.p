%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1964, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Suppose $a$, $b$, $c$ are the sides of a triangle. Prove that\[
%% a^2(b + c - a) + b^2(c + a - b) + c^2(a + b - c) \leq 3abc.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   41 (   0 equality;  18 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   40 (   0   ~;   0   |;   0   &;  39   @)
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
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( 'are-triangle-edges/3' @ V_a @ V_b @ V_c )
     => ( '<=/2' @ ( '+/2' @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ ( '-/2' @ ( '+/2' @ V_b @ V_c ) @ V_a ) ) @ ( '+/2' @ ( '*/2' @ ( '^/2' @ V_b @ 2 ) @ ( '-/2' @ ( '+/2' @ V_a @ V_c ) @ V_b ) ) @ ( '*/2' @ ( '^/2' @ V_c @ 2 ) @ ( '-/2' @ ( '+/2' @ V_b @ V_a ) @ V_c ) ) ) ) @ ( '*/2' @ 3 @ ( '*/2' @ V_a @ ( '*/2' @ V_b @ V_c ) ) ) ) ) )).
