%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R157
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  165 (  14 equality;  36 variable)
%            Maximal formula depth :   24 (  10 average)
%            Number of connectives :  135 (   0   ~;   0   |;  15   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   3   :;   0   =)
%            Number of variables   :   19 (   2 sgn;   0   !;  11   ?;   8   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_D: ( $real > '2d.Shape' ),V_P: '2d.Point',V_x: $real,V_y: $real] :
        ( ( V_D
          = ( ^ [V_t_dot_0: $real] :
                ( '2d.circle/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ ( 'cos/1' @ V_t_dot_0 ) ) @ ( $product @ 2.0 @ ( 'sin/1' @ V_t_dot_0 ) ) ) @ 1.0 ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'nil/0' @ $real ) ) ) )
        & ? [V_s: $real] :
            ( ( ( $product @ 3.0 @ 't/0' )
              = ( $uminus @ V_s ) )
            & ( V_P
              = ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ ( V_D @ 't/0' ) ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ ( $sum @ V_s @ 't/0' ) ) @ ( 'sin/1' @ ( $sum @ V_s @ 't/0' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_D: ( $real > '2d.Shape' ),V_P: '2d.Point'] :
        ( ( V_D
          = ( ^ [V_t_dot_0: $real] :
                ( '2d.circle/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ ( 'cos/1' @ V_t_dot_0 ) ) @ ( $product @ 2.0 @ ( 'sin/1' @ V_t_dot_0 ) ) ) @ 1.0 ) ) )
        & ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( V_l
          = ( '2d.length-of/1'
            @ ( '2d.set-of-cfun/1'
              @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ? [V_t: $real] :
                  ( ( $lesseq @ 0.0 @ V_t )
                  & ( $lesseq @ V_t @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' ) )
                  & ? [V_s: $real] :
                      ( ( ( $product @ 3.0 @ V_t )
                        = ( $uminus @ V_s ) )
                      & ( V_P
                        = ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ ( V_D @ V_t ) ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ ( $sum @ V_s @ V_t ) ) @ ( 'sin/1' @ ( $sum @ V_s @ V_t ) ) ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x_dot_0: $real,V_y_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_x_dot_0 @ ( 'cons/2' @ $real @ V_y_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $lesseq @ 0.0 @ 't/0' )
      & ( $lesseq @ 't/0' @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' ) )
      & ( V_x_dot_0
        = ( $sum @ ( $product @ 2.0 @ ( 'cos/1' @ 't/0' ) ) @ ( 'cos/1' @ ( $product @ 2.0 @ 't/0' ) ) ) )
      & ( V_y_dot_0
        = ( $sum @ ( $product @ 2.0 @ ( 'sin/1' @ 't/0' ) ) @ ( $uminus @ ( 'sin/1' @ ( $product @ 2.0 @ 't/0' ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $quotient @ 16.0 @ 3.0 ) ) ),
    answer_to(p2_question,[])).

