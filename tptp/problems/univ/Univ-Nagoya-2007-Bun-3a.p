%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Humanities Course, Problem 3a
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% (a) Let $p$ be a real number. Assume that equation
%% $x^4 +(8 - 2 p)x^2 + p = 0$ has four different real solutions, and
%% the solutions form an arithmetic progression when they are arranged
%% in ascending order. Find this $p$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   9 equality;  24 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   41 (   0   ~;   0   |;   8   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_p: $real] :
      ? [V_x1: $real,V_x2: $real,V_x3: $real,V_x4: $real,V_m: $real,V_f: 'R2R'] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_x: $real] :
                ( $sum @ ( '^/2' @ V_x @ 4.0 ) @ ( $sum @ ( $product @ ( $difference @ 8.0 @ ( $product @ 2.0 @ V_p ) ) @ ( '^/2' @ V_x @ 2.0 ) ) @ V_p ) ) ) )
        & ( 0.0
          = ( 'funapp/2' @ V_f @ V_x1 ) )
        & ( 0.0
          = ( 'funapp/2' @ V_f @ V_x2 ) )
        & ( 0.0
          = ( 'funapp/2' @ V_f @ V_x3 ) )
        & ( 0.0
          = ( 'funapp/2' @ V_f @ V_x4 ) )
        & ( $less @ 0.0 @ V_m )
        & ( V_x1
          = ( $sum @ V_x2 @ V_m ) )
        & ( V_x2
          = ( $sum @ V_x3 @ V_m ) )
        & ( V_x3
          = ( $sum @ V_x4 @ V_m ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_p_dot_0: $real] : ( V_p_dot_0 = 9.0 ) ),
    answer_to(p1_question,[])).

