%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE193
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   4 equality;  42 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :   67 (   0   ~;   0   |;  10   &;  57   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
        ( ( $less @ 0.0 @ V_t )
        & ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
            & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
            & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_A @ V_C ) )
            & ( ( '2d.distance/2' @ V_A @ V_D )
              = ( $product @ V_t @ ( '2d.distance/2' @ V_D @ V_B ) ) )
            & ( ( $product @ ( $sum @ V_t @ 1.0 ) @ ( '2d.distance/2' @ V_A @ V_E ) )
              = ( '2d.distance/2' @ V_E @ V_C ) )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_E ) @ ( '2d.line/2' @ V_C @ V_D ) @ V_P )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_P ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_F )
            & ( '2d.is-incenter-of/2' @ V_Q @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
            & ( '2d.colinear/3' @ V_A @ V_F @ V_Q )
            & ( ( '2d.distance/2' @ V_A @ V_C )
              = ( $product @ 12.0 @ ( '2d.distance/2' @ V_A @ V_B ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_t_dot_0: $real] : ( V_t_dot_0 = 3.0 ) ),
    answer_to(p_question,[])).

