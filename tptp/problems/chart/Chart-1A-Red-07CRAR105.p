%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR105
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    6 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  102 (   4 equality;  27 variable)
%            Maximal formula depth :   24 (   8 average)
%            Number of connectives :   94 (   0   ~;   0   |;   9   &;  84   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   4   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   2   !;   7   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    1 (   0 pred;    1 func;    0 numbers)

include('axioms.ax').

thf('O/0_type',type,(
    'O/0': '2d.Point' )).

thf('P/0_type',type,(
    'P/0': '2d.Point' )).

thf('X/0_type',type,(
    'X/0': '2d.Point' )).

thf('Y/0_type',type,(
    'Y/0': '2d.Point' )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ '2d.Point' )
    @ ^ [V_answer: ( 'ListOf' @ '2d.Point' )] :
        ( ( '2d.is-acute/1' @ ( '2d.angle/3' @ 'X/0' @ 'O/0' @ 'Y/0' ) )
        & ( '2d.point-inside-of/2' @ 'P/0' @ ( '2d.triangle/3' @ 'X/0' @ 'O/0' @ 'Y/0' ) )
        & ? [V_Q: '2d.Point',V_R: '2d.Point',V_min: $real] :
            ( ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ 'O/0' @ 'X/0' ) )
            & ( '2d.on/2' @ V_R @ ( '2d.seg/2' @ 'O/0' @ 'Y/0' ) )
            & ( V_min
              = ( $sum @ ( '2d.distance/2' @ 'P/0' @ V_Q ) @ ( $sum @ ( '2d.distance/2' @ V_Q @ V_R ) @ ( '2d.distance/2' @ V_R @ 'P/0' ) ) ) )
            & ( 'minimum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_v: $real] :
                  ? [V_Q1: '2d.Point',V_R1: '2d.Point'] :
                    ( V_v
                    = ( $sum @ ( '2d.distance/2' @ 'P/0' @ V_Q1 ) @ ( $sum @ ( '2d.distance/2' @ V_Q1 @ V_R1 ) @ ( '2d.distance/2' @ V_R1 @ 'P/0' ) ) ) ) )
              @ V_min )
            & ( V_answer
              = ( 'cons/2' @ '2d.Point' @ V_Q @ ( 'cons/2' @ '2d.Point' @ V_R @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ '2d.Point' )] :
    ? [V_Q_dot_0: '2d.Point',V_R_dot_0: '2d.Point'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ '2d.Point' @ V_Q_dot_0 @ ( 'cons/2' @ '2d.Point' @ V_R_dot_0 @ ( 'nil/0' @ '2d.Point' ) ) ) )
      & ! [V_S: '2d.Point',V_T: '2d.Point'] :
          ( ( ( '2d.line-symmetry/3' @ 'P/0' @ V_S @ ( '2d.line/2' @ 'O/0' @ 'X/0' ) )
            & ( '2d.line-symmetry/3' @ 'P/0' @ V_T @ ( '2d.line/2' @ 'O/0' @ 'Y/0' ) ) )
         => ( ( '2d.intersect/3' @ ( '2d.line/2' @ V_S @ V_T ) @ ( '2d.line/2' @ 'O/0' @ 'X/0' ) @ V_Q_dot_0 )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_S @ V_T ) @ ( '2d.line/2' @ 'O/0' @ 'Y/0' ) @ V_R_dot_0 ) ) ) ) ),
    answer_to(p_question,[])).

