%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE124
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  127 (   7 equality;  25 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :  111 (   0   ~;   0   |;   7   &; 104   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   5   ?;   7   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   0 pred;    4 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ '3d.Shape'
    @ ^ [V_S: '3d.Shape'] :
        ( V_S
        = ( '3d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real,V_z: $real] :
              ( 0.0
              = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ ( '^/2' @ V_z @ 2.0 ) ) @ ( $uminus @ V_x ) ) @ ( $product @ -4.0 @ V_y ) ) @ ( $product @ 3.0 @ V_z ) ) @ 4.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_S: '3d.Shape',V_Cx: $real,V_Cy: $real,V_Cz: $real,V_r: $real] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ V_Cx @ ( 'cons/2' @ $real @ V_Cy @ ( 'cons/2' @ $real @ V_Cz @ ( 'cons/2' @ $real @ V_r @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( '3d.sphere-type/1' @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 1.0 @ 0.0 @ 0.0 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 0.0 @ 1.0 @ 0.0 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 0.0 @ 0.0 @ 1.0 ) @ V_S )
        & ( '3d.on/2' @ ( '3d.point/3' @ 1.0 @ 1.0 @ 1.0 ) @ V_S )
        & ( ( '3d.point/3' @ V_Cx @ V_Cy @ V_Cz )
          = ( '3d.center-of/1' @ V_S ) )
        & ( V_r
          = ( '3d.radius-of/1' @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: '3d.Shape'] :
      ( V_S_dot_0
      = ( '3d.sphere/2' @ ( '3d.point/3' @ ( $quotient @ 1.0 @ 2.0 ) @ 2.0 @ ( $quotient @ -3.0 @ 2.0 ) ) @ ( $quotient @ ( 'sqrt/1' @ 10.0 ) @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

