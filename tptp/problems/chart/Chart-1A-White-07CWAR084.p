%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR084
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   43 (   6 equality;  15 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   29 (   0   ~;   0   |;   4   &;  24   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   10 (   1 sgn;   6   !;   1   ?;   3   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,(
    ! [Tv5: $tType] :
      ( 'Find/1'
      @ ^ [V_min: 'R'] :
        ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: Tv5] :
          ( ( ( V_A
              = ( '2d.point/2' @ 0 @ 0 ) )
            & ( V_B
              = ( '2d.point/2' @ 2 @ 0 ) )
            & ( V_C
              = ( '2d.point/2' @ 2 @ 4 ) )
            & ( V_D
              = ( '2d.point/2' @ 0 @ 4 ) ) )
         => ( 'minimum/2'
            @ ( 'set-by-def/1'
              @ ^ [V_v: 'R'] :
                ? [V_P_dot_0: '2d.Point'] :
                  ( ( '2d.on/2' @ V_P_dot_0 @ ( '2d.seg/2' @ V_B @ V_C ) )
                  & ( V_v
                    = ( '+/2' @ ( '2d.distance/2' @ V_A @ V_P_dot_0 ) @ ( '2d.distance/2' @ V_P_dot_0 @ ( '2d.midpoint-of/2' @ V_C @ V_D ) ) ) ) ) )
            @ V_min ) ) ) )).

thf(p_answer,answer,(
    ^ [V_min_dot_0: 'R'] : ( V_min_dot_0 = 5 ) ),
    answer_to(p_question,[])).
