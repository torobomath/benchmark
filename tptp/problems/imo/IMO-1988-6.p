%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1988, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-18
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be positive integers such that $ab + 1$ divides $a^2 + b^2$.
%% Show that
%% ¥[
%% ¥frac{a^2 + b^2}{ab + 1}
%% ¥]
%% is the square of an integer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   33 (   0 equality;  10 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   32 (   0   ~;   0   |;   2   &;  29   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z'] :
      ( ( ( 'int.>/2' @ V_a @ 0 )
        & ( 'int.>/2' @ V_b @ 0 )
        & ( 'int.is-divisible-by/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ V_a @ V_b ) @ 1 ) ) )
     => ( 'int.is-square-number/1' @ ( 'int.div/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ V_a @ V_b ) @ 1 ) ) ) ) )).
