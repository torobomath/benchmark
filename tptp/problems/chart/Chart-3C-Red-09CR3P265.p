%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P265
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   8 equality;  16 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :   52 (   0   ~;   0   |;   6   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   11 (   1 sgn;   0   !;   6   ?;   5   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_S: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_P: '3d.Point'] :
        ( ( V_S
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real,V_z: $real] :
                ( $lesseq @ 1.0 @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) ) ) )
        & ( V_A
          = ( '3d.point/3' @ 1.0 @ 1.0 @ 0.0 ) )
        & ( V_B
          = ( '3d.point/3' @ -1.0 @ 1.0 @ 0.0 ) )
        & ( V_C
          = ( '3d.point/3' @ -1.0 @ -1.0 @ 0.0 ) )
        & ( V_D
          = ( '3d.point/3' @ 1.0 @ -1.0 @ 0.0 ) )
        & ( V_P
          = ( '3d.point/3' @ 0.0 @ 0.0 @ 3.0 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.intersection/2' @ V_S @ ( '3d.shape-of-cpfun/1' @ ( '3d.char-fun-of/1' @ ( '3d.inner-part-of/1' @ ( '3d.square-pyramid/5' @ V_P @ V_A @ V_B @ V_C @ V_D ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $sum @ ( $sum @ 4.0 @ ( $product @ 4.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ ( $product @ -3.0 @ 'Pi/0' ) ) ) ),
    answer_to(p_question,[])).

