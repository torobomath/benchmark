%% DOMAIN:    Geometry, sphere and other surfaces
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% Consider a cone of revolution with an inscribed sphere tangent to the base
%% of the cone. A cylinder is circumscribed about this sphere so
%% that one of its bases lies in the base of the cone. Let $V_1$ be the volume of
%% the cone and $V_2$ the volume of the cylinder.
%% (a) Prove that $V_1 \neq V_2$ .
%% (b) Find the smallest number $k$ for which $V_1 = kV_2$, for this case, construct
%% the angle subtended by a diameter of the base of the cone at the vertex of
%% the cone.
%% </PROBLEM-TEXT>
%%@ NOTE: the answer to p2_2 is used

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  135 (  15 equality;  57 variable)
%            Maximal formula depth :   24 (  15 average)
%            Number of connectives :  101 (   1   ~;   0   |;  27   &;  72   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   21 (   0 sgn;   5   !;  11   ?;   5   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_Cn: '3d.Shape',V_Sp: '3d.Shape',V_Cl: '3d.Shape',V_V1: 'R',V_V2: 'R'] :
      ( ( ( '3d.right-cone-type/1' @ V_Cn )
        & ( '3d.sphere-type/1' @ V_Sp )
        & ( '3d.cylinder-type/1' @ V_Cl )
        & ( '3d.is-inscribed-in/2' @ V_Sp @ V_Cn )
        & ( '3d.is-inscribed-in/2' @ V_Cn @ V_Cl )
        & ( ( '3d.extend-to-plane/1' @ ( '3d.base-of/1' @ V_Cn ) )
          = ( '3d.extend-to-plane/1' @ ( '3d.base-of/1' @ V_Cl ) ) )
        & ( V_V1
          = ( '3d.volume-of/1' @ V_Cn ) )
        & ( V_V2
          = ( '3d.volume-of/1' @ V_Cl ) ) )
     => ( V_V1 != V_V2 ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_min_k: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_k: 'R'] :
            ? [V_Cn: '3d.Shape',V_Sp: '3d.Shape',V_Cl: '3d.Shape',V_V1: 'R',V_V2: 'R'] :
              ( ( '3d.right-cone-type/1' @ V_Cn )
              & ( '3d.sphere-type/1' @ V_Sp )
              & ( '3d.cylinder-type/1' @ V_Cl )
              & ( '3d.is-inscribed-in/2' @ V_Sp @ V_Cn )
              & ( '3d.is-inscribed-in/2' @ V_Cn @ V_Cl )
              & ( ( '3d.extend-to-plane/1' @ ( '3d.base-of/1' @ V_Cn ) )
                = ( '3d.extend-to-plane/1' @ ( '3d.base-of/1' @ V_Cl ) ) )
              & ( V_V1
                = ( '3d.volume-of/1' @ V_Cn ) )
              & ( V_V2
                = ( '3d.volume-of/1' @ V_Cl ) )
              & ( V_V1
                = ( '*/2' @ V_k @ V_V2 ) ) ) )
        @ V_min_k ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_theta: 'R'] :
      ? [V_Cn: '3d.Shape',V_Sp: '3d.Shape',V_Cl: '3d.Shape',V_V1: 'R',V_V2: 'R'] :
        ( ( '3d.right-cone-type/1' @ V_Cn )
        & ( '3d.sphere-type/1' @ V_Sp )
        & ( '3d.cylinder-type/1' @ V_Cl )
        & ( '3d.is-inscribed-in/2' @ V_Sp @ V_Cn )
        & ( '3d.is-inscribed-in/2' @ V_Cn @ V_Cl )
        & ( ( '3d.extend-to-plane/1' @ ( '3d.base-of/1' @ V_Cn ) )
          = ( '3d.extend-to-plane/1' @ ( '3d.base-of/1' @ V_Cl ) ) )
        & ( V_V1
          = ( '3d.volume-of/1' @ V_Cn ) )
        & ( V_V2
          = ( '3d.volume-of/1' @ V_Cl ) )
        & ( V_V1
          = ( '*/2' @ ( '//2' @ 4 @ 3 ) @ V_V2 ) )
        & ? [V_P: '3d.Point'] :
            ( ( '3d.on/2' @ V_P @ ( '3d.boundary-of/1' @ ( '3d.base-of/1' @ V_Cn ) ) )
            & ( V_theta
              = ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_P @ ( '3d.vertice-of/1' @ V_Cn ) @ ( '3d.center-of/1' @ ( '3d.base-of/1' @ V_Cn ) ) ) ) ) ) ) )).

thf(p2_1_answer,answer,(
    ^ [V_min_k_dot_0: 'R'] :
      ( V_min_k_dot_0
      = ( '//2' @ 4 @ 3 ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_theta_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_theta_dot_0 )
      & ( '</2' @ V_theta_dot_0 @ ( '//2' @ 'Pi/0' @ 2 ) )
      & ( ( 'sin/1' @ V_theta_dot_0 )
        = ( '//2' @ 1 @ 3 ) ) ) ),
    answer_to(p2_2_question,[])).
