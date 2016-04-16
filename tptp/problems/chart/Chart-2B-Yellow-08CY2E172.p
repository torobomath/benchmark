%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E172
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   88 (  11 equality;  35 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :   67 (   1   ~;   1   |;  10   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;  11   ?;   6   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_l: '2d.Shape',V_F: '2d.Shape',V_M: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_x: $real,V_y: $real,V_m: $real] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( V_y_dot_1
                = ( $product @ V_m @ V_x_dot_1 ) ) ) )
        & ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 1.0 ) ) ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_P @ V_Q ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_m @ ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_M ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_m_dot_0: $real,V_x_dot_2: $real,V_y_dot_2: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_m_dot_0 @ ( 'cons/2' @ $real @ V_x_dot_2 @ ( 'cons/2' @ $real @ V_y_dot_2 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( V_m_dot_0
        = ( $product @ 2.0 @ V_x_dot_2 ) )
      & ( V_y_dot_2
        = ( $product @ 2.0 @ ( '^/2' @ V_x_dot_2 @ 2.0 ) ) )
      & ( ( $less @ V_x_dot_2 @ -1.0 )
        | ( $less @ 1.0 @ V_x_dot_2 ) ) ) ),
    answer_to(p_question,[])).

