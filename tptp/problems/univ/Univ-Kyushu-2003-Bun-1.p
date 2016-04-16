%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2003, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-23
%%
%% <PROBLEM-TEXT>
%% Consider the following condition for the function $f(x)= a x^2 + c$,
%% where the real numbers $a$ and $c$ are coefficients: (*)
%% $f(x)\ge(x + 1)^2$ is true in the range of $0\le x\le 1$.
%%
%% (1) When $a\ge 2$, prove that the minimum value of $c$ that satisfies
%% the condition (*) is $\frac{a}{a-1}$.
%%
%% (2) When $a\le 2$, prove that the minimum value of $c$ that satisfies
%% the condition (*) is $4 - a$.
%%
%% (3) When the function $f(x)$ satisfies the condition (*), find the
%% values of $a$ and $c$ that gives the minimum value of the definite
%% integral $\int_0^1 f(x)d x$ and the value of the definite integral at
%% that time.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  205 (  10 equality;  51 variable)
%            Maximal formula depth :   28 (  18 average)
%            Number of connectives :  185 (   0   ~;   0   |;  14   &; 165   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   6   !;  11   ?;   5   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_a: $real] :
      ( ( $greatereq @ V_a @ 2.0 )
     => ? [V_c_set: ( 'SetOf' @ $real )] :
          ( ( V_c_set
            = ( 'set-by-def/1' @ $real
              @ ^ [V_c: $real] :
                ? [V_f: 'R2R'] :
                  ( ( V_f
                    = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
                  & ! [V_x: $real] :
                      ( ( ( $lesseq @ 0.0 @ V_x )
                        & ( $lesseq @ V_x @ 1.0 ) )
                     => ( $greatereq @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( $sum @ V_x @ 1.0 ) @ 2.0 ) ) ) ) ) )
          & ( 'minimum/2' @ V_c_set @ ( $quotient @ V_a @ ( $difference @ V_a @ 1.0 ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_a: $real] :
      ( ( $lesseq @ V_a @ 2.0 )
     => ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_c: $real] :
            ? [V_f: 'R2R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ! [V_x: $real] :
                  ( ( ( $lesseq @ 0.0 @ V_x )
                    & ( $lesseq @ V_x @ 1.0 ) )
                 => ( $greatereq @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( $sum @ V_x @ 1.0 ) @ 2.0 ) ) ) ) )
        @ ( $difference @ 4.0 @ V_a ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_a_opt: $real,V_c_opt: $real,V_I_min: $real,V_I_set: ( 'SetOf' @ $real ),V_fmin: 'R2R'] :
        ( ( V_ans
          = ( 'cons/2' @ $real @ V_a_opt @ ( 'cons/2' @ $real @ V_c_opt @ ( 'cons/2' @ $real @ V_I_min @ ( 'nil/0' @ $real ) ) ) ) )
        & ( 'minimum/2' @ V_I_set @ V_I_min )
        & ( V_fmin
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c_opt @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a_opt @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ! [V_x_dot_0: $real] :
            ( ( ( $lesseq @ 0.0 @ V_x_dot_0 )
              & ( $lesseq @ V_x_dot_0 @ 1.0 ) )
           => ( $greatereq @ ( 'funapp/2' @ V_fmin @ V_x_dot_0 ) @ ( '^/2' @ ( $sum @ V_x_dot_0 @ 1.0 ) @ 2.0 ) ) )
        & ( V_I_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_I: $real] :
              ? [V_a: $real,V_c: $real,V_f: 'R2R'] :
                ( ( V_f
                  = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
                & ! [V_x: $real] :
                    ( ( ( $lesseq @ 0.0 @ V_x )
                      & ( $lesseq @ V_x @ 1.0 ) )
                   => ( $greatereq @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( $sum @ V_x @ 1.0 ) @ 2.0 ) ) )
                & ( V_I
                  = ( 'integration/3' @ V_f @ 0.0 @ 1.0 ) ) ) ) )
        & ( V_I_min
          = ( 'integration/3' @ V_fmin @ 0.0 @ 1.0 ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
      ( V_ans_dot_0
      = ( 'cons/2' @ $real @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 4.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p3_question,[])).

