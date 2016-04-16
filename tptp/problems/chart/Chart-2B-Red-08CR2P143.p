%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :   66 (   7 equality;   9 variable)
%            Maximal formula depth :   16 (   6 average)
%            Number of connectives :   52 (   0   ~;   0   |;   7   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   3   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('p/0_type',type,(
    'p/0': $real )).

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_g: '2d.Shape',V_F: '2d.Point',V_P: '2d.Point'] :
        ( ( V_g
          = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ ( $uminus @ 'p/0' ) ) @ ( '2d.point/2' @ 1.0 @ ( $uminus @ 'p/0' ) ) ) )
        & ( V_F
          = ( '2d.point/2' @ 0.0 @ 'p/0' ) )
        & ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( $less @ 0.0 @ 'p/0' )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( ( '2d.point-shape-distance^2/2' @ V_P @ V_g )
          = ( '2d.distance^2/2' @ V_P @ V_F ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( $less @ 0.0 @ 'p/0' )
      & ( 'y/0'
        = ( $quotient @ ( '^/2' @ 'x/0' @ 2.0 ) @ ( $product @ 4.0 @ 'p/0' ) ) ) ) ),
    answer_to(p_question,[])).

