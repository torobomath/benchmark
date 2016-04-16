%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Science Course, Problem 5
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$, $d$, $p$, and $q$ be the real numbers that satisfy
%% $a d - b c > 0$, $p > 0$, and $q > 0$. Assume that the two matrices
%% $A =(\begin{matrix} a & b\\ c & d\end{matrix})$ and
%% $P =(\begin{matrix} p & 0\\ 0 & q\end{matrix})$ satisfy
%% $A P A = P^2$. Answer the following questions:
%%
%% (1) Prove that $P^3 A = A P^3$.
%%
%% (2) Represent $A$ using $p$ and $q$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  115 (   9 equality;  38 variable)
%            Maximal formula depth :   20 (  11 average)
%            Number of connectives :   94 (   0   ~;   1   |;  12   &;  80   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   2   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   8   !;   5   ?;   2   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    2 func;    4 numbers)

include('axioms.ax').

thf('p/0_type',type,(
    'p/0': $real )).

thf('q/0_type',type,(
    'q/0': $real )).

thf(p1,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real,V_d: $real,V_p: $real,V_q: $real,V_A: '2d.Matrix',V_P: '2d.Matrix'] :
      ( ( ( $greater @ ( $difference @ ( $product @ V_a @ V_d ) @ ( $product @ V_b @ V_c ) ) @ 0.0 )
        & ( $greater @ V_p @ 0.0 )
        & ( $greater @ V_q @ 0.0 )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ V_c @ V_d ) )
        & ( V_P
          = ( '2d.matrix/4' @ V_p @ 0.0 @ 0.0 @ V_q ) )
        & ( ( '2d.m*/2' @ V_A @ ( '2d.m*/2' @ V_P @ V_A ) )
          = ( '2d.m^/2' @ V_P @ 2 ) ) )
     => ( ( '2d.m*/2' @ ( '2d.m^/2' @ V_P @ 3 ) @ V_A )
        = ( '2d.m*/2' @ V_A @ ( '2d.m^/2' @ V_P @ 3 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Matrix'
    @ ^ [V_A: '2d.Matrix'] :
      ? [V_a: $real,V_b: $real,V_c: $real,V_d: $real,V_P: '2d.Matrix'] :
        ( ( $greater @ ( $difference @ ( $product @ V_a @ V_d ) @ ( $product @ V_b @ V_c ) ) @ 0.0 )
        & ( $greater @ 'p/0' @ 0.0 )
        & ( $greater @ 'q/0' @ 0.0 )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ V_c @ V_d ) )
        & ( V_P
          = ( '2d.matrix/4' @ 'p/0' @ 0.0 @ 0.0 @ 'q/0' ) )
        & ( ( '2d.m*/2' @ V_A @ ( '2d.m*/2' @ V_P @ V_A ) )
          = ( '2d.m^/2' @ V_P @ 2 ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_A_dot_0: '2d.Matrix'] :
      ( ( $less @ 0.0 @ 'p/0' )
      & ( $less @ 0.0 @ 'q/0' )
      & ( ( V_A_dot_0
          = ( '2d.matrix/4' @ ( 'sqrt/1' @ 'p/0' ) @ 0.0 @ 0.0 @ ( 'sqrt/1' @ 'q/0' ) ) )
        | ( V_A_dot_0
          = ( '2d.sm*/2' @ -1.0 @ ( '2d.matrix/4' @ ( 'sqrt/1' @ 'p/0' ) @ 0.0 @ 0.0 @ ( 'sqrt/1' @ 'q/0' ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

