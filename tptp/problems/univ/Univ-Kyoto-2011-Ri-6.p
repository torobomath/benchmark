%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 6
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Consider the tetrahedron $ABCD$ in a space. Prove that a spherical
%% surface exists that simultaneously contains the four vertices $A$,
%% $B$, $C$, and $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   43 (   0 equality;  29 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :   42 (   0   ~;   0   |;   4   &;  37   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;  12   !;   1   ?;   0   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A1: $real,V_A2: $real,V_A3: $real,V_B1: $real,V_B2: $real,V_B3: $real,V_C1: $real,V_C2: $real,V_C3: $real,V_D1: $real,V_D2: $real,V_D3: $real] :
      ( ( '3d.is-tetrahedron/4' @ ( '3d.point/3' @ V_A1 @ V_A2 @ V_A3 ) @ ( '3d.point/3' @ V_B1 @ V_B2 @ V_B3 ) @ ( '3d.point/3' @ V_C1 @ V_C2 @ V_C3 ) @ ( '3d.point/3' @ V_D1 @ V_D2 @ V_D3 ) )
     => ? [V_S: '3d.Shape'] :
          ( ( '3d.sphere-type/1' @ V_S )
          & ( '3d.on/2' @ ( '3d.point/3' @ V_A1 @ V_A2 @ V_A3 ) @ V_S )
          & ( '3d.on/2' @ ( '3d.point/3' @ V_B1 @ V_B2 @ V_B3 ) @ V_S )
          & ( '3d.on/2' @ ( '3d.point/3' @ V_C1 @ V_C2 @ V_C3 ) @ V_S )
          & ( '3d.on/2' @ ( '3d.point/3' @ V_D1 @ V_D2 @ V_D3 ) @ V_S ) ) ) )).

