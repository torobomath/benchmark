%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1974, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% In the triangle $ABC$, prove that there is a point $D$ on side $AB$ such that $CD$
%% is the geometric mean of $AD$ and $DB$ if and only if\[
%% \sin A \sin B \leq \sin^2 \frac{C}{2}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   50 (   1 equality;  21 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   47 (   0   ~;   0   |;   1   &;  44   @)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   3   !;   1   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
     => ( ? [V_D: '2d.Point'] :
            ( ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
            & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) )
              = ( 'sqrt/1' @ ( $product @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) ) ) ) )
      <=> ( $lesseq @ ( $product @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) @ ( '^/2' @ ( 'sin/1' @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) ) ) @ 2.0 ) ) ) ) )).

