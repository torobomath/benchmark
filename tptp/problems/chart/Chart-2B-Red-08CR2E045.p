%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E045
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   77 (   4 equality;  25 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :   67 (   0   ~;   1   |;  11   &;  54   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   1   !;   5   ?;   5   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ 0.0 @ V_y )
                & ( $lesseq @ V_y @ ( $sum @ ( $sum @ ( $uminus @ ( '^/2' @ V_x @ 2.0 ) ) @ V_x ) @ 'a/0' ) ) ) ) )
        & ( $lesseq @ 0.0 @ 'a/0' )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_P1: '2d.Point',V_P2: '2d.Point',V_P3: '2d.Point',V_P4: '2d.Point'] :
                ( ( '2d.is-regular-square/4' @ V_P1 @ V_P2 @ V_P3 @ V_P4 )
                & ! [V_P: '2d.Point'] :
                    ( ( '2d.point-inside-of/2' @ V_P @ ( '2d.square/4' @ V_P1 @ V_P2 @ V_P3 @ V_P4 ) )
                   => ( '2d.on/2' @ V_P @ V_D ) )
                & ( '2d.on/2' @ V_P1 @ '2d.x-axis/0' )
                & ( '2d.on/2' @ V_P2 @ '2d.x-axis/0' )
                & ( V_v
                  = ( '2d.distance/2' @ V_P1 @ V_P2 ) ) ) )
          @ V_l ) ) )).

thf(p_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 1.0 )
        & ( V_l_dot_0
          = ( $difference @ ( 'sqrt/1' @ ( $sum @ ( $product @ 4.0 @ 'a/0' ) @ 5.0 ) ) @ 2.0 ) ) )
      | ( ( $less @ 1.0 @ 'a/0' )
        & ( V_l_dot_0
          = ( 'sqrt/1' @ 'a/0' ) ) ) ) ),
    answer_to(p_question,[])).

