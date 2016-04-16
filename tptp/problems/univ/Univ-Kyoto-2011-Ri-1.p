%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Answer the following questions:
%%
%% (1) Same as Kyodai-2011-Bun-Zenki-Suugaku-1 (1).
%%
%% (2) Find the definite integral
%% $\int_0^{\frac{1}{2}}(x+1)\sqrt{1+2 x^2} dx$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   2 equality;   4 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   32 (   0   ~;   0   |;   0   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_I: $real] :
        ( V_I
        = ( 'integral/3'
          @ ^ [V_x: $real] :
              ( $product @ ( $sum @ V_x @ 1.0 ) @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( $product @ 2.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
          @ 0.0
          @ ( $quotient @ 1.0 @ 2.0 ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_I_dot_0: $real] :
      ( V_I_dot_0
      = ( $sum @ ( $quotient @ ( $product @ ( 'sqrt/1' @ 2.0 ) @ 'Pi/0' ) @ 16.0 ) @ ( $sum @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 12.0 ) @ ( $quotient @ 1.0 @ 6.0 ) ) ) ) ),
    answer_to(p2_question,[])).

