%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R140
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  118 (  10 equality;  52 variable)
%            Maximal formula depth :   38 (  22 average)
%            Number of connectives :   96 (   0   ~;   0   |;  19   &;  74   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   21 (   2 sgn;   4   !;  11   ?;   4   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_minL: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_L: 'R'] :
            ? [V_O: '3d.Point',V_D: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_H: '3d.Point',V_theta: 'R',V_f: 'R' > '3d.Point',V_S: '3d.Shape'] :
              ( ( '3d.disk-type/1' @ V_D )
              & ( V_S
                = ( '3d.right-conical-surface/2' @ V_D @ V_O ) )
              & ( V_H
                = ( '3d.center-of/1' @ V_D ) )
              & ( '3d.is-diameter-of/2' @ ( '3d.seg/2' @ V_A @ V_B ) @ V_D )
              & ( V_a
                = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_A ) ) )
              & ( V_theta
                = ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_H ) ) )
              & ( ( 'sin/1' @ V_theta )
                = ( '//2' @ 1 @ 3 ) )
              & ! [V_t_dot_1: 'R'] :
                  ( ( ( '<=/2' @ 0 @ V_t_dot_1 )
                    & ( '<=/2' @ V_t_dot_1 @ 1 ) )
                 => ( '3d.on/2' @ ( 'LamApp/2' @ V_f @ V_t_dot_1 ) @ V_S ) )
              & ( ( 'LamApp/2' @ V_f @ 0 )
                = V_A )
              & ( ( 'LamApp/2' @ V_f @ 1 )
                = V_A )
              & ! [V_t_dot_0: 'R',V_delta: 'R'] :
                  ( ( ( '<=/2' @ 0 @ V_t_dot_0 )
                    & ( '<=/2' @ V_t_dot_0 @ 1 )
                    & ( '</2' @ 0 @ V_delta ) )
                 => ? [V_eps: 'R'] :
                    ! [V_tt: 'R'] :
                      ( ( '</2' @ ( 'abs/1' @ ( '-/2' @ V_t_dot_0 @ V_tt ) ) @ V_eps )
                     => ( '</2' @ ( '3d.distance/2' @ ( 'LamApp/2' @ V_f @ V_t_dot_0 ) @ ( 'LamApp/2' @ V_f @ V_tt ) ) @ V_delta ) ) )
              & ? [V_t0: 'R'] :
                  ( ( '<=/2' @ 0 @ V_t0 )
                  & ( '<=/2' @ V_t0 @ 1 )
                  & ( '3d.on/2' @ ( 'LamApp/2' @ V_f @ V_t0 ) @ ( '3d.seg/2' @ V_O @ V_B ) ) )
              & ( V_L
                = ( '3d.length-of/1'
                  @ ( '3d.shape-of-cpfun/1'
                    @ ^ [V_P: '3d.Point'] :
                      ? [V_t: 'R'] :
                        ( ( '<=/2' @ 0 @ V_t )
                        & ( '<=/2' @ V_t @ 1 )
                        & ( V_P
                          = ( 'LamApp/2' @ V_f @ V_t ) ) ) ) ) ) ) )
        @ V_minL ) )).

thf(p_answer,answer,(
    ^ [V_minL_dot_0: 'R'] :
      ( V_minL_dot_0
      = ( '*/2' @ ( 'sqrt/1' @ 3 ) @ V_a ) ) ),
    answer_to(p_question,[])).
