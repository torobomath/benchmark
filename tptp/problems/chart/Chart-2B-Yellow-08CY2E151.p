%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E151
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  111 (  14 equality;  36 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   80 (   1   ~;   1   |;   9   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   0   !;   7   ?;  12   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_l: '2d.Shape',V_C: '2d.Shape',V_C0: '2d.Shape'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( $product @ V_m @ V_x_dot_0 ) @ 1.0 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 0.0
                = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( $sum @ ( $product @ -2.0 @ V_x ) @ ( $sum @ ( $product @ -4.0 @ V_y ) @ 4.0 ) ) ) ) ) ) )
        & ( V_C0 = V_C )
        & ( '2d.circle-type/1' @ V_C0 )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C0 ) @ V_l ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_l: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( $product @ V_m @ V_x_dot_0 ) @ 1.0 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 0.0
                = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( $sum @ ( $product @ -2.0 @ V_x ) @ ( $sum @ ( $product @ -4.0 @ V_y ) @ 4.0 ) ) ) ) ) ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( ( 'sqrt/1' @ 2.0 )
          = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_m_dot_0: $real] : ( V_m_dot_0 = 1.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( ( V_m_dot_0
        = ( $sum @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) )
      | ( V_m_dot_0
        = ( $difference @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ),
    answer_to(p2_question,[])).

