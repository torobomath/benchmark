%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE192
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   4 equality;  29 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :   59 (   0   ~;   0   |;   6   &;  52   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   13 (   2 sgn;   8   !;   2   ?;   3   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,(
    ! [Tv5: $tType,Tv6: $tType] :
      ( 'Find/1'
      @ ^ [V_min: 'R'] :
        ! [V_O: '2d.Point',V_X: '2d.Point',V_Y: '2d.Point',V_A: '2d.Point',V_P: Tv5,V_Q: Tv6] :
          ( ( ( '2d.is-triangle/3' @ V_X @ V_O @ V_Y )
            & ( ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 )
              = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_X @ V_O @ V_Y ) ) )
            & ( '</2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_X @ V_O @ V_A ) ) )
            & ( '</2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_O @ V_Y ) ) )
            & ( 3
              = ( '2d.distance/2' @ V_O @ V_A ) ) )
         => ( 'minimum/2'
            @ ( 'set-by-def/1'
              @ ^ [V_v: 'R'] :
                ? [V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                  ( ( '2d.on/2' @ V_P_dot_0 @ ( '2d.line/2' @ V_O @ V_X ) )
                  & ( '2d.on/2' @ V_Q_dot_0 @ ( '2d.line/2' @ V_O @ V_Y ) )
                  & ( V_v
                    = ( '+/2' @ ( '2d.distance/2' @ V_A @ V_P_dot_0 ) @ ( '+/2' @ ( '2d.distance/2' @ V_P_dot_0 @ V_Q_dot_0 ) @ ( '2d.distance/2' @ V_Q_dot_0 @ V_A ) ) ) ) ) )
            @ V_min ) ) ) )).

thf(p_answer,answer,(
    ^ [V_min_dot_0: 'R'] : ( V_min_dot_0 = 3 ) ),
    answer_to(p_question,[])).
