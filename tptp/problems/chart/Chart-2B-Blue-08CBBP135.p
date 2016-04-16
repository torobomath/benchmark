%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP135
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  176 (  10 equality;  54 variable)
%            Maximal formula depth :   29 (  16 average)
%            Number of connectives :  152 (   0   ~;   0   |;   6   &; 144   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   6   !;   6   ?;  16   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_S1: '3d.Shape',V_S2: '3d.Shape',V_p: '3d.Point'] :
        ( ( V_S1
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real,V_z_dot_1: $real] :
                ( 1.0
                = ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) @ ( '^/2' @ V_z_dot_1 @ 2.0 ) ) ) ) )
        & ( V_S2
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real,V_z_dot_0: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ ( '^/2' @ V_z_dot_0 @ 2.0 ) ) @ ( $product @ -4.0 @ V_x_dot_0 ) ) @ ( $product @ -2.0 @ V_y_dot_0 ) ) @ ( $product @ 4.0 @ V_z_dot_0 ) ) @ V_a ) ) ) )
        & ( '3d.intersect/3' @ V_S1 @ V_S2 @ V_p )
        & ! [V_x: $real,V_y: $real,V_z: $real] :
            ( ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ V_S1 )
           => ( $lesseq @ 0.0 @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ ( '^/2' @ V_z @ 2.0 ) ) @ ( $product @ -4.0 @ V_x ) ) @ ( $product @ -2.0 @ V_y ) ) @ ( $product @ 4.0 @ V_z ) ) @ V_a ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_S1: '3d.Shape',V_S2: '3d.Shape',V_p: '3d.Point'] :
        ( ( V_S1
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real,V_z_dot_1: $real] :
                ( 1.0
                = ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) @ ( '^/2' @ V_z_dot_1 @ 2.0 ) ) ) ) )
        & ( V_S2
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real,V_z_dot_0: $real] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ ( '^/2' @ V_z_dot_0 @ 2.0 ) ) @ ( $product @ -4.0 @ V_x_dot_0 ) ) @ ( $product @ -2.0 @ V_y_dot_0 ) ) @ ( $product @ 4.0 @ V_z_dot_0 ) ) @ V_a ) ) ) )
        & ( '3d.intersect/3' @ V_S1 @ V_S2 @ V_p )
        & ! [V_x: $real,V_y: $real,V_z: $real] :
            ( ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ V_S1 )
           => ( $lesseq @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ ( '^/2' @ V_z @ 2.0 ) ) @ ( $product @ -4.0 @ V_x ) ) @ ( $product @ -2.0 @ V_y ) ) @ ( $product @ 4.0 @ V_z ) ) @ V_a ) @ 0.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] : ( V_a_dot_0 = 5.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: $real] : ( V_a_dot_0 = -7.0 ) ),
    answer_to(p2_question,[])).

