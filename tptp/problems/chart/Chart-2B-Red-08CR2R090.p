%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2R090
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   81 (  10 equality;  21 variable)
%            Maximal formula depth :   20 (   8 average)
%            Number of connectives :   62 (   1   ~;   1   |;   9   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   2   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_l: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_m: $real] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( V_y_dot_1
                = ( $product @ V_m @ V_x_dot_1 ) ) ) )
        & ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( '^/2' @ ( $difference @ V_x_dot_0 @ 1.0 ) @ 2.0 ) ) ) )
        & ( V_P
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( V_A != V_B )
        & ( '2d.on/2' @ V_A @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( '2d.on/2' @ V_B @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( ( '2d.point/2' @ 'x/0' @ 'y/0' )
          = V_P ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( $less @ 'x/0' @ -1.0 )
        | ( $less @ 1.0 @ 'x/0' ) )
      & ( 'y/0'
        = ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'x/0' @ 2.0 ) ) @ ( $product @ -2.0 @ 'x/0' ) ) ) ) ),
    answer_to(p_question,[])).

