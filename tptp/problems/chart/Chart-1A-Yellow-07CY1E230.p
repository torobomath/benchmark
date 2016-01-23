%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E230
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   82 (   6 equality;  43 variable)
%            Maximal formula depth :   29 (  16 average)
%            Number of connectives :   68 (   0   ~;   0   |;  12   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;  10   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_Cir: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_AA: '3d.Point',V_BB: '3d.Point',V_Trapezoid: '3d.Shape',V_Sphere: '3d.Shape',V_TrancatedCone: '3d.Shape'] :
        ( ( '3d.circle-type/1' @ V_Cir )
        & ( '3d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_A @ V_D ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_B @ V_C ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( ( '//2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) ) )
          = ( '//2' @ 1 @ V_k ) )
        & ( '</2' @ 1 @ V_k )
        & ( '3d.point-symmetry/3' @ V_A @ V_AA @ V_D )
        & ( '3d.point-symmetry/3' @ V_B @ V_BB @ V_D )
        & ( V_Trapezoid
          = ( '3d.square/4' @ V_A @ V_B @ V_BB @ V_AA ) )
        & ( '3d.is-inscribed-in/2' @ V_Cir @ V_Trapezoid )
        & ( V_Sphere
          = ( '3d.solid-of-revolution/2' @ V_Cir @ ( '3d.line/2' @ V_C @ V_D ) ) )
        & ( V_TrancatedCone
          = ( '3d.solid-of-revolution/2' @ V_Trapezoid @ ( '3d.line/2' @ V_C @ V_D ) ) )
        & ( ( '//2' @ 7 @ 4 )
          = ( '//2' @ ( '3d.volume-of/1' @ V_TrancatedCone ) @ ( '3d.volume-of/1' @ V_Sphere ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: 'R'] : ( V_k_dot_0 = 2 ) ),
    answer_to(p_question,[])).
