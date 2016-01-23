%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP137
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  201 (  19 equality;  90 variable)
%            Maximal formula depth :   24 (  15 average)
%            Number of connectives :  161 (   0   ~;   0   |;  26   &; 135   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :)
%            Number of variables   :   27 (   0 sgn;   0   !;  21   ?;   6   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_a: 'R',V_b: 'R'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 8 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_B ) )
          = V_b )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_E ) )
          = 9 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 12 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_C ) )
          = 2 )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_D @ V_E ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_xy: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_x: 'R',V_y: 'R'] :
        ( ( '2d.parallel/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_F ) )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_A @ V_D ) ) )
        & ( V_x
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_C @ V_D ) ) )
        & ( V_y
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_F @ V_A ) ) )
        & ( ( '*/2' @ 55 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_F @ V_E @ V_C ) ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_E ) @ ( '2d.seg/2' @ V_B @ V_C ) @ V_F )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_E @ V_D ) )
        & ( V_xy
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_O: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( V_O
          = ( '2d.center-of/1' @ V_Cir ) )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.on/2' @ V_O @ ( '2d.seg/2' @ V_B @ V_D ) )
        & ( ( '*/2' @ 56 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_D ) ) )
        & ( V_x
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_D @ V_B ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
      ( V_ab_dot_0
      = ( 'cons/2' @ 6 @ ( 'cons/2' @ ( '//2' @ 8 @ 3 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_xy_dot_0: 'ListOf' @ 'R'] :
      ( V_xy_dot_0
      = ( 'cons/2' @ ( '*/2' @ 110 @ 'Degree/0' ) @ ( 'cons/2' @ ( '*/2' @ 125 @ 'Degree/0' ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '*/2' @ 22 @ 'Degree/0' ) ) ),
    answer_to(p3_question,[])).
