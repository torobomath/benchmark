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
%            Number of atoms       :   63 (   2 equality;   2 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   57 (   0   ~;   0   |;   0   &;  57   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: '2d.Matrix'] :
        ( V_x
        = ( '2d.m+/2' @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2 @ 4 @ -1 @ -1 ) @ 6 ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2 @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2 @ 4 @ -1 @ -1 ) @ 4 ) ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2 @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2 @ 4 @ -1 @ -1 ) @ 3 ) ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2 @ ( '2d.m^/2' @ ( '2d.matrix/4' @ 2 @ 4 @ -1 @ -1 ) @ 2 ) ) @ ( '2d.m+/2' @ ( '2d.sm*/2' @ 2 @ ( '2d.matrix/4' @ 2 @ 4 @ -1 @ -1 ) ) @ ( '2d.sm*/2' @ 3 @ ( '2d.matrix/4' @ 1 @ 0 @ 0 @ 1 ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: '2d.Matrix'] :
      ( V_x_dot_0
      = ( '2d.matrix/4' @ 3 @ 4 @ -1 @ 0 ) ) ),
    answer_to(p1_question,[])).
