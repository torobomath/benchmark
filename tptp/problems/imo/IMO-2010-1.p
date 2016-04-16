%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2010, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Determine all functions f : R -> R such that the equality
%% f(floor(x) y) = f(x) floor(f(y))
%% holds for all x, y in R. (Here floor(z) denotes the greatest integer
%% less than or equal to z.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   27 (   3 equality;  12 variable)
%            Maximal formula depth :   10 (   9 average)
%            Number of connectives :   18 (   0   ~;   1   |;   2   &;  15   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    7 (   2 sgn;   2   !;   1   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $real > $real )
    @ ^ [V_f: ( $real > $real )] :
      ! [V_x: $real,V_y: $real] :
        ( ( V_f @ ( $product @ ( $floor @ V_x ) @ V_y ) )
        = ( $product @ ( V_f @ V_x ) @ ( $floor @ ( V_f @ V_y ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $real > $real )] :
    ? [V_a: $real] :
      ( ( $lesseq @ 1.0 @ V_a )
      & ( $less @ V_a @ 2.0 )
      & ( ( V_f_dot_0
          = ( ^ [V_x_dot_1: $real] : 0.0 ) )
        | ( V_f_dot_0
          = ( ^ [V_x_dot_0: $real] : V_a ) ) ) ) ),
    answer_to(p_question,[])).

