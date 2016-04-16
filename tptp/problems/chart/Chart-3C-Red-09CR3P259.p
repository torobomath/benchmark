%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P259
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   53 (   6 equality;  14 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   39 (   0   ~;   0   |;   5   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.shape-enclosed-by/1'
            @ ( 'cons/2' @ '2d.Shape'
              @ ( '2d.set-of-cfun/1'
                @ ^ [V_x: $real,V_y: $real] :
                  ? [V_theta: $real] :
                    ( ( $lesseq @ 0.0 @ V_theta )
                    & ( $less @ V_theta @ ( $product @ 2.0 @ 'Pi/0' ) )
                    & ( V_x
                      = ( $product @ ( $sum @ 1.0 @ ( 'cos/1' @ V_theta ) ) @ ( 'cos/1' @ V_theta ) ) )
                    & ( V_y
                      = ( $product @ ( $sum @ 1.0 @ ( 'cos/1' @ V_theta ) ) @ ( 'sin/1' @ V_theta ) ) ) ) )
              @ ( 'nil/0' @ '2d.Shape' ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 8.0 @ 3.0 ) @ 'Pi/0' ) ) ),
    answer_to(p_question,[])).

