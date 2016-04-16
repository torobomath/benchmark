%% DOMAIN:    Analysis, misc
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2002, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% Find all real-valued functions on the reals such that
%% (f(x) + f(y))((f(u) + f(v)) = f(xu - yv) + f (xv + yu)
%% for all x, y, u, v.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   4 equality;  22 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   34 (   0   ~;   2   |;   0   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    9 (   2 sgn;   4   !;   0   ?;   5   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $real > $real )
    @ ^ [V_f: ( $real > $real )] :
      ! [V_x: $real,V_y: $real,V_u: $real,V_v: $real] :
        ( ( $product @ ( $sum @ ( V_f @ V_x ) @ ( V_f @ V_y ) ) @ ( $sum @ ( V_f @ V_u ) @ ( V_f @ V_v ) ) )
        = ( $sum @ ( V_f @ ( $difference @ ( $product @ V_x @ V_u ) @ ( $product @ V_y @ V_v ) ) ) @ ( V_f @ ( $sum @ ( $product @ V_x @ V_v ) @ ( $product @ V_y @ V_u ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $real > $real )] :
      ( ( V_f_dot_0
        = ( ^ [V_x_dot_2: $real] : 0.0 ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_1: $real] :
              ( $quotient @ 1.0 @ 2.0 ) ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_0: $real] :
              ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) ),
    answer_to(p_question,[])).

