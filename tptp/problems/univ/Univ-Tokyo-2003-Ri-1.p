%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2003, Science Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-15
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers, and assume that $a\not= 0$.
%% Assume that the quadratic function $f(x)=a x^2+b x+c$ satisfies the
%% following conditions (A) and (B): For all the values of $x$ that
%% satisfy (A) $f(- 1)=-1, f(1)=1$ and (B) $-1\le x\le 1$,
%% $f(x)\le 3 x^2-1$ is true. Then, find the range of the possible value
%% of the integral $I=\int_{-1}^1(f^{\prime }(x))^2 dx$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   6 equality;  18 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :   61 (   0   ~;   0   |;   5   &;  55   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   1   !;   4   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'SetOf' @ $real )
    @ ^ [V_I_set: ( 'SetOf' @ $real )] :
        ( V_I_set
        = ( 'set-by-def/1' @ $real
          @ ^ [V_I: $real] :
            ? [V_a: $real,V_b: $real,V_c: $real,V_f: 'R2R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( ( 'funapp/2' @ V_f @ -1.0 )
                = -1.0 )
              & ( ( 'funapp/2' @ V_f @ 1.0 )
                = 1.0 )
              & ! [V_x_dot_0: $real] :
                  ( ( ( $lesseq @ -1.0 @ V_x_dot_0 )
                    & ( $lesseq @ V_x_dot_0 @ 1.0 ) )
                 => ( $lesseq @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ ( $difference @ ( $product @ 3.0 @ ( $product @ V_x_dot_0 @ V_x_dot_0 ) ) @ 1.0 ) ) )
              & ( V_I
                = ( 'integral/3'
                  @ ^ [V_x: $real] :
                      ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ V_x ) @ 2.0 )
                  @ -1.0
                  @ 1.0 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_I_set_dot_0: ( 'SetOf' @ $real )] :
      ( V_I_set_dot_0
      = ( 'set-by-def/1' @ $real
        @ ^ [V_I_dot_0: $real] :
            ( $greatereq @ V_I_dot_0 @ ( $quotient @ ( $difference @ 44.0 @ ( $product @ 16.0 @ ( 'sqrt/1' @ 3.0 ) ) ) @ 3.0 ) ) ) ) ),
    answer_to(p_question,[])).

