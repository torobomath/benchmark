%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3C018
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  184 (  22 equality;  38 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  132 (   0   ~;   0   |;  12   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   26 (   0 sgn;   0   !;  10   ?;  16   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $quotient @ 1.0 @ V_x ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 'Napier/0' @ 0.0 ) @ ( '2d.point/2' @ 'Napier/0' @ 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $quotient @ 1.0 @ ( 'sqrt/1' @ V_x ) ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 2.0 @ 0.0 ) @ ( '2d.point/2' @ 2.0 @ 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 'Pi/0' )
                & ( V_y
                  = ( 'sin/1' @ V_x ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( 'exp/1' @ V_x ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 0.0 @ 1.0 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] : ( V_S_dot_0 = 1.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ 2.0 @ ( $difference @ ( 'sqrt/1' @ 2.0 ) @ 1.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] : ( V_S_dot_0 = 2.0 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ 'Napier/0' @ 1.0 ) ) ),
    answer_to(p4_question,[])).

