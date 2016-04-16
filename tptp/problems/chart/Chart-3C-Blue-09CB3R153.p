%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R153
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   4 equality;  18 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   39 (   0   ~;   0   |;   6   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
        ( V_V
        = ( '3d.volume-of/1'
          @ ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
              ? [V_x: $real,V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point'] :
                ( ( V_P
                  = ( '3d.point/3' @ V_x @ 0.0 @ 0.0 ) )
                & ( V_Q
                  = ( '3d.point/3' @ V_x @ ( 'sin/1' @ V_x ) @ 0.0 ) )
                & ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 'Pi/0' )
                & ( '3d.on/2' @ V_R @ ( '3d.plane2/2' @ V_P @ ( '3d.direction-vec/1' @ '3d.x-axis/0' ) ) )
                & ( '3d.is-equilateral-triangle/3' @ V_P @ V_Q @ V_R )
                & ( '3d.point-inside-of/2' @ V_p @ ( '3d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 8.0 ) @ 'Pi/0' ) ) ),
    answer_to(p_question,[])).

