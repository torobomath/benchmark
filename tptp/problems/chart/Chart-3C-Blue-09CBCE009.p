%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE009
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  379 (  30 equality; 106 variable)
%            Maximal formula depth :   25 (  15 average)
%            Number of connectives :  322 (   5   ~;   0   |;  38   &; 279   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   39 (   0   :;   0   =)
%            Number of variables   :   45 (   0 sgn;   0   !;  25   ?;  20   ^)
%                                         (  45   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   17 (   1 pred;    3 func;   13 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 1.0
                = ( $sum @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ 25.0 ) @ ( $quotient @ ( '^/2' @ V_y @ 2.0 ) @ 16.0 ) ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( V_answer
          = ( 'cons/2' @ $real @ ( '2d.x-coord/1' @ V_F1 ) @ ( 'cons/2' @ $real @ ( '2d.y-coord/1' @ V_F1 ) @ ( 'cons/2' @ $real @ ( '2d.x-coord/1' @ V_F2 ) @ ( 'cons/2' @ $real @ ( '2d.y-coord/1' @ V_F2 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 1.0
                = ( $sum @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ 25.0 ) @ ( $quotient @ ( '^/2' @ V_y @ 2.0 ) @ 16.0 ) ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( $less @ 0.0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( $quotient @ 1.0 @ 2.0 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ ( '2d.distance/2' @ V_P @ V_F1 ) @ ( 'cons/2' @ $real @ ( '2d.distance/2' @ V_P @ V_F2 ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 1.0
                = ( $sum @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ 25.0 ) @ ( $quotient @ ( '^/2' @ V_y @ 2.0 ) @ 16.0 ) ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( $less @ 0.0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( $quotient @ 1.0 @ 2.0 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ ( '2d.x-coord/1' @ V_P ) @ ( 'cons/2' @ $real @ ( '2d.y-coord/1' @ V_P ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point',V_C: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 1.0
                = ( $sum @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ 25.0 ) @ ( $quotient @ ( '^/2' @ V_y @ 2.0 ) @ 16.0 ) ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( $less @ 0.0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( $quotient @ 1.0 @ 2.0 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( '2d.is-circumcenter-of/2' @ V_C @ ( '2d.triangle/3' @ V_P @ V_F1 @ V_F2 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_C @ V_F1 ) ) ) )).

thf(p5_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point',V_circle: '2d.Shape',V_x: $real,V_y: $real] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 1.0
                = ( $sum @ ( $quotient @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 25.0 ) @ ( $quotient @ ( '^/2' @ V_y_dot_0 @ 2.0 ) @ 16.0 ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) )
        & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( $less @ 0.0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( $quotient @ 1.0 @ 2.0 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_P @ V_F1 @ V_F2 ) @ V_circle )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -3.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 38.0 @ 7.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 32.0 @ 7.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ -5.0 @ 7.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 16.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 7.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( V_r_dot_0
      = ( $quotient @ ( $product @ 38.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 21.0 ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x_dot_1: $real,V_y_dot_1: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_x_dot_1 @ ( 'cons/2' @ $real @ V_y_dot_1 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( '^/2' @ ( $quotient @ ( $product @ 38.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 21.0 ) @ 2.0 )
        = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ ( $sum @ V_y_dot_1 @ ( $quotient @ ( $product @ -11.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 21.0 ) ) @ 2.0 ) ) ) ) ),
    answer_to(p5_question,[])).

