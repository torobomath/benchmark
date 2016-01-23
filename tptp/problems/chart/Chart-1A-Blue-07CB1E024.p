%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1E024
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  185 (  12 equality;  75 variable)
%            Maximal formula depth :   28 (  17 average)
%            Number of connectives :  157 (   0   ~;   0   |;  18   &; 139   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :)
%            Number of variables   :   25 (   8 sgn;   0   !;  10   ?;   5   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_L: 'R'] :
      ? [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( ( '2d.radius-of/1' @ V_Cir )
          = 1 )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_Cir )
        & ( V_L
          = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) @ 2 ) ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_A ) ) @ 2 ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_D ) ) )
        & ( V_T
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_D ) ) )
        & ( V_theta
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) )
        & ( '</2' @ ( '*/2' @ 0 @ 'Degree/0' ) @ V_theta )
        & ( '</2' @ V_theta @ ( '*/2' @ 90 @ 'Degree/0' ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_maxL: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_L: 'R'] :
            ? [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
              ( ( '2d.circle-type/1' @ V_Cir )
              & ( ( '2d.radius-of/1' @ V_Cir )
                = 1 )
              & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
              & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_Cir )
              & ( V_L
                = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2 ) ) @ ( '+/2' @ ( '-/1' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) @ 2 ) ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_A ) ) @ 2 ) ) ) ) )
              & ( V_S
                = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_D ) ) )
              & ( V_T
                = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_D ) ) )
              & ( V_theta
                = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) )
              & ( '</2' @ ( '*/2' @ 0 @ 'Degree/0' ) @ V_theta )
              & ( '</2' @ V_theta @ ( '*/2' @ 90 @ 'Degree/0' ) ) ) )
        @ V_maxL ) )).

thf(p1_answer,answer,(
    ^ [V_L_dot_0: 'R'] :
      ( V_L_dot_0
      = ( '*/2' @ ( '//2' @ 4 @ ( 'tan/1' @ ( '//2' @ V_theta @ 'Degree/0' ) ) ) @ ( '+/2' @ V_S @ V_T ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_maxL_dot_0: 'R'] :
      ( V_maxL_dot_0
      = ( '*/2' @ 8 @ ( 'cos/1' @ ( '//2' @ V_theta @ 'Degree/0' ) ) ) ) ),
    answer_to(p2_question,[])).
