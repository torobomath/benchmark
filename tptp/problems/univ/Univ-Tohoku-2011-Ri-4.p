%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2011, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Consider the line segment $OA$ with the length $3$ on a plane, and
%% represent the vector $\vec{OA}$ as $\vec{a}$. For the real number $t$
%% that satisfies $0 < t < 1$, determine the point $P$ so that
%% $\vec{OP} = t\vec{a}$. Determine the vector $\vec{b}$ with the
%% magnitude $2$ to form the angle ${\theta}$ $(0 < {\theta} < {\pi})$
%% with $\vec{a}$, and determine the point $B$ so that
%% $\vec{OB} =\vec{b}$. Let $Q$ be the middle point of the line segment
%% $OB$, and let $R$ be the intersection of the line segments $AQ$ and
%% $BP$. Find the range of the value of $t$ such that $\vec{OR}$ and
%% $\vec{AB}$ are not perpendicular to each other for any value of
%% ${\theta}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   7 equality;  35 variable)
%            Maximal formula depth :   29 (  18 average)
%            Number of connectives :   60 (   1   ~;   0   |;  12   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   11 (   0 sgn;   9   !;   0   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
        ( ( '</2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 1 )
        & ! [V_O: '2d.Point',V_A: '2d.Point',V_a: '2d.Vector',V_P: '2d.Point',V_theta: 'R',V_b: '2d.Vector',V_B: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
            ( ( ( ( '2d.distance/2' @ V_O @ V_A )
                = 3 )
              & ( V_a
                = ( '2d.vec/2' @ V_O @ V_A ) )
              & ( ( '2d.vec/2' @ V_O @ V_P )
                = ( '2d.sv*/2' @ V_t @ V_a ) )
              & ( V_theta
                = ( '2d.rad-of-angle/1' @ ( '2d.angle-of-vectors/2' @ V_b @ V_a ) ) )
              & ( '</2' @ 0 @ V_theta )
              & ( '</2' @ V_theta @ 'Pi/0' )
              & ( ( '2d.vec/2' @ V_O @ V_B )
                = V_b )
              & ( ( '2d.distance/2' @ V_O @ V_B )
                = 2 )
              & ( V_Q
                = ( '2d.midpoint-of/2' @ V_O @ V_B ) )
              & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ ( '2d.seg/2' @ V_A @ V_Q ) @ ( '2d.seg/2' @ V_B @ V_P ) ) ) )
           => ~ ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_R ) @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 2 @ 5 ) @ V_t_dot_0 )
      & ( '</2' @ V_t_dot_0 @ 1 ) ) ),
    answer_to(p_question,[])).
