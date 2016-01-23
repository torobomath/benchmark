%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2003, Science Course, Problem 4a
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-04
%%
%% <PROBLEM-TEXT>
%% (a)
%%
%% (1) For the parallelogram $>ABCD$, let $AB = CD = a$, $BC = AD = b$,
%% $BD = c$, and $AC = d$. Then, prove that
%% $a^2 + b^2 =\frac{1}{2}(c^2 + d^2)$ is true.
%%
%% (2) When the $3$ positive numbers $a$, $b$, and $c$ satisfy
%% $a^2 + b^2 > c^2$, prove that it is possible to make a tetrahedron
%% whose faces are triangles with side lengths of $a$, $b$, and $c$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   99 (   9 equality;  50 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   79 (   0   ~;   0   |;  11   &;  66   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   11 (   0 sgn;   7   !;   4   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
      ( ( ( '3d.is-parallelogram/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( '3d.distance/2' @ V_C @ V_D ) )
        & ( ( '3d.distance/2' @ V_B @ V_C )
          = ( '3d.distance/2' @ V_A @ V_D ) ) )
     => ( ( '+/2' @ ( '^/2' @ ( '3d.distance/2' @ V_A @ V_B ) @ 2 ) @ ( '^/2' @ ( '3d.distance/2' @ V_B @ V_C ) @ 2 ) )
        = ( '//2' @ ( '+/2' @ ( '^/2' @ ( '3d.distance/2' @ V_B @ V_D ) @ 2 ) @ ( '^/2' @ ( '3d.distance/2' @ V_A @ V_C ) @ 2 ) ) @ 2 ) ) ) )).

thf(p2,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( ( '</2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ V_b )
        & ( '<=/2' @ V_b @ V_c )
        & ( '</2' @ ( '^/2' @ V_c @ 2 ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) )
     => ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
          ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
          & ( V_a
            = ( '3d.distance/2' @ V_A @ V_B ) )
          & ( V_b
            = ( '3d.distance/2' @ V_B @ V_C ) )
          & ( V_c
            = ( '3d.distance/2' @ V_C @ V_A ) )
          & ( V_b
            = ( '3d.distance/2' @ V_A @ V_D ) )
          & ( V_c
            = ( '3d.distance/2' @ V_B @ V_D ) )
          & ( V_a
            = ( '3d.distance/2' @ V_C @ V_D ) ) ) ) )).
