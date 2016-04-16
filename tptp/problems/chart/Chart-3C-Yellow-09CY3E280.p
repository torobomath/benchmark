%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E280
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (  12 equality;  33 variable)
%            Maximal formula depth :   29 (  16 average)
%            Number of connectives :   69 (   0   ~;   0   |;  11   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   9   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    0 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point',V_E1: '2d.Shape',V_E2: '2d.Shape',V_V1: $real,V_V2: $real] :
        ( ( $greatereq @ V_a @ 1.0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_0 )
                = ( 'exp/1' @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ ( 'exp/1' @ V_a ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( V_Q
          = ( '2d.point/2' @ 0.0 @ ( 'exp/1' @ V_a ) ) )
        & ( V_R
          = ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( V_S
          = ( '2d.point/2' @ V_a @ 1.0 ) )
        & ( V_E1
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_P @ V_Q ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_Q @ V_R ) @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_V1
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E1 ) @ '3d.y-axis/0' ) ) )
        & ( V_E2
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_P @ V_S ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_R @ V_S ) @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_V2
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E2 ) @ '3d.y-axis/0' ) ) )
        & ( V_V1 = V_V2 ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $real] : ( V_a_dot_0 = 2.0 ) ),
    answer_to(p_question,[])).

