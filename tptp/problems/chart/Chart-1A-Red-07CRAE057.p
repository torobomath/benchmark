%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE057
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   57 (   5 equality;  24 variable)
%            Maximal formula depth :   25 (   9 average)
%            Number of connectives :   45 (   0   ~;   0   |;   7   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   2   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    2 func;    0 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_PC: $real] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_g: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_g )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ V_g @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 'a/0' )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
          = 'b/0' )
        & ( '2d.on/2' @ V_P @ V_g )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_angleAPB: $real] :
              ? [V_P_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_P_dot_0 @ V_g )
                & ( V_angleAPB
                  = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P_dot_0 @ V_B ) ) ) ) )
          @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_B ) ) )
        & ( V_PC
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_PC_dot_0: $real] :
      ( V_PC_dot_0
      = ( 'sqrt/1' @ ( $product @ 'b/0' @ ( $sum @ 'b/0' @ 'a/0' ) ) ) ) ),
    answer_to(p_question,[])).

