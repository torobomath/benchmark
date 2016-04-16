%% DOMAIN:    Geometry, transformational geometry
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1985, Problem 1
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% A circle has center on the side $AB$ of the cyclic quadrilateral $ABCD$. The other
%% three sides are tangent to the circle. Prove that $AD + BC = AB$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   1 equality;  29 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   45 (   0   ~;   0   |;   7   &;  37   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   5   !;   1   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    1 (   0 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_circle: '2d.Shape'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ? [V_circle0: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle0 )
            & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle0 ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_circle ) @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_B @ V_C ) @ V_circle )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_C @ V_D ) @ V_circle )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_D @ V_A ) @ V_circle ) )
     => ( ( $sum @ ( '2d.distance/2' @ V_A @ V_D ) @ ( '2d.distance/2' @ V_B @ V_C ) )
        = ( '2d.distance/2' @ V_A @ V_B ) ) ) )).

