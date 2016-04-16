%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1984, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% Let $ABCD$ be a convex quadrilateral such that the line $CD$ is a tangent to the
%% circle on $AB$ as diameter. Prove that the line $AB$ is a tangent to the circle on
%% $CD$ as diameter if and only if the lines $BC$ and $AD$ are parallel.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   0 equality;  22 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   35 (   0   ~;   0   |;   5   &;  28   @)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   5   !;   1   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_K: '2d.Shape'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ V_K )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_C @ V_D ) @ V_K ) )
     => ( ? [V_K2: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_K2 )
            & ( '2d.is-diameter-of/2' @ ( '2d.seg/2' @ V_C @ V_D ) @ V_K2 )
            & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_B ) @ V_K2 ) )
      <=> ( '2d.parallel/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_A @ V_D ) ) ) ) )).

