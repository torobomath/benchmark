%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2007, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-02-15
%%
%% <PROBLEM-TEXT>
%% Answer the following questions.
%%
%% (1) When $A=(\begin{matrix} 2 & 4\\ -1 & -1\end{matrix})$ and
%% $E=(\begin{matrix} 1 & 0\\ 0 & 1\end{matrix})$, find
%% $A^6+2 A^4+2 A^3+2 A^2+2 A+3 E$.
%%
%% (2) Consider the quadrangular pyramid $OABCD$ whose base is the
%% quadrilateral $ABCD$. The point $P$ is at the vertex $O$ at the time
%% of $0$, and moves to any of the $5$ vertices of the quadrangular
%% pyramid every $1$ second according to the following rule: Rule: Move
%% to any of the vertices connected to the vertex where the point $P$
%% exists via one side with the same probability. Find the probability
%% that the point $P$ is at the vertex $O$ after $n$ seconds.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   2 equality;   2 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   58 (   0   ~;   0   |;   0   &;  58   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    0 func;   10 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Matrix'
    @ ^ [V_x: '2d.Matrix'] :
        ( V_x
        = ( '2d.m+/2' @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2.0 @ 4.0 @ -1.0 @ -1.0 ) @ 6 ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2.0 @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2.0 @ 4.0 @ -1.0 @ -1.0 ) @ 4 ) ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2.0 @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2.0 @ 4.0 @ -1.0 @ -1.0 ) @ 3 ) ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2.0 @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2.0 @ 4.0 @ -1.0 @ -1.0 ) @ 2 ) ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2.0 @ ( '2d.matrix/4' @ 2.0 @ 4.0 @ -1.0 @ -1.0 ) ) @ ( '2d.sm*/2' @ 3.0 @ ( '2d.matrix/4' @ 1.0 @ 0.0 @ 0.0 @ 1.0 ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: '2d.Matrix'] :
      ( V_x_dot_0
      = ( '2d.matrix/4' @ 3.0 @ 4.0 @ -1.0 @ 0.0 ) ) ),
    answer_to(p1_question,[])).

