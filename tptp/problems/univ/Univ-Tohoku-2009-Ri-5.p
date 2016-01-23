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

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  108 (   9 equality;  46 variable)
%            Maximal formula depth :   20 (  16 average)
%            Number of connectives :   87 (   0   ~;   1   |;  10   &;  75   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   19 (   0 sgn;   8   !;   5   ?;   2   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R',V_d: 'R',V_p: 'R',V_q: 'R',V_A: '2d.Matrix',V_P: '2d.Matrix'] :
      ( ( ( '>/2' @ ( '-/2' @ ( '*/2' @ V_a @ V_d ) @ ( '*/2' @ V_b @ V_c ) ) @ 0 )
        & ( '>/2' @ V_p @ 0 )
        & ( '>/2' @ V_q @ 0 )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ V_c @ V_d ) )
        & ( V_P
          = ( '2d.matrix/4' @ V_p @ 0 @ 0 @ V_q ) )
        & ( ( '2d.m*/2' @ V_A @ ( '2d.m*/2' @ V_P @ V_A ) )
          = ( '2d.m^/2' @ V_P @ 2 ) ) )
     => ( ( '2d.m*/2' @ ( '2d.m^/2' @ V_P @ 3 ) @ V_A )
        = ( '2d.m*/2' @ V_A @ ( '2d.m^/2' @ V_P @ 3 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_A: '2d.Matrix'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R',V_d: 'R',V_P: '2d.Matrix'] :
        ( ( '>/2' @ ( '-/2' @ ( '*/2' @ V_a @ V_d ) @ ( '*/2' @ V_b @ V_c ) ) @ 0 )
        & ( '>/2' @ V_p @ 0 )
        & ( '>/2' @ V_q @ 0 )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ V_c @ V_d ) )
        & ( V_P
          = ( '2d.matrix/4' @ V_p @ 0 @ 0 @ V_q ) )
        & ( ( '2d.m*/2' @ V_A @ ( '2d.m*/2' @ V_P @ V_A ) )
          = ( '2d.m^/2' @ V_P @ 2 ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_A_dot_0: '2d.Matrix'] :
      ( ( V_A_dot_0
        = ( '2d.matrix/4' @ ( 'sqrt/1' @ V_p ) @ 0 @ ( 'sqrt/1' @ V_q ) @ 0 ) )
      | ( V_A_dot_0
        = ( '2d.sm*/2' @ -1 @ ( '2d.matrix/4' @ ( 'sqrt/1' @ V_p ) @ 0 @ ( 'sqrt/1' @ V_q ) @ 0 ) ) ) ) ),
    answer_to(p2_question,[])).
