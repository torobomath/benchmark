%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P239
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (  11 equality;  24 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   53 (   0   ~;   0   |;   5   &;  47   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   1   !;   5   ?;   8   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   0 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ? [V_C1: ( $real > $real ),V_C2: ( $real > $real ),V_x: $real] :
      ( ( V_C1
        = ( ^ [V_x_dot_1: $real] :
              ( $product @ 2.0 @ ( 'sqrt/1' @ ( $difference @ V_x_dot_1 @ 1.0 ) ) ) ) )
      & ( V_C2
        = ( ^ [V_x_dot_0: $real] :
              ( $sum @ ( 'ln/1' @ ( $difference @ V_x_dot_0 @ 1.0 ) ) @ 2.0 ) ) )
      & ( ( V_C1 @ V_x )
        = ( V_C2 @ V_x ) )
      & ! [V_x0: $real] :
          ( ( ( V_C1 @ V_x0 )
            = ( V_C2 @ V_x0 ) )
         => ( V_x = V_x0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $product @ 2.0 @ ( 'sqrt/1' @ ( $difference @ V_x_dot_0 @ 1.0 ) ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $sum @ ( 'ln/1' @ ( $difference @ V_x @ 1.0 ) ) @ 2.0 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C1 @ ( 'cons/2' @ '2d.Shape' @ V_C2 @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $sum @ ( $quotient @ 1.0 @ 3.0 ) @ ( $quotient @ -1.0 @ ( 'exp/1' @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

