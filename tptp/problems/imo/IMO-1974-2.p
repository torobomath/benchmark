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
%            Number of atoms       :   96 (   2 equality;  39 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   91 (   0   ~;   0   |;   3   &;  85   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    5 (   0 sgn;   3   !;   2   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
     => ( ( ? [V_D: '2d.Point'] :
              ( ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
              & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) )
                = ( 'sqrt/1' @ ( '*/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) ) ) ) )
         => ( '<=/2' @ ( '*/2' @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) @ ( '^/2' @ ( 'sin/1' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) ) ) @ 2 ) ) )
        & ( ( '<=/2' @ ( '*/2' @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) @ ( 'sin/1' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) @ ( '^/2' @ ( 'sin/1' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) ) ) @ 2 ) )
         => ? [V_D_dot_0: '2d.Point'] :
              ( ( '2d.on/2' @ V_D_dot_0 @ ( '2d.seg/2' @ V_A @ V_B ) )
              & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D_dot_0 ) )
                = ( 'sqrt/1' @ ( '*/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D_dot_0 ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D_dot_0 ) ) ) ) ) ) ) ) ) )).
