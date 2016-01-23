%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1975, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-22
%%
%% <PROBLEM-TEXT>
%% On the sides of an arbitrary triangle $ABC$, triangles $ABR$, $BCP$, $CAQ$ are
%% constructed externally with $\angle CBP = \angle CAQ = 45^{\circ}$,
%% $\angle BCP = \angle ACQ = 30^{\circ}$,
%% $\angle ABR = \angle BAR = 15^{\circ}$.
%% Prove that $\angle QRP = 90^{\circ}$ and $QR = RP$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  112 (   8 equality;  58 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :   95 (   0   ~;   0   |;  13   &;  81   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    7 (   1 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_R )
        & ( '2d.is-triangle/3' @ V_B @ V_C @ V_P )
        & ( '2d.is-triangle/3' @ V_C @ V_A @ V_Q )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_B @ V_P ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_Q ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_Q ) )
          = ( '*/2' @ 45 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_P ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_Q ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_Q ) )
          = ( '*/2' @ 30 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_a @ V_B @ V_R ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_R ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_R ) )
          = ( '*/2' @ 15 @ 'Degree/0' ) )
        & ( '2d.point-outside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_Q @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_R @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
     => ( ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_R @ V_P ) )
          = ( '*/2' @ 90 @ 'Degree/0' ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Q @ V_R ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_R @ V_P ) ) ) ) ) )).
