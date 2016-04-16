%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-14
%%
%% <PROBLEM-TEXT>
%% For $t$ in the range of $0\le t\le 2$, let $g_1(t)$ and $g_2(t)$ be
%% the maximum and minimum real solutions of the equation
%% $x^4-2 x^2-1+t=0$, respectively. Find the value of
%% $\int_0^2(g_1(t)- g_2(t))dt$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   79 (   5 equality;  18 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :   67 (   0   ~;   0   |;   4   &;  62   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   1   !;   3   ?;   5   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    4 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_I: $real] :
      ? [V_g1: 'R2R',V_g2: 'R2R'] :
      ! [V_t: $real] :
        ( ( ( $lesseq @ 0.0 @ V_t )
          & ( $lesseq @ V_t @ 2.0 ) )
       => ? [V_f: 'R2R'] :
            ( ( V_f
              = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $difference @ V_t @ 1.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -2.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
            & ( 'maximum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_t_dot_2: $real] :
                    ( ( 'funapp/2' @ V_f @ V_t_dot_2 )
                    = 0.0 ) )
              @ ( 'funapp/2' @ V_g1 @ V_t ) )
            & ( 'minimum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_t_dot_1: $real] :
                    ( ( 'funapp/2' @ V_f @ V_t_dot_1 )
                    = 0.0 ) )
              @ ( 'funapp/2' @ V_g2 @ V_t ) )
            & ( V_I
              = ( 'integral/3'
                @ ^ [V_t_dot_0: $real] :
                    ( $difference @ ( 'funapp/2' @ V_g1 @ V_t_dot_0 ) @ ( 'funapp/2' @ V_g2 @ V_t_dot_0 ) )
                @ 0.0
                @ 2.0 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_I_dot_0: $real] :
      ( V_I_dot_0
      = ( $product @ ( $quotient @ 8.0 @ 15.0 ) @ ( $sum @ ( $product @ ( $sum @ 4.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ) @ 2.0 ) ) ) ),
    answer_to(p_question,[])).

