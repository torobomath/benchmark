%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R140
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  113 (  10 equality;  50 variable)
%            Maximal formula depth :   37 (  15 average)
%            Number of connectives :   91 (   0   ~;   0   |;  19   &;  69   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   4   !;  11   ?;   4   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minL: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_L: $real] :
            ? [V_O: '3d.Point',V_D: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_H: '3d.Point',V_theta: $real,V_f: ( $real > '3d.Point' ),V_S: '3d.Shape'] :
              ( ( '3d.disk-type/1' @ V_D )
              & ( V_S
                = ( '3d.right-conical-surface/2' @ V_D @ V_O ) )
              & ( V_H
                = ( '3d.center-of/1' @ V_D ) )
              & ( '3d.is-diameter-of/2' @ ( '3d.seg/2' @ V_A @ V_B ) @ V_D )
              & ( 'a/0'
                = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_A ) ) )
              & ( V_theta
                = ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_H ) ) )
              & ( ( 'sin/1' @ V_theta )
                = ( $quotient @ 1.0 @ 3.0 ) )
              & ! [V_t_dot_1: $real] :
                  ( ( ( $lesseq @ 0.0 @ V_t_dot_1 )
                    & ( $lesseq @ V_t_dot_1 @ 1.0 ) )
                 => ( '3d.on/2' @ ( V_f @ V_t_dot_1 ) @ V_S ) )
              & ( ( V_f @ 0.0 )
                = V_A )
              & ( ( V_f @ 1.0 )
                = V_A )
              & ! [V_t_dot_0: $real,V_delta: $real] :
                  ( ( ( $lesseq @ 0.0 @ V_t_dot_0 )
                    & ( $lesseq @ V_t_dot_0 @ 1.0 )
                    & ( $less @ 0.0 @ V_delta ) )
                 => ? [V_eps: $real] :
                    ! [V_tt: $real] :
                      ( ( $less @ ( 'abs/1' @ ( $difference @ V_t_dot_0 @ V_tt ) ) @ V_eps )
                     => ( $less @ ( '3d.distance/2' @ ( V_f @ V_t_dot_0 ) @ ( V_f @ V_tt ) ) @ V_delta ) ) )
              & ? [V_t0: $real] :
                  ( ( $lesseq @ 0.0 @ V_t0 )
                  & ( $lesseq @ V_t0 @ 1.0 )
                  & ( '3d.on/2' @ ( V_f @ V_t0 ) @ ( '3d.seg/2' @ V_O @ V_B ) ) )
              & ( V_L
                = ( '3d.length-of/1'
                  @ ( '3d.shape-of-cpfun/1'
                    @ ^ [V_P: '3d.Point'] :
                      ? [V_t: $real] :
                        ( ( $lesseq @ 0.0 @ V_t )
                        & ( $lesseq @ V_t @ 1.0 )
                        & ( V_P
                          = ( V_f @ V_t ) ) ) ) ) ) ) )
        @ V_minL ) )).

thf(p_answer,answer,(
    ^ [V_minL_dot_0: $real] :
      ( V_minL_dot_0
      = ( $product @ ( 'sqrt/1' @ 3.0 ) @ 'a/0' ) ) ),
    answer_to(p_question,[])).

