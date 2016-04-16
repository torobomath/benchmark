%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R159
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   91 (   8 equality;  31 variable)
%            Maximal formula depth :   21 (  10 average)
%            Number of connectives :   71 (   0   ~;   0   |;   9   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   1   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;   5   ?;  12   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('h/0_type',type,(
    'h/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_y: $real,V_x: $real] :
                ( ( $greatereq @ V_y @ ( 'exp/1' @ ( '^/2' @ V_x @ 2.0 ) ) )
                & ( $lesseq @ V_y @ 'h/0' )
                & ( $lesseq @ 0.0 @ V_x ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: ( $real > '2d.Shape' ),V_h: ( $real > $real ),V_V: ( $real > $real ),V_t0: $real] :
        ( ( V_h
          = ( ^ [V_t_dot_1: $real] :
                ( $product @ 2.0 @ V_t_dot_1 ) ) )
        & ( V_C
          = ( ^ [V_t_dot_0: $real] :
                ( '2d.set-of-cfun/1'
                @ ^ [V_y: $real,V_x_dot_0: $real] :
                    ( ( $greatereq @ V_y @ ( 'exp/1' @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) )
                    & ( $lesseq @ V_y @ ( V_h @ V_t_dot_0 ) )
                    & ( $lesseq @ 0.0 @ V_x_dot_0 ) ) ) ) )
        & ( V_V
          = ( ^ [V_t: $real] :
                ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ ( V_C @ V_t ) ) @ '3d.y-axis/0' ) ) ) )
        & ( 'Pi/0'
          = ( V_V @ V_t0 ) )
        & ( 'converge/3'
          @ ( 'fun/1'
            @ ^ [V_x: $real] :
                ( $quotient @ ( $difference @ ( V_V @ V_t0 ) @ ( V_V @ V_x ) ) @ ( $difference @ V_t0 @ V_x ) ) )
          @ V_t0
          @ V_S ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ 'Pi/0' @ ( $difference @ ( $product @ ( $sum @ 'h/0' @ 1.0 ) @ ( 'ln/1' @ ( $sum @ 'h/0' @ 1.0 ) ) ) @ 'h/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 2.0 @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

