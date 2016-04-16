%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R093
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  254 (  20 equality;  78 variable)
%            Maximal formula depth :   35 (  22 average)
%            Number of connectives :  214 (   0   ~;   0   |;  20   &; 194   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   44 (   2 sgn;   0   !;  20   ?;  24   ^)
%                                         (  44   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_D1: '2d.Shape',V_D2: '2d.Shape',V_D3: '2d.Shape',V_D4: '2d.Shape',V_f: ( '2d.Point' > $real ),V_p: '2d.Point',V_x: $real,V_y: $real,V_max: $real] :
        ( ( V_D1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_3: $real,V_y_dot_3: $real] :
                ( $lesseq @ 0.0 @ V_y_dot_3 ) ) )
        & ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_2: $real,V_y_dot_2: $real] :
                ( $lesseq @ V_y_dot_2 @ ( $sum @ V_x_dot_2 @ 1.0 ) ) ) )
        & ( V_D3
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( $lesseq @ 3.0 @ ( $sum @ ( $product @ 2.0 @ V_x_dot_1 ) @ ( $product @ 3.0 @ V_y_dot_1 ) ) ) ) )
        & ( V_D4
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( $lesseq @ ( $sum @ ( $product @ 3.0 @ V_x_dot_0 ) @ V_y_dot_0 ) @ 9.0 ) ) )
        & ( V_f
          = ( ^ [V_P: '2d.Point'] :
                ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 3.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) )
        & ( V_p
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/1' @ ( 'cons/2' @ '2d.Shape' @ V_D1 @ ( 'cons/2' @ '2d.Shape' @ V_D2 @ ( 'cons/2' @ '2d.Shape' @ V_D3 @ ( 'cons/2' @ '2d.Shape' @ V_D4 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ( V_max
          = ( V_f @ V_p ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_p0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p0 @ ( '2d.intersection/1' @ ( 'cons/2' @ '2d.Shape' @ V_D1 @ ( 'cons/2' @ '2d.Shape' @ V_D2 @ ( 'cons/2' @ '2d.Shape' @ V_D3 @ ( 'cons/2' @ '2d.Shape' @ V_D4 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
                & ( V_v
                  = ( V_f @ V_p0 ) ) ) )
          @ V_max )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_max @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_D1: '2d.Shape',V_D2: '2d.Shape',V_D3: '2d.Shape',V_D4: '2d.Shape',V_f: ( '2d.Point' > $real ),V_p: '2d.Point',V_x: $real,V_y: $real,V_min: $real] :
        ( ( V_D1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_3: $real,V_y_dot_3: $real] :
                ( $lesseq @ 0.0 @ V_y_dot_3 ) ) )
        & ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_2: $real,V_y_dot_2: $real] :
                ( $lesseq @ V_y_dot_2 @ ( $sum @ V_x_dot_2 @ 1.0 ) ) ) )
        & ( V_D3
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( $lesseq @ 3.0 @ ( $sum @ ( $product @ 2.0 @ V_x_dot_1 ) @ ( $product @ 3.0 @ V_y_dot_1 ) ) ) ) )
        & ( V_D4
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( $lesseq @ ( $sum @ ( $product @ 3.0 @ V_x_dot_0 ) @ V_y_dot_0 ) @ 9.0 ) ) )
        & ( V_f
          = ( ^ [V_P: '2d.Point'] :
                ( $sum @ ( '2d.x-coord/1' @ V_P ) @ ( $product @ 3.0 @ ( '2d.y-coord/1' @ V_P ) ) ) ) )
        & ( V_p
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/1' @ ( 'cons/2' @ '2d.Shape' @ V_D1 @ ( 'cons/2' @ '2d.Shape' @ V_D2 @ ( 'cons/2' @ '2d.Shape' @ V_D3 @ ( 'cons/2' @ '2d.Shape' @ V_D4 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ( V_min
          = ( V_f @ V_p ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_p0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p0 @ ( '2d.intersection/1' @ ( 'cons/2' @ '2d.Shape' @ V_D1 @ ( 'cons/2' @ '2d.Shape' @ V_D2 @ ( 'cons/2' @ '2d.Shape' @ V_D3 @ ( 'cons/2' @ '2d.Shape' @ V_D4 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
                & ( V_v
                  = ( V_f @ V_p0 ) ) ) )
          @ V_min )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_min @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ 11.0 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p2_question,[])).

