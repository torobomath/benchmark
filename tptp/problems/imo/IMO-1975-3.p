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

% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  112 (   8 equality;  57 variable)
%            Maximal formula depth :   24 (  13 average)
%            Number of connectives :   95 (   0   ~;   0   |;  13   &;  81   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   1   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    1 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': '2d.Point' )).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_R )
        & ( '2d.is-triangle/3' @ V_B @ V_C @ V_P )
        & ( '2d.is-triangle/3' @ V_C @ V_A @ V_Q )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_B @ V_P ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_Q ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_Q ) )
          = ( $product @ 45.0 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_P ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_Q ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_Q ) )
          = ( $product @ 30.0 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ 'a/0' @ V_B @ V_R ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_R ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_R ) )
          = ( $product @ 15.0 @ 'Degree/0' ) )
        & ( '2d.point-outside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_Q @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.point-outside-of/2' @ V_R @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
     => ( ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_Q @ V_R @ V_P ) )
          = ( $product @ 90.0 @ 'Degree/0' ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Q @ V_R ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_R @ V_P ) ) ) ) ) )).

