%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2007, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Consider five points A, B, C, D and E such that ABCD is a parallelogram
%% and BCED is a cyclic quadrilateral. Let l be a line passing through A.
%% Suppose that l intersects the interior of the segment DC at F and intersects
%% line BC at G. Suppose also that EF = EG = EC. Prove that l is the bisector
%% of angle DAB.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   4 equality;  44 variable)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   60 (   2   ~;   0   |;  14   &;  43   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   8   !;   1   ?;   0   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_l: '2d.Shape'] :
      ( ( ( '2d.is-parallelogram/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-square/4' @ V_B @ V_C @ V_E @ V_D )
        & ? [V_S: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_S )
            & ( '2d.on/2' @ V_B @ V_S )
            & ( '2d.on/2' @ V_C @ V_S )
            & ( '2d.on/2' @ V_E @ V_S )
            & ( '2d.on/2' @ V_D @ V_S ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.on/2' @ V_A @ V_l )
        & ( '2d.intersect/3' @ V_l @ ( '2d.seg/2' @ V_D @ V_C ) @ V_F )
        & ( V_F != V_D )
        & ( V_F != V_C )
        & ( '2d.intersect/3' @ V_l @ ( '2d.line/2' @ V_B @ V_C ) @ V_G )
        & ( ( '2d.distance/2' @ V_E @ V_F )
          = ( '2d.distance/2' @ V_E @ V_G ) )
        & ( ( '2d.distance/2' @ V_E @ V_G )
          = ( '2d.distance/2' @ V_E @ V_C ) ) )
     => ( '2d.is-angle-bisector/2' @ V_l @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) )).

