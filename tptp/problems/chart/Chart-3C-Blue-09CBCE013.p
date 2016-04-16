%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE013
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   99 (   7 equality;  45 variable)
%            Maximal formula depth :   34 (  21 average)
%            Number of connectives :   84 (   1   ~;   1   |;  13   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;  10   ?;   5   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_max: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( '2d.distance/2' @ V_A @ V_B )
          = ( '2d.distance/2' @ V_A @ V_C ) )
        & ( 2.0
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_F1: '2d.Point',V_F2: '2d.Point',V_x0: $real,V_y0: $real,V_a: $real,V_b: $real,V_E: '2d.Shape'] :
                ( ( V_E
                  = ( '2d.set-of-cfun/1'
                    @ ^ [V_x: $real,V_y: $real] :
                        ( 1.0
                        = ( $sum @ ( '^/2' @ ( $quotient @ ( $difference @ V_x @ V_x0 ) @ V_a ) @ 2.0 ) @ ( '^/2' @ ( $quotient @ ( $difference @ V_y @ V_y0 ) @ V_b ) @ 2.0 ) ) ) ) )
                & ( $less @ 0.0 @ V_a )
                & ( $less @ 0.0 @ V_b )
                & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
                & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
                & ( V_F1 != V_F2 )
                & ( ( '2d.parallel/2' @ ( '2d.line/2' @ V_F1 @ V_F2 ) @ ( '2d.line/2' @ V_B @ V_C ) )
                  | ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_F1 @ V_F2 ) @ ( '2d.line/2' @ V_B @ V_C ) ) )
                & ( '2d.tangent/2' @ V_E @ ( '2d.line/2' @ V_A @ V_B ) )
                & ( '2d.tangent/2' @ V_E @ ( '2d.line/2' @ V_B @ V_C ) )
                & ( '2d.tangent/2' @ V_E @ ( '2d.line/2' @ V_C @ V_A ) )
                & ( V_v
                  = ( '2d.area-of/1' @ V_E ) ) ) )
          @ V_max ) ) )).

thf(p_answer,answer,(
    ^ [V_max_dot_0: $real] :
      ( V_max_dot_0
      = ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 9.0 ) @ 'Pi/0' ) ) ),
    answer_to(p_question,[])).

