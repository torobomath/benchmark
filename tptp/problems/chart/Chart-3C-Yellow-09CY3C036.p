%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C036
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   35 (   3 equality;  10 variable)
%            Maximal formula depth :   14 (  11 average)
%            Number of connectives :   27 (   0   ~;   0   |;   4   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   1   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $greatereq @ V_y @ ( $quotient @ 1.0 @ ( $sum @ 1.0 @ V_x ) ) )
                & ( $lesseq @ V_y @ ( 'exp/1' @ V_x ) )
                & ( $lesseq @ V_x @ 1.0 )
                & ( $lesseq @ 0.0 @ V_x ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_C1 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $difference @ ( 'exp/1' @ 1.0 ) @ ( 'ln/1' @ 2.0 ) ) @ 1.0 ) ) ),
    answer_to(p_question,[])).

