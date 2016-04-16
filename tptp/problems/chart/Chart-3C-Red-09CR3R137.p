%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R137
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  128 (  12 equality;  30 variable)
%            Maximal formula depth :   21 (   8 average)
%            Number of connectives :  102 (   0   ~;   0   |;  11   &;  89   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   2   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   1   !;   5   ?;   9   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('S/0_type',type,(
    'S/0': $real )).

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ ( $product @ 2.0 @ 'Pi/0' ) )
                & ( V_y
                  = ( 'sin/1' @ V_x ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_f @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_f: ( $real > $real ),V_C: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_f
          = ( ^ [V_x_dot_1: $real] :
                ( $product @ ( $difference @ 3.0 @ V_x_dot_1 ) @ ( 'exp/1' @ V_x_dot_1 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y: $real] :
                ( V_y
                = ( V_f @ V_x_dot_0 ) ) ) )
        & ( V_l
          = ( '2d.line/2' @ ( '2d.point/2' @ 'a/0' @ 0.0 ) @ ( '2d.point/2' @ 'a/0' @ 1.0 ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'S/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( 0.0
          = ( 'deriv/1' @ V_f @ 'a/0' ) )
        & ? [V_d: $real] :
            ( ( $less @ 0.0 @ V_d )
            & ! [V_x: $real] :
                ( ( ( $less @ ( $difference @ V_x @ 'a/0' ) @ V_d )
                 => ( $lesseq @ ( 'deriv/1' @ V_f @ V_x ) @ 0.0 ) )
                & ( ( $less @ ( $difference @ 'a/0' @ V_x ) @ V_d )
                 => ( $lesseq @ 0.0 @ ( 'deriv/1' @ V_f @ V_x ) ) ) ) )
        & ( 'S/0'
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] : ( V_S_dot_0 = 4.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ ( $sum @ ( 'exp/1' @ 3.0 ) @ ( $product @ -2.0 @ ( 'exp/1' @ 2.0 ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

