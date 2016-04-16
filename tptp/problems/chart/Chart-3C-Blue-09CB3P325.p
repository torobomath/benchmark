%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P325
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  131 (  10 equality;  28 variable)
%            Maximal formula depth :   21 (  10 average)
%            Number of connectives :  109 (   0   ~;   0   |;  13   &;  96   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   2   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   7   ?;   8   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    5 func;    5 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_L: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( $difference @ V_y_dot_0 @ ( '^/2' @ ( 'sin/1' @ ( $product @ 2.0 @ V_x_dot_0 ) ) @ 2.0 ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ ( $quotient @ 'Pi/0' @ 8.0 ) @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ V_P @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_P )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ V_L ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_O: '2d.Point',V_L: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( $difference @ V_y @ ( '^/2' @ ( 'sin/1' @ ( $product @ 2.0 @ V_x ) ) @ 2.0 ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ ( $quotient @ 'Pi/0' @ 8.0 ) @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( V_O = '2d.origin/0' )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ V_P @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_P )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_L @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'y/0'
        = ( $sum @ ( $sum @ ( $product @ 2.0 @ 'x/0' ) @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( $quotient @ ( $uminus @ 'Pi/0' ) @ 4.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $quotient @ ( '^/2' @ 'Pi/0' @ 2.0 ) @ 64.0 ) @ ( $quotient @ 1.0 @ 8.0 ) ) ) ),
    answer_to(p2_question,[])).

