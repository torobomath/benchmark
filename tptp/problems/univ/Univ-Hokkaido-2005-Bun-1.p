%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2005, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-09-27
%%
%% <PROBLEM-TEXT>
%% Answer the following questions:
%%
%% (1) Find the range of the value of the real number $k$ such that the
%% quadratic equation of $x$, $x^2-2 k x-3 k^2+1=0$ has imaginary
%% solutions.
%%
%% (2) Find the minimum and maximum values of
%% $F(k)=\int_0^k(x^2 - 2 k x - 3 k^2 + 1)d x$ in the range of $k$ found
%% in (1).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  141 (   4 equality;  20 variable)
%            Maximal formula depth :   22 (  13 average)
%            Number of connectives :  127 (   0   ~;   0   |;   3   &; 124   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   2   ?;   8   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
        ( 'complex.has-complex-solution/1' @ ( 'complex.quad-equation/3' @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_k @ 2.0 ) ) ) @ 1.0 ) @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ 1.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_maxfk: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_fk: $real] :
            ? [V_k: $real] :
              ( ( V_fk
                = ( 'integration/3' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_k @ 2.0 ) ) ) @ 1.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ 0.0 @ V_k ) )
              & ( 'complex.has-complex-solution/1' @ ( 'complex.quad-equation/3' @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_k @ 2.0 ) ) ) @ 1.0 ) @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ 1.0 ) ) ) )
        @ V_maxfk ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minfk: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_fk: $real] :
            ? [V_k: $real] :
              ( ( V_fk
                = ( 'integration/3' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_k @ 2.0 ) ) ) @ 1.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ 0.0 @ V_k ) )
              & ( 'complex.has-complex-solution/1' @ ( 'complex.quad-equation/3' @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_k @ 2.0 ) ) ) @ 1.0 ) @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ 1.0 ) ) ) )
        @ V_minfk ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ V_k_dot_0 )
      & ( $less @ V_k_dot_0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_maxfk_dot_0: $real] :
      ( V_maxfk_dot_0
      = ( $product @ ( $quotient @ 2.0 @ 33.0 ) @ ( 'sqrt/1' @ 11.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_minfk_dot_0: $real] :
      ( V_minfk_dot_0
      = ( $uminus @ ( $product @ ( $quotient @ 2.0 @ 33.0 ) @ ( 'sqrt/1' @ 11.0 ) ) ) ) ),
    answer_to(p3_question,[])).

