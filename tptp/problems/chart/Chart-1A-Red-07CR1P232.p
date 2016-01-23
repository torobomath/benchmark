%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P232
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   3 equality;  30 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   52 (   0   ~;   0   |;   6   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_D @ V_E )
        & ( '2d.perpendicular/2' @ ( '2d.seg/2' @ V_A @ V_D ) @ ( '2d.seg/2' @ V_D @ V_E ) )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_A @ V_E ) )
        & ( '2d.on/2' @ V_B @ ( '2d.seg/2' @ V_A @ V_D ) )
        & ( '2d.perpendicular/2' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
          = ( '2d.area-of/1' @ ( '2d.square/4' @ V_C @ V_B @ V_D @ V_E ) ) )
        & ( ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) )
          = ( '//2' @ 1 @ V_x ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( '-/2' @ ( 'sqrt/1' @ 2 ) @ 1 ) ) ),
    answer_to(p_question,[])).
