%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3R144
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   7 equality;  18 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   47 (   0   ~;   0   |;   3   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   2   ?;   7   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
              ( ( '2d.y-coord/1' @ V_P )
              = ( $product @ ( '2d.x-coord/1' @ V_P ) @ ( 'ln/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape',V_L: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( $product @ ( '2d.x-coord/1' @ V_P ) @ ( 'ln/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ ( '2d.point/2' @ ( 'exp/1' @ 1.0 ) @ ( 'exp/1' @ 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'cons/2' @ '2d.Shape' @ V_L @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: $real,V_y: $real] :
        ( V_y
        = ( $product @ V_x @ ( 'ln/1' @ V_x ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 1.0 @ 4.0 ) ) ),
    answer_to(p2_question,[])).

