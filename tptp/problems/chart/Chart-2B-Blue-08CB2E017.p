%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2E017
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  269 (  13 equality;  87 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  233 (   0   ~;   0   |;  16   &; 213   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   37 (   0 sgn;   8   !;  13   ?;  16   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    5 func;    5 numbers)

include('axioms.ax').

thf(p3_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_M: $real] :
      ? [V_x0: $real,V_y0: $real,V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 2.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1.0 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_M
          = ( $sum @ ( 'abs/1' @ V_x0 ) @ ( 'abs/1' @ ( $product @ 2.0 @ V_y0 ) ) ) )
        & ! [V_x: $real,V_y: $real] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( $lesseq @ ( $sum @ ( 'abs/1' @ V_x ) @ ( 'abs/1' @ ( $product @ 2.0 @ V_y ) ) ) @ V_M ) ) ) )).

thf(p3_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_x0: $real,V_y0: $real,V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 2.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1.0 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_m
          = ( $sum @ ( 'abs/1' @ V_x0 ) @ ( 'abs/1' @ ( $product @ 2.0 @ V_y0 ) ) ) )
        & ! [V_x: $real,V_y: $real] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( $greatereq @ ( $sum @ ( 'abs/1' @ V_x ) @ ( 'abs/1' @ ( $product @ 2.0 @ V_y ) ) ) @ V_m ) ) ) )).

thf(p2_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_M: $real] :
      ? [V_x0: $real,V_y0: $real,V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 2.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1.0 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_M
          = ( $sum @ V_x0 @ ( $product @ 2.0 @ V_y0 ) ) )
        & ! [V_x: $real,V_y: $real] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( $lesseq @ ( $sum @ V_x @ ( $product @ 2.0 @ V_y ) ) @ V_M ) ) ) )).

thf(p2_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_x0: $real,V_y0: $real,V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 2.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1.0 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_m
          = ( $sum @ V_x0 @ ( $product @ 2.0 @ V_y0 ) ) )
        & ! [V_x: $real,V_y: $real] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( $greatereq @ ( $sum @ V_x @ ( $product @ 2.0 @ V_y ) ) @ V_m ) ) ) )).

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Point'
    @ ^ [V_Dp: '2d.Point'] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( $lesseq @ ( $sum @ ( 'abs/1' @ ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 2.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1.0 ) ) )
        & ( '2d.on/2' @ V_Dp @ V_D ) ) )).

thf(p3_1_answer,answer,(
    ^ [V_M_dot_0: $real] :
      ( V_M_dot_0
      = ( $quotient @ 5.0 @ 3.0 ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_m_dot_0: $real] : ( V_m_dot_0 = 0.0 ) ),
    answer_to(p3_2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_M_dot_0: $real] : ( V_M_dot_0 = 1.0 ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( V_m_dot_0
      = ( $uminus @ 1.0 ) ) ),
    answer_to(p2_2_question,[])).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: $real,V_y: $real] :
        ( ( $lesseq @ V_y @ ( $sum @ ( $uminus @ V_x ) @ ( $quotient @ 1.0 @ 3.0 ) ) )
        & ( $lesseq @ ( $difference @ ( $uminus @ V_x ) @ ( $quotient @ 1.0 @ 3.0 ) ) @ V_y )
        & ( $lesseq @ V_y @ ( $sum @ V_x @ 1.0 ) )
        & ( $lesseq @ ( $difference @ V_x @ 1.0 ) @ V_y ) ) ),
    answer_to(p1_question,[])).

