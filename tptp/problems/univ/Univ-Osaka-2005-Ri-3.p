%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2005, Science Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-02
%%
%% <PROBLEM-TEXT>
%% For the points $A$, $B$, $C$, and $D$ in a space, let $AB = 1$,
%% $AC = 2$, $AD = 3$ $\angle BAC =\angle CAD = 60^{\circ}$, and
%% $\angle DAB = 90^{\circ}$. Let $E$ be the point equidistant from
%% these four points. Find the length of the line segment $AE$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (  11 equality;  31 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   51 (   0   ~;   0   |;   9   &;  42   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_AE: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point'] :
        ( ( ( '3d.distance/2' @ V_A @ V_B )
          = 1 )
        & ( ( '3d.distance/2' @ V_A @ V_C )
          = 2 )
        & ( ( '3d.distance/2' @ V_A @ V_D )
          = 3 )
        & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_B @ V_A @ V_C ) )
          = ( '//2' @ 'Pi/0' @ 3 ) )
        & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_C @ V_A @ V_D ) )
          = ( '//2' @ 'Pi/0' @ 3 ) )
        & ( ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_D @ V_A @ V_B ) )
          = ( '//2' @ 'Pi/0' @ 2 ) )
        & ( ( '3d.distance/2' @ V_E @ V_A )
          = ( '3d.distance/2' @ V_E @ V_B ) )
        & ( ( '3d.distance/2' @ V_E @ V_B )
          = ( '3d.distance/2' @ V_E @ V_C ) )
        & ( ( '3d.distance/2' @ V_E @ V_C )
          = ( '3d.distance/2' @ V_E @ V_D ) )
        & ( V_AE
          = ( '3d.distance/2' @ V_A @ V_E ) ) ) )).

thf(p_answer,answer,(
    ^ [V_AE_dot_0: 'R'] :
      ( V_AE_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 10 ) @ 2 ) ) ),
    answer_to(p_question,[])).
