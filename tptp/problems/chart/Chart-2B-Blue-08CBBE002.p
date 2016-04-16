%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBE002
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  173 (  15 equality;  61 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :  143 (   0   ~;   0   |;  15   &; 128   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :;   0   =)
%            Number of variables   :   25 (   0 sgn;   0   !;  19   ?;   6   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    5 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: '2d.Vector',V_c: '2d.Vector',V_p: '2d.Vector',V_K: '2d.Shape',V_P: '2d.Point',V_x: $real,V_y: $real] :
        ( ( V_b
          = ( '2d.vec/2' @ V_A @ V_B ) )
        & ( V_c
          = ( '2d.vec/2' @ V_A @ V_C ) )
        & ( V_p
          = ( '2d.vec/2' @ V_A @ V_P ) )
        & ( 1.0
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( '2d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K )
        & ( '2d.on/2' @ V_P @ V_K )
        & ( V_p
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_x @ V_b ) @ ( '2d.sv*/2' @ V_y @ V_c ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E: '2d.Shape',V_x: $real,V_y: $real,V_u: $real,V_v: $real] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 0.0
                = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y_dot_0 @ 2.0 ) @ ( $sum @ ( $product @ V_x_dot_0 @ V_y_dot_0 ) @ ( $sum @ ( $uminus @ V_x_dot_0 ) @ ( $uminus @ V_y_dot_0 ) ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_E )
        & ( V_u
          = ( $sum @ V_x @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ V_y ) ) )
        & ( V_v
          = ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_u @ ( 'cons/2' @ $real @ V_v @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x_dot_0: $real,V_y_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_x_dot_0 @ ( 'cons/2' @ $real @ V_y_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( 0.0
        = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y_dot_0 @ 2.0 ) @ ( $sum @ ( $product @ V_x_dot_0 @ V_y_dot_0 ) @ ( $sum @ ( $uminus @ V_x_dot_0 ) @ ( $uminus @ V_y_dot_0 ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_u_dot_0: $real,V_v_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_u_dot_0 @ ( 'cons/2' @ $real @ V_v_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( $quotient @ 1.0 @ 3.0 )
        = ( $sum @ ( '^/2' @ ( $difference @ V_u_dot_0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_v_dot_0 @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 6.0 ) ) @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

