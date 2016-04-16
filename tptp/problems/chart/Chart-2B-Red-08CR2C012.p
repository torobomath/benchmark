%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C012
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   29 (   2 equality;   5 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   23 (   0   ~;   0   |;   0   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( 0.0
              = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ ( $product @ -2.0 @ V_x ) ) @ ( $product @ 6.0 @ V_y ) ) @ -6.0 ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.circle/2' @ ( '2d.point/2' @ 1.0 @ -3.0 ) @ 4.0 ),
    answer_to(p_question,[])).

