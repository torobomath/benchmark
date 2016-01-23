%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR105
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   4 equality;  52 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :   85 (   0   ~;   0   |;   9   &;  75   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   20 (   0 sgn;   2   !;   5   ?;   3   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ '2d.Point'] :
        ( ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_X @ V_O @ V_Y ) )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_X @ V_O @ V_Y ) )
        & ? [V_Q_dot_0: '2d.Point',V_R_dot_0: '2d.Point',V_min: 'R'] :
            ( ( '2d.on/2' @ V_Q_dot_0 @ ( '2d.seg/2' @ V_O @ V_X ) )
            & ( '2d.on/2' @ V_R_dot_0 @ ( '2d.seg/2' @ V_O @ V_Y ) )
            & ( V_min
              = ( '+/2' @ ( '2d.distance/2' @ V_P @ V_Q_dot_0 ) @ ( '+/2' @ ( '2d.distance/2' @ V_Q_dot_0 @ V_R_dot_0 ) @ ( '2d.distance/2' @ V_R_dot_0 @ V_P ) ) ) )
            & ( 'minimum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_v: 'R'] :
                  ? [V_Q1: '2d.Point',V_R1: '2d.Point'] :
                    ( V_v
                    = ( '+/2' @ ( '2d.distance/2' @ V_P @ V_Q1 ) @ ( '+/2' @ ( '2d.distance/2' @ V_Q1 @ V_R1 ) @ ( '2d.distance/2' @ V_R1 @ V_P ) ) ) ) )
              @ V_min )
            & ( V_answer
              = ( 'cons/2' @ V_Q_dot_0 @ ( 'cons/2' @ V_R_dot_0 @ 'nil/0' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ '2d.Point'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_Q @ ( 'cons/2' @ V_R @ 'nil/0' ) ) )
      & ! [V_S: '2d.Point',V_T: '2d.Point'] :
          ( ( ( '2d.line-symmetry/3' @ V_P @ V_S @ ( '2d.line/2' @ V_O @ V_X ) )
            & ( '2d.line-symmetry/3' @ V_P @ V_T @ ( '2d.line/2' @ V_O @ V_Y ) ) )
         => ( ( '2d.intersect/3' @ ( '2d.line/2' @ V_S @ V_T ) @ ( '2d.line/2' @ V_O @ V_X ) @ V_Q )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_S @ V_T ) @ ( '2d.line/2' @ V_O @ V_Y ) @ V_R ) ) ) ) ),
    answer_to(p_question,[])).
