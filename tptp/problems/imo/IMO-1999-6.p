%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1999, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Determine all functions $f : ¥mathbf{R} ¥rightarrow ¥mathbf{R}$ such that
%% ¥[
%% f(x - f(y)) = f(f(y)) + xf(y) + f(x) - 1
%% ¥]
%% for all real numbers $x$, $y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   37 (   2 equality;  14 variable)
%            Maximal formula depth :   12 (  11 average)
%            Number of connectives :   31 (   0   ~;   0   |;   0   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   2   !;   0   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ 'R2R'
    @ ^ [V_f: 'R2R'] :
      ! [V_x: $real,V_y: $real] :
        ( ( 'funapp/2' @ V_f @ ( $difference @ V_x @ ( 'funapp/2' @ V_f @ V_y ) ) )
        = ( $sum @ ( 'funapp/2' @ V_f @ ( 'funapp/2' @ V_f @ V_y ) ) @ ( $sum @ ( $product @ V_x @ ( 'funapp/2' @ V_f @ V_y ) ) @ ( $sum @ ( 'funapp/2' @ V_f @ V_x ) @ -1.0 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
      ( V_f_dot_0
      = ( 'fun/1'
        @ ^ [V_x_dot_0: $real] :
            ( $difference @ 1.0 @ ( $quotient @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 2.0 ) ) ) ) ),
    answer_to(p_question,[])).

