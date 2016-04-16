%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E287
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  109 (   9 equality;  27 variable)
%            Maximal formula depth :   20 (  10 average)
%            Number of connectives :   87 (   0   ~;   0   |;  14   &;  73   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   2   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   8   ?;   6   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('TX/0_type',type,(
    'TX/0': $real )).

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_TY: $real] :
      ? [V_C: '2d.Shape',V_L: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( $greater @ 'a/0' @ 0.0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_0 )
                = ( 'exp/1' @ ( $product @ 'a/0' @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ '2d.origin/0' @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_Q )
        & ( V_P
          = ( '2d.point/2' @ 'TX/0' @ V_TY ) )
        & ( '2d.on/2' @ V_P @ V_L ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C: '2d.Shape',V_L: '2d.Shape',V_E: '2d.Shape',V_Q: '2d.Point'] :
        ( ( $greater @ 'a/0' @ 0.0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( 'exp/1' @ ( $product @ 'a/0' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ '2d.origin/0' @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_Q )
        & ( V_E
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_L @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_TY_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_TY_dot_0
        = ( $product @ 'a/0' @ ( $product @ ( 'exp/1' @ 1.0 ) @ 'TX/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_V_dot_0
        = ( $quotient @ ( $product @ 2.0 @ ( $difference @ 3.0 @ ( 'exp/1' @ 1.0 ) ) ) @ ( $product @ 3.0 @ ( $product @ 'Pi/0' @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

