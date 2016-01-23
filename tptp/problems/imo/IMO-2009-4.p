%% DOMAIN:    Geometry, elementary geometry
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2009, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-24
%%
%% <PROBLEM-TEXT>
%% Let ABC be a triangle with AB = AC. The angle bisectors of angle(CAB) and
%% angle(ABC) meet the sides BC and CA at D and E, respectively.
%% Let K be the incentre of triangle ADC.
%% Suppose that angle(BEK) = 45 Degree. Find all possible values of angle(CAB).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   72 (   5 equality;  38 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :   60 (   0   ~;   1   |;  10   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_CAB: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_D: '2d.Point',V_E: '2d.Point',V_K: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = ( '2d.distance/2' @ V_A @ V_C ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.is-angle-bisector/2' @ V_l @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( '2d.is-angle-bisector/2' @ V_m @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ V_l @ ( '2d.seg/2' @ V_B @ V_C ) @ V_D )
        & ( '2d.intersect/3' @ V_m @ ( '2d.seg/2' @ V_C @ V_A ) @ V_E )
        & ( '2d.is-incenter-of/2' @ V_K @ ( '2d.triangle/3' @ V_A @ V_D @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_E @ V_K ) )
          = ( '*/2' @ 45 @ 'Degree/0' ) )
        & ( V_CAB
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_CAB_dot_0: 'R'] :
      ( ( V_CAB_dot_0
        = ( '//2' @ 'Pi/0' @ 3 ) )
      | ( V_CAB_dot_0
        = ( '//2' @ 'Pi/0' @ 2 ) ) ) ),
    answer_to(p_question,[])).
