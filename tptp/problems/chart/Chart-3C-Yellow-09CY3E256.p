%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E256
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  128 (  12 equality;  21 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   98 (   0   ~;   0   |;   5   &;  93   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   1   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   3   ?;   9   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   1 pred;    5 func;   10 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 4.0 ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2.0 ) ) ) @ 2.0 ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( ( '2d.y-coord/1' @ V_P )
                  = ( $difference @ ( $product @ 2.0 @ ( 'sin/1' @ ( '2d.x-coord/1' @ V_P ) ) ) @ ( 'sin/1' @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_P ) ) ) ) )
                & ( $lesseq @ 0.0 @ 'x/0' )
                & ( $lesseq @ 'x/0' @ ( $product @ 2.0 @ 'Pi/0' ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( $sum @ 10.0 @ ( $sum @ ( $uminus @ ( $product @ 9.0 @ ( 'exp/1' @ ( $uminus @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) @ ( $uminus @ ( 'exp/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ 8.0 @ ( $difference @ 3.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] : ( V_S_dot_0 = 8.0 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $product @ 20.0 @ ( 'ln/1' @ 3.0 ) ) @ 16.0 ) ) ),
    answer_to(p3_question,[])).

