%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2003, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-23
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers, and assume that $a > 0$.
%% Define $f(x)= a x^2 + b x + c$. For the real number $p$, let $g(p)$
%% be the maximum value of the function $p x - f(x)$.
%%
%% (1) When the functions $y = f(x)$ and $y = g(x)$ match each other,
%% find the value of $f(x)$.
%%
%% (2) For the real number $x$, let $h(x)$ be the maximum value of the
%% function of $p$: $x p - g(p)$. Find the value of $h(x)$.
%%
%% (3) Prove that the necessary and sufficient condition for the
%% straight line $y = p x + q$ to be in contact with the graph of
%% $y = f(x)$ at the point $(t, f(t))$ is $g(p)= p t - f(t)$ and
%% $q = - g(p)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    9 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  182 (  13 equality;  55 variable)
%            Maximal formula depth :   23 (  11 average)
%            Number of connectives :  153 (   0   ~;   0   |;  10   &; 140   @)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   4   :;   0   =)
%            Number of variables   :   28 (   0 sgn;  10   !;  10   ?;   8   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    5 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('x/0_type',type,(
    'x/0': $real )).

thf(p1_m_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abc: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_c: $real,V_f: 'R2R'] :
        ( ( $less @ 0.0 @ V_a )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ! [V_p: $real,V_gp: $real] :
            ( ( 'maximum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_v: $real] :
                  ? [V_x: $real] :
                    ( V_v
                    = ( $difference @ ( $product @ V_p @ V_x ) @ ( 'funapp/2' @ V_f @ V_x ) ) ) )
              @ V_gp )
           => ( ( 'funapp/2' @ V_f @ V_p )
              = V_gp ) )
        & ( V_abc
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_m_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_h: $real] :
      ? [V_f: 'R2R'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_p: $real,V_gp: $real] :
                ( ( 'maximum/2'
                  @ ( 'set-by-def/1' @ $real
                    @ ^ [V_v_dot_0: $real] :
                      ? [V_x_dot_0: $real] :
                        ( V_v_dot_0
                        = ( $difference @ ( $product @ V_p @ V_x_dot_0 ) @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) )
                  @ V_gp )
                & ( V_v
                  = ( $difference @ ( $product @ V_p @ 'x/0' ) @ V_gp ) ) ) )
          @ V_h ) ) )).

thf(p3_m,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real,V_f: 'R2R',V_p: $real,V_gp: $real,V_q: $real,V_t: $real] :
      ( ( ( $less @ 0.0 @ V_a )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_x: $real] :
                ( V_v
                = ( $difference @ ( $product @ V_p @ V_x ) @ ( 'funapp/2' @ V_f @ V_x ) ) ) )
          @ V_gp ) )
     => ( ( '2d.tangent/3' @ ( '2d.line2d/3' @ ( $uminus @ V_p ) @ 1.0 @ V_q ) @ ( '2d.graph-of/1' @ V_f ) @ ( '2d.point/2' @ V_t @ ( 'funapp/2' @ V_f @ V_t ) ) )
      <=> ( ( V_gp
            = ( $sum @ ( $product @ V_p @ V_t ) @ ( $uminus @ ( 'funapp/2' @ V_f @ V_t ) ) ) )
          & ( V_q
            = ( $uminus @ V_gp ) ) ) ) ) )).

thf(p1_m_answer,answer,(
    ^ [V_abc_dot_0: ( 'ListOf' @ $real )] :
      ( V_abc_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p1_m_question,[])).

thf(p2_m_answer,answer,(
    ^ [V_h_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_h_dot_0
        = ( $sum @ ( $sum @ ( $product @ 'a/0' @ ( '^/2' @ 'x/0' @ 2.0 ) ) @ ( $product @ 'b/0' @ 'x/0' ) ) @ 'c/0' ) ) ) ),
    answer_to(p2_m_question,[])).

