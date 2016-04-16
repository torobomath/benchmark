%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  131 (  13 equality;  29 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   99 (   0   ~;   0   |;  10   &;  89   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;   5   ?;  12   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ ( $quotient @ 'Pi/0' @ 2.0 ) )
                & ( V_y
                  = ( $uminus @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2.0 ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $product @ ( $difference @ 3.0 @ V_x ) @ ( 'exp/1' @ V_x ) ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ 1.0 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 2.0 @ 0.0 ) @ ( '2d.point/2' @ 2.0 @ 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) )).

thf(p21_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ V_y @ ( $product @ ( $difference @ 3.0 @ V_x ) @ ( 'exp/1' @ V_x ) ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 2.0 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_f ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 'Pi/0' @ 4.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $product @ 2.0 @ ( 'exp/1' @ 2.0 ) ) @ 4.0 ) ) ),
    answer_to(p2_question,[])).

thf(p21_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $product @ 2.0 @ ( 'exp/1' @ 2.0 ) ) @ 4.0 ) ) ),
    answer_to(p21_question,[])).

