%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R152
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  156 (  10 equality;  52 variable)
%            Maximal formula depth :   36 (  24 average)
%            Number of connectives :  136 (   0   ~;   0   |;  13   &; 123   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    8 (   8   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :;   0   =)
%            Number of variables   :   27 (   0 sgn;   0   !;  12   ?;  15   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E: ( $real > '2d.Shape' ),V_Eab: ( $real > $real > '2d.Shape' ),V_l1: ( $real > '2d.Shape' ),V_D2: ( $real > $real > '2d.Shape' ),V_D3: ( $real > $real > '3d.Shape' )] :
        ( ( V_E
          = ( ^ [V_a_dot_3: $real] :
                ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                    ( $sum @ ( $sum @ ( $quotient @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_a_dot_3 @ 2.0 ) ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ -1.0 ) ) ) )
        & ( V_Eab
          = ( ^ [V_a_dot_2: $real,V_b_dot_3: $real] :
                ( '2d.set-of-cfun/1'
                @ ^ [V_x: $real,V_y: $real] :
                    ( ( $lesseq @ V_b_dot_3 @ V_x )
                    & ( $lesseq @ V_x @ V_a_dot_2 )
                    & ( 1.0
                      = ( $sum @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_a_dot_2 @ 2.0 ) ) @ ( '^/2' @ V_y @ 2.0 ) ) ) ) ) ) )
        & ( V_l1
          = ( ^ [V_b_dot_2: $real] :
                ( '2d.line/2' @ ( '2d.point/2' @ V_b_dot_2 @ 0.0 ) @ ( '2d.point/2' @ V_b_dot_2 @ 1.0 ) ) ) )
        & ( V_D2
          = ( ^ [V_a_dot_1: $real,V_b_dot_1: $real] :
                ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( V_Eab @ V_a_dot_1 @ V_b_dot_1 ) @ ( 'cons/2' @ '2d.Shape' @ ( V_l1 @ V_b_dot_1 ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_D3
          = ( ^ [V_a_dot_0: $real,V_b_dot_0: $real] :
                ( '3d.import-2d-shape/1' @ ( V_D2 @ V_a_dot_0 @ V_b_dot_0 ) ) ) )
        & ? [V_a: $real,V_b: $real,V_max: $real] :
            ( ( $less @ 0.0 @ V_a )
            & ( $less @ V_a @ 1.0 )
            & ? [V_by: $real] :
                ( '2d.tangent/3' @ ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ V_b @ V_by ) ) @ ( V_E @ V_a ) @ ( '2d.point/2' @ V_b @ V_by ) )
            & ( V_max
              = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( V_D3 @ V_a @ V_b ) @ '3d.x-axis/0' ) ) )
            & ( 'maximum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_v: $real] :
                  ? [V_a0: $real,V_b0: $real] :
                    ( ? [V_by0: $real] :
                        ( '2d.tangent/3' @ ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ V_b0 @ V_by0 ) ) @ ( V_E @ V_a0 ) @ ( '2d.point/2' @ V_b0 @ V_by0 ) )
                    & ( V_v
                      = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( V_D3 @ V_a0 @ V_b0 ) @ '3d.x-axis/0' ) ) ) ) )
              @ V_max )
            & ( V_answer
              = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_max @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ -1.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 2.0 ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ ( $sum @ -3.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) @ 4.0 ) @ 'Pi/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p_question,[])).

