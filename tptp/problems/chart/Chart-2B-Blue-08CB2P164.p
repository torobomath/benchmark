%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P164
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   77 (  12 equality;  15 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   51 (   0   ~;   5   |;   9   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   1   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   2   ?;   7   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    3 func;   10 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
      ? [V_F: '2d.Shape',V_C: '2d.Shape'] :
        ( ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 16.0
                = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y @ 'a/0' ) @ 2.0 ) ) ) ) )
        & ( V_n
          = ( 'cardinality-of/1' @ '2d.Point'
            @ ( 'set-by-def/1' @ '2d.Point'
              @ ^ [V_P: '2d.Point'] :
                  ( '2d.intersect/3' @ V_F @ V_C @ V_P ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ( ( ( $less @ 4.0 @ 'a/0' )
        & ( $less @ 'a/0' @ ( $quotient @ 65.0 @ 4.0 ) )
        & ( V_n_dot_0 = 4 ) )
      | ( ( 'a/0' = 4.0 )
        & ( V_n_dot_0 = 3 ) )
      | ( ( $less @ -4.0 @ 'a/0' )
        & ( $less @ 'a/0' @ 4.0 )
        & ( V_n_dot_0 = 2 ) )
      | ( ( 'a/0' = -4.0 )
        & ( V_n_dot_0 = 1 ) )
      | ( ( ( $less @ 'a/0' @ -4.0 )
          | ( $less @ ( $quotient @ 65.0 @ 4.0 ) @ 'a/0' ) )
        & ( V_n_dot_0 = 0 ) ) ) ),
    answer_to(p_question,[])).

