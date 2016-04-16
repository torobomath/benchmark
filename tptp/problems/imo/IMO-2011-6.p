%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2011, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-24
%%
%% <PROBLEM-TEXT>
%% Let ABC be an acute triangle with circumcircle Gamma.
%% Let l be a tangent line to Gamma, and let la, lb and lc be the lines
%% obtained by reflecting l in the lines BC, CA and AB, respectively. Show that
%% the circumcircle of the triangle determined by the lines la, lb and lc
%% is tangent to the circle Gamma.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   0 equality;  39 variable)
%            Maximal formula depth :   31 (  31 average)
%            Number of connectives :   57 (   0   ~;   0   |;  12   &;  44   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_Gamma: '2d.Shape',V_l: '2d.Shape',V_la: '2d.Shape',V_lb: '2d.Shape',V_lc: '2d.Shape',V_S: '2d.Shape',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_Gamma )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Gamma )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/2' @ V_l @ V_Gamma )
        & ( '2d.line-symmetry-shapes/3' @ V_la @ V_l @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.line-symmetry-shapes/3' @ V_lb @ V_l @ ( '2d.line/2' @ V_C @ V_A ) )
        & ( '2d.line-symmetry-shapes/3' @ V_lc @ V_l @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.circle-type/1' @ V_S )
        & ( '2d.intersect/3' @ V_la @ V_lb @ V_D )
        & ( '2d.intersect/3' @ V_lb @ V_lc @ V_E )
        & ( '2d.intersect/3' @ V_lc @ V_la @ V_F )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_D @ V_E @ V_F ) @ V_S ) )
     => ( '2d.tangent/2' @ V_S @ V_Gamma ) ) )).

