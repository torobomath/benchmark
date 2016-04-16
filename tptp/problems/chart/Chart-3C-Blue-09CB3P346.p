%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P346
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  111 (  12 equality;  41 variable)
%            Maximal formula depth :   22 (  10 average)
%            Number of connectives :   83 (   0   ~;   0   |;  17   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   2   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;   8   ?;  10   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    3 func;    8 numbers)

include('axioms.ax').

thf('x1/0_type',type,(
    'x1/0': $real )).

thf('x2/0_type',type,(
    'x2/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ V_y @ ( 'exp/1' @ V_x ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 1.0 ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_f1: ( $real > $real ),V_f2: ( $real > $real ),V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_f1
          = ( ^ [V_x_dot_1: $real] :
                ( 'sqrt/1' @ ( $difference @ 4.0 @ ( '^/2' @ V_x_dot_1 @ 2.0 ) ) ) ) )
        & ( V_f2
          = ( ^ [V_x_dot_0: $real] :
                ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) )
        & ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( V_f2 @ V_x ) @ V_y )
                & ( $lesseq @ V_y @ ( V_f1 @ V_x ) )
                & ( $lesseq @ 'x1/0' @ V_x )
                & ( $lesseq @ V_x @ 'x2/0' ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ? [V_x1_dot_0: $real,V_x2_dot_0: $real] :
            ( ( $lesseq @ -2.0 @ V_x1_dot_0 )
            & ( $less @ V_x1_dot_0 @ V_x2_dot_0 )
            & ( $lesseq @ V_x2_dot_0 @ 2.0 )
            & ( ( V_f1 @ V_x1_dot_0 )
              = ( V_f2 @ V_x1_dot_0 ) )
            & ( ( V_f1 @ V_x2_dot_0 )
              = ( V_f2 @ V_x2_dot_0 ) )
            & ( V_V
              = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( $difference @ ( 'exp/1' @ 2.0 ) @ 1.0 ) ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 92.0 @ 15.0 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

