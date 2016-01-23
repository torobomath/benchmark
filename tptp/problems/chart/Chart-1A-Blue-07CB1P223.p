%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P223
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  123 (  15 equality;  47 variable)
%            Maximal formula depth :   24 (  15 average)
%            Number of connectives :   93 (   0   ~;   0   |;  15   &;  78   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;  13   ?;   4   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_cR: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: 'R',V_a: 'R',V_c: 'R',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Cir )
        & ( V_R
          = ( '2d.radius-of/1' @ V_Cir ) )
        & ( ( '*/2' @ 60 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
        & ( ( '*/2' @ 45 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_a = 3 )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( V_cR
          = ( 'cons/2' @ V_c @ ( 'cons/2' @ V_R @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_AC: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: 'R',V_a: 'R',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Cir )
        & ( V_R
          = ( '2d.radius-of/1' @ V_Cir ) )
        & ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_a
          = ( 'sqrt/1' @ 2 ) )
        & ( ( '*/2' @ 50 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( V_R = 1 )
        & ( V_AC
          = ( 'cons/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) @ ( 'cons/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cR_dot_0: 'ListOf' @ 'R'] :
      ( V_cR_dot_0
      = ( 'cons/2' @ ( 'sqrt/1' @ 6 ) @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_AC_dot_0: 'ListOf' @ 'R'] :
      ( V_AC_dot_0
      = ( 'cons/2' @ ( '*/2' @ 45 @ 'Degree/0' ) @ ( 'cons/2' @ ( '*/2' @ 85 @ 'Degree/0' ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).
