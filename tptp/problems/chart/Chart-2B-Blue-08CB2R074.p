%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R074
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   37 (   6 equality;  13 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   23 (   0   ~;   0   |;   4   &;  19   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   4   ?;   5   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_min: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_F: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 0 @ -2 ) )
        & ( V_B
          = ( '2d.point/2' @ 4 @ 0 ) )
        & ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '^/2' @ V_x @ 2 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_P: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ V_F )
                & ( V_v
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_P ) ) ) ) )
          @ V_min ) ) )).

thf(p_answer,answer,(
    ^ [V_min_dot_0: 'R'] :
      ( ( '//2' @ 31 @ 8 )
      = V_min_dot_0 ) ),
    answer_to(p_question,[])).
