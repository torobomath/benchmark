%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2008, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% Let ABCD be a convex quadrilateral with |BA| != |BC|. Denote the incircles
%% of triangles ABC and ADC by omega1 and omega2 respectively. Suppose that
%% there exists a circle omega tangent to the ray BA beyond A and to the ray
%% BC beyond C, which is also tangent to the lines AD and CD.
%% Prove that the common external tangents of omega1 and omega2 intersect on
%% omega.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   90 (   2 equality;  56 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :   89 (   4   ~;   0   |;  20   &;  64   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   7   !;   5   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_Om1: '2d.Shape',V_Om2: '2d.Shape',V_Om: '2d.Shape'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
         != ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( '2d.circle-type/1' @ V_Om1 )
        & ( '2d.circle-type/1' @ V_Om2 )
        & ( '2d.is-inscribed-in/2' @ V_Om1 @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-inscribed-in/2' @ V_Om2 @ ( '2d.triangle/3' @ V_A @ V_D @ V_C ) )
        & ( '2d.circle-type/1' @ V_Om )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_D ) @ V_Om )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_C @ V_D ) @ V_Om )
        & ? [V_P_dot_0: '2d.Point'] :
            ( ( '2d.tangent/3' @ ( '2d.half-line/2' @ V_B @ V_A ) @ V_Om @ V_P_dot_0 )
            & ~ ( '2d.on/2' @ V_P_dot_0 @ ( '2d.seg/2' @ V_B @ V_A ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.tangent/3' @ ( '2d.half-line/2' @ V_B @ V_C ) @ V_Om @ V_P )
            & ~ ( '2d.on/2' @ V_P @ ( '2d.seg/2' @ V_B @ V_C ) ) ) )
     => ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_P_dot_1: '2d.Point'] :
          ( ( '2d.line-type/1' @ V_l1 )
          & ( '2d.line-type/1' @ V_l2 )
          & ( V_l1 != V_l2 )
          & ( '2d.tangent/2' @ V_l1 @ V_Om1 )
          & ( '2d.tangent/2' @ V_l1 @ V_Om2 )
          & ( '2d.tangent/2' @ V_l2 @ V_Om1 )
          & ( '2d.tangent/2' @ V_l2 @ V_Om2 )
          & ( '2d.intersect/3' @ V_l1 @ V_l2 @ V_P_dot_1 )
          & ( '2d.on/2' @ V_P_dot_1 @ V_Om ) ) ) )).

