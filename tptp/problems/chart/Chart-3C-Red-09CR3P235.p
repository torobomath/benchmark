%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P235
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  157 (  16 equality;  31 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  117 (   0   ~;   0   |;   8   &; 109   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;   4   ?;  16   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   19 (   1 pred;    5 func;   13 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $product @ ( $sum @ ( $product @ -2.0 @ V_x ) @ 8.0 ) @ ( 'sqrt/1' @ ( $difference @ V_x @ 1.0 ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $sum @ ( $sum @ 10.0 @ ( $product @ -9.0 @ ( 'exp/1' @ ( $uminus @ V_x ) ) ) ) @ ( $uminus @ ( 'exp/1' @ V_x ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ ( $quotient @ 'Pi/0' @ 2.0 ) )
                & ( V_y
                  = ( '^/2' @ ( 'sin/1' @ ( $sum @ V_x @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) @ 2.0 ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 'Pi/0' )
                & ( V_y
                  = ( $product @ ( '^/2' @ ( $sum @ 1.0 @ ( 'cos/1' @ V_x ) ) @ 2.0 ) @ ( 'sin/1' @ ( $product @ 2.0 @ V_x ) ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ 24.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $sum @ ( $product @ 20.0 @ ( 'ln/1' @ 3.0 ) ) @ -16.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 'Pi/0' @ 4.0 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_S_dot_0: $real] : ( V_S_dot_0 = 3.0 ) ),
    answer_to(p4_question,[])).

