%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E187
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  284 (  27 equality;  81 variable)
%            Maximal formula depth :   24 (  12 average)
%            Number of connectives :  228 (   0   ~;   4   |;  32   &; 189   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   2   :;   0   =)
%            Number of variables   :   35 (   0 sgn;   3   !;  14   ?;  18   ^)
%                                         (  35   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('r/0_type',type,(
    'r/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_O
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( ( '^/2' @ 'r/0' @ 2.0 )
                = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
        & ( $less @ 0.0 @ 'r/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'r/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ! [V_Q: '2d.Point'] :
            ( ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_O @ V_C ) )
           => ( V_P = V_Q ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_O
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( ( '^/2' @ 'r/0' @ 2.0 )
                = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
        & ( $less @ 0.0 @ 'r/0' )
        & ( $less @ 0.0 @ 'a/0' )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'r/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( $less @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
        & ( $less @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.x-coord/1' @ V_R ) )
        & ! [V_T: '2d.Point'] :
            ( ( '2d.on/2' @ V_T @ ( '2d.intersection/2' @ V_O @ V_C ) )
           => ( ( V_P = V_T )
              | ( V_Q = V_T )
              | ( V_R = V_T ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_O: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_r: $real] :
        ( ( V_O
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( ( '^/2' @ V_r @ 2.0 )
                = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
        & ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ V_r )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( $less @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
        & ( $less @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.x-coord/1' @ V_R ) )
        & ! [V_T: '2d.Point'] :
            ( ( '2d.on/2' @ V_T @ ( '2d.intersection/2' @ V_O @ V_C ) )
           => ( ( V_P = V_T )
              | ( V_Q = V_T )
              | ( V_R = V_T ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'r/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'r/0' = 1.0 )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $lesseq @ 'a/0' @ ( $quotient @ 1.0 @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'r/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( 'r/0' = 1.0 )
      & ( $less @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $less @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' )
      & ( V_S_dot_0
        = ( $quotient @ ( $product @ ( $difference @ ( $product @ 2.0 @ 'a/0' ) @ 1.0 ) @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ 'a/0' ) @ 1.0 ) ) ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) ),
    answer_to(p3_question,[])).

