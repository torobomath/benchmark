%% DOMAIN:    Number Theory, number theory
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 3
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$ and $c$ be positive integers, no two of which have a common divisor
%% greater than $1$. Show that $2abc - ab - bc - ca$ is the largest integer which
%% cannot be expressed in the form $xbc + yca + zab$, where $x$, $y$ and $z$ are
%% non-negative integers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  121 (   2 equality;  54 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :  118 (   2   ~;   0   |;  14   &; 101   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :   10 (   0 sgn;   4   !;   6   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_n: 'Z'] :
      ( ( ( 'int.</2' @ 0 @ V_a )
        & ( 'int.</2' @ 0 @ V_b )
        & ( 'int.</2' @ 0 @ V_c )
        & ( 'int.are-coprime/2' @ V_a @ V_b )
        & ( 'int.are-coprime/2' @ V_b @ V_c )
        & ( 'int.are-coprime/2' @ V_c @ V_a )
        & ( 'int.is-integer/1' @ V_n )
        & ~ ( ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
                ( ( 'int.<=/2' @ 0 @ V_x )
                & ( 'int.<=/2' @ 0 @ V_y )
                & ( 'int.<=/2' @ 0 @ V_z )
                & ( V_n
                  = ( 'int.+/2' @ ( 'int.*/2' @ V_x @ ( 'int.*/2' @ V_b @ V_c ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ V_y @ ( 'int.*/2' @ V_c @ V_a ) ) @ ( 'int.*/2' @ V_z @ ( 'int.*/2' @ V_a @ V_b ) ) ) ) ) ) ) )
     => ( ~ ( ? [V_x_dot_0: 'Z',V_y_dot_0: 'Z',V_z_dot_0: 'Z'] :
                ( ( 'int.<=/2' @ 0 @ V_x_dot_0 )
                & ( 'int.<=/2' @ 0 @ V_y_dot_0 )
                & ( 'int.<=/2' @ 0 @ V_z_dot_0 )
                & ( ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ V_a @ ( 'int.*/2' @ V_b @ V_c ) ) ) @ ( 'int.+/2' @ ( 'int.-/1' @ ( 'int.*/2' @ V_a @ V_b ) ) @ ( 'int.+/2' @ ( 'int.-/1' @ ( 'int.*/2' @ V_b @ V_c ) ) @ ( 'int.-/1' @ ( 'int.*/2' @ V_c @ V_a ) ) ) ) )
                  = ( 'int.+/2' @ ( 'int.*/2' @ V_x_dot_0 @ ( 'int.*/2' @ V_b @ V_c ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ V_y_dot_0 @ ( 'int.*/2' @ V_c @ V_a ) ) @ ( 'int.*/2' @ V_z_dot_0 @ ( 'int.*/2' @ V_a @ V_b ) ) ) ) ) ) )
        & ( 'int.<=/2' @ V_n @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ V_a @ ( 'int.*/2' @ V_b @ V_c ) ) ) @ ( 'int.+/2' @ ( 'int.-/1' @ ( 'int.*/2' @ V_a @ V_b ) ) @ ( 'int.+/2' @ ( 'int.-/1' @ ( 'int.*/2' @ V_b @ V_c ) ) @ ( 'int.-/1' @ ( 'int.*/2' @ V_c @ V_a ) ) ) ) ) ) ) ) )).
