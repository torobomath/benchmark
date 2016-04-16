%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% Let $A^{\prime }$, $B^{\prime }$, and $C^{\prime }$ be the points
%% that internally divide the sides $AB$, $BC$, and $CA$ of
%% $\triangle ABC$ in a ratio of $2 : 1$, and let $A^{\prime\prime }$,
%% $B^{\prime\prime }$, and $C^{\prime\prime }$ be the points that
%% internally divide the sides $A^{\prime } B^{\prime }$,
%% $B^{\prime } C^{\prime }$, and $C^{\prime } A^{\prime }$ of
%% $\triangle A^{\prime } B^{\prime } C^{\prime }$ in a ratio of
%% $2 : 1$. Prove that the straight lines $A A^{\prime\prime }$,
%% $B B^{\prime\prime }$, and $C C^{\prime\prime }$ intersect with one
%% another at the centroid of $\triangle ABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   0 equality;  29 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   66 (   0   ~;   0   |;   6   &;  59   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   9   !;   1   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    0 func;    2 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point',V_App: '2d.Point',V_Bpp: '2d.Point',V_Cpp: '2d.Point'] :
      ( ( ( '2d.divide-internally/4' @ V_Ap @ ( '2d.seg/2' @ V_A @ V_B ) @ 2.0 @ 1.0 )
        & ( '2d.divide-internally/4' @ V_Bp @ ( '2d.seg/2' @ V_B @ V_C ) @ 2.0 @ 1.0 )
        & ( '2d.divide-internally/4' @ V_Cp @ ( '2d.seg/2' @ V_C @ V_A ) @ 2.0 @ 1.0 )
        & ( '2d.divide-internally/4' @ V_App @ ( '2d.seg/2' @ V_Ap @ V_Bp ) @ 2.0 @ 1.0 )
        & ( '2d.divide-internally/4' @ V_Bpp @ ( '2d.seg/2' @ V_Bp @ V_Cp ) @ 2.0 @ 1.0 )
        & ( '2d.divide-internally/4' @ V_Cpp @ ( '2d.seg/2' @ V_Cp @ V_Ap ) @ 2.0 @ 1.0 ) )
     => ? [V_G: '2d.Point'] :
          ( ( '2d.lines-intersect-at/2' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ V_A @ V_App ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ V_B @ V_Bpp ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ V_C @ V_Cpp ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) @ V_G )
          & ( '2d.is-center-of-gravity-of/2' @ V_G @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

