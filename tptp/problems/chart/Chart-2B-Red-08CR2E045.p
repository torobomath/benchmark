%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E045
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   4 equality;  32 variable)
%            Maximal formula depth :   23 (  18 average)
%            Number of connectives :   65 (   0   ~;   1   |;  11   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   13 (   0 sgn;   1   !;   5   ?;   5   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ 0 @ V_y )
                & ( '<=/2' @ V_y @ ( '+/2' @ ( '+/2' @ ( '-/1' @ ( '^/2' @ V_x @ 2 ) ) @ V_x ) @ V_a ) ) ) ) )
        & ( '<=/2' @ 0 @ V_a )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_P1: '2d.Point',V_P2: '2d.Point',V_P3: '2d.Point',V_P4: '2d.Point'] :
                ( ( '2d.is-regular-square/4' @ V_P1 @ V_P2 @ V_P3 @ V_P4 )
                & ! [V_P: '2d.Point'] :
                    ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.square/4' @ V_P1 @ V_P2 @ V_P3 @ V_P4 ) )
                   => ( '2d.on/2' @ V_P @ V_D ) )
                & ( '2d.on/2' @ V_P1 @ '2d.x-axis/0' )
                & ( '2d.on/2' @ V_P2 @ '2d.x-axis/0' )
                & ( V_v
                  = ( '2d.distance/2' @ V_P1 @ V_P2 ) ) ) )
          @ V_l ) ) )).

thf(p_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_a @ 1 )
        & ( V_l_dot_0
          = ( '-/2' @ ( 'sqrt/1' @ ( '+/2' @ ( '*/2' @ 4 @ V_a ) @ 5 ) ) @ 2 ) ) )
      | ( ( '</2' @ 1 @ V_a )
        & ( V_l_dot_0
          = ( 'sqrt/1' @ V_a ) ) ) ) ),
    answer_to(p_question,[])).
