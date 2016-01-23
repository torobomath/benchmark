%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1967, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Prove that if one and only one edge of a tetrahedron is greater than $1$,
%% then its volume is $\leq \frac{1}{8}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   57 (   2 equality;  27 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :   53 (   0   ~;   1   |;   3   &;  48   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    7 (   0 sgn;   4   !;   1   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
      ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ? [V_Sides: 'ListOf' @ '3d.Shape'] :
            ( ( V_Sides
              = ( 'cons/2' @ ( '3d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ ( '3d.seg/2' @ V_A @ V_C ) @ ( 'cons/2' @ ( '3d.seg/2' @ V_A @ V_D ) @ ( 'cons/2' @ ( '3d.seg/2' @ V_B @ V_C ) @ ( 'cons/2' @ ( '3d.seg/2' @ V_B @ V_D ) @ ( 'cons/2' @ ( '3d.seg/2' @ V_C @ V_D ) @ 'nil/0' ) ) ) ) ) ) )
            & ( 'some/2'
              @ ^ [V_s: '3d.Shape'] :
                  ( ( '>/2' @ ( '3d.length-of/1' @ V_s ) @ 1 )
                  & ( 'all/2'
                    @ ^ [V_t: '3d.Shape'] :
                        ( ( V_s = V_t )
                        | ( '<=/2' @ ( '3d.length-of/1' @ V_t ) @ 1 ) )
                    @ V_Sides ) )
              @ V_Sides ) ) )
     => ( '>=/2' @ ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) ) @ ( '//2' @ 1 @ 8 ) ) ) )).
