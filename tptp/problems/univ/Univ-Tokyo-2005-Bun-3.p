%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2005, Humanities Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% When the real numbers $s$ and $t$ equal to or larger than $0$ move
%% satisfying $s^2+t^2=1$, find the range of the possible solutions of
%% the equation $x^4-2(s+t)x^2+(s-t)^2=0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   53 (   2 equality;  12 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   47 (   0   ~;   0   |;   4   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    5 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_s: $real,V_t: $real] :
        ( ( 1.0
          = ( $sum @ ( '^/2' @ V_s @ 2.0 ) @ ( '^/2' @ V_t @ 2.0 ) ) )
        & ( 0.0
          = ( $sum @ ( '^/2' @ V_x @ 4.0 ) @ ( $sum @ ( $product @ -2.0 @ ( $product @ ( $sum @ V_s @ V_t ) @ ( '^/2' @ V_x @ 2.0 ) ) ) @ ( '^/2' @ ( $difference @ V_s @ V_t ) @ 2.0 ) ) ) )
        & ( $lesseq @ 0.0 @ V_s )
        & ( $lesseq @ 0.0 @ V_t ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ ( $uminus @ ( '^/2' @ 2.0 @ ( $quotient @ 3.0 @ 4.0 ) ) ) @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ ( '^/2' @ 2.0 @ ( $quotient @ 3.0 @ 4.0 ) ) ) ) ),
    answer_to(p_question,[])).

