%% DOMAIN:    Geometry, transformational geometry
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1986, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-18
%%
%% <PROBLEM-TEXT>
%% A triangle $A_1A_2A_3$ and a point $P_0$ are given in the plane. We define $A_s =
%% A_{s-3}$ for all $s ¥ge 4$. We construct a set of points $P_1, P_2, P_3, ¥ldots$,
%% such that $P_{k+1}$ is the image of $P_k$ under a rotation with center $A_{k+1}$
%% through angle $120^{¥circ}$ clockwise (for $k = 0, 1, 2, ¥ldots$). Prove that if
%% $P_{1986} = P_0$, then the triangle $A_1 A_2 A_3$ is equilateral.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  111 (   8 equality;  38 variable)
%            Maximal formula depth :   28 (  28 average)
%            Number of connectives :   94 (   0   ~;   0   |;   8   &;  83   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A1: '2d.Point',V_A2: '2d.Point',V_A3: '2d.Point',V_P0: '2d.Point',V_P: 'Z' > '2d.Point',V_A: 'Z' > '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A1 @ V_A2 @ V_A3 )
        & ( ( 'LamApp/2' @ V_A @ 1 )
          = V_A1 )
        & ( ( 'LamApp/2' @ V_A @ 2 )
          = V_A2 )
        & ( ( 'LamApp/2' @ V_A @ 3 )
          = V_A3 )
        & ! [V_s: 'Z'] :
            ( ( 'int.>=/2' @ V_s @ 4 )
           => ( ( 'LamApp/2' @ V_A @ V_s )
              = ( 'LamApp/2' @ V_A @ ( 'int.-/2' @ V_s @ 3 ) ) ) )
        & ( ( 'LamApp/2' @ V_P @ 0 )
          = V_P0 )
        & ! [V_k: 'Z'] :
            ( ( 'int.<=/2' @ 0 @ V_k )
           => ( ( ( '2d.distance/2' @ ( 'LamApp/2' @ V_A @ ( 'int.+/2' @ V_k @ 1 ) ) @ ( 'LamApp/2' @ V_P @ V_k ) )
                = ( '2d.distance/2' @ ( 'LamApp/2' @ V_A @ ( 'int.+/2' @ V_k @ 1 ) ) @ ( 'LamApp/2' @ V_P @ ( 'int.+/2' @ V_k @ 1 ) ) ) )
              & ( ( '2d.mv*/2' @ ( '2d.matrix/4' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) ) @ ( '2d.vec/2' @ ( 'LamApp/2' @ V_A @ ( 'int.+/2' @ V_k @ 1 ) ) @ ( 'LamApp/2' @ V_P @ V_k ) ) )
                = ( '2d.vec/2' @ ( 'LamApp/2' @ V_A @ ( 'int.+/2' @ V_k @ 1 ) ) @ ( 'LamApp/2' @ V_P @ ( 'int.+/2' @ V_k @ 1 ) ) ) ) ) )
        & ( ( 'LamApp/2' @ V_P @ 1986 )
          = ( 'LamApp/2' @ V_P @ 0 ) ) )
     => ( '2d.is-equilateral-triangle/3' @ V_A1 @ V_A2 @ V_A3 ) ) )).
