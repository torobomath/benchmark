%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P140
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   8 equality;  21 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   48 (   1   ~;   1   |;   5   &;  41   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   4   ?;   6   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
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

thf(p_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( ( V_m_dot_0
        = ( $sum @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) )
      | ( V_m_dot_0
        = ( $difference @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ),
    answer_to(p_question,[])).

