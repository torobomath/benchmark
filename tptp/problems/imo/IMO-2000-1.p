%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2000, Problem 1
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% AB is tangent to the circles CAMN and NMBD. M lies
%% between C and D on the line CD, and CD is parallel to AB. The chords
%% NA and CM meet at P; the chords NB and MD meet at Q. The rays CA
%% and DB meet at E. Prove that PE = QE.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  104 (   2 equality;  64 variable)
%            Maximal formula depth :   38 (  38 average)
%            Number of connectives :  100 (   1   ~;   0   |;  20   &;  78   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_Gamma1: '2d.Shape',V_Gamma2: '2d.Shape',V_M: '2d.Point',V_N: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_Gamma1 )
        & ( '2d.circle-type/1' @ V_Gamma2 )
        & ( '2d.on/2' @ V_C @ V_Gamma1 )
        & ( '2d.on/2' @ V_A @ V_Gamma1 )
        & ( '2d.on/2' @ V_M @ V_Gamma1 )
        & ( '2d.on/2' @ V_N @ V_Gamma1 )
        & ( '2d.is-square/4' @ V_C @ V_A @ V_M @ V_N )
        & ( '2d.on/2' @ V_N @ V_Gamma2 )
        & ( '2d.on/2' @ V_M @ V_Gamma2 )
        & ( '2d.on/2' @ V_B @ V_Gamma2 )
        & ( '2d.on/2' @ V_D @ V_Gamma2 )
        & ( '2d.is-square/4' @ V_N @ V_M @ V_B @ V_D )
        & ( V_M != V_N )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_B ) @ V_Gamma1 )
        & ( '2d.tangent/2' @ ( '2d.line/2' @ V_A @ V_B ) @ V_Gamma2 )
        & ( '2d.on/2' @ V_M @ ( '2d.line/2' @ V_C @ V_D ) )
        & ( '2d.vec-opp-direction/2' @ ( '2d.vec/2' @ V_C @ V_M ) @ ( '2d.vec/2' @ V_D @ V_M ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_C @ V_D ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ ( '2d.seg/2' @ V_A @ V_N ) @ ( '2d.seg/2' @ V_C @ V_M ) ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ ( '2d.seg/2' @ V_B @ V_N ) @ ( '2d.seg/2' @ V_M @ V_D ) ) )
        & ( '2d.on/2' @ V_E @ ( '2d.intersection/2' @ ( '2d.line/2' @ V_C @ V_A ) @ ( '2d.line/2' @ V_D @ V_B ) ) ) )
     => ( ( '2d.distance/2' @ V_E @ V_P )
        = ( '2d.distance/2' @ V_E @ V_Q ) ) ) )).
