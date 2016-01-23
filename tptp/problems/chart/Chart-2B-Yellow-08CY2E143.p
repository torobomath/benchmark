%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   7 equality;  19 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   33 (   0   ~;   0   |;   6   &;  27   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   5   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_min: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_F: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_A
          = ( '2d.point/2' @ -2 @ 1 ) )
        & ( V_B
          = ( '2d.point/2' @ 2 @ -1 ) )
        & ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ 1 ) ) ) )
        & ( '2d.on/2' @ V_P @ V_F )
        & ( V_min
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_P ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_P0: '2d.Point'] :
                ( ( '2d.on/2' @ V_P0 @ V_F )
                & ( V_v
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_P0 ) ) ) ) )
          @ V_min ) ) )).

thf(p_answer,answer,(
    ^ [V_min_dot_0: 'R'] :
      ( V_min_dot_0
      = ( '//2' @ 15 @ 8 ) ) ),
    answer_to(p_question,[])).
