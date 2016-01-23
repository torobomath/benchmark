%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $r$ be a positive number. Consider the origin $O(0, 0, 0)$ and
%% the points $A(1, 0, 0)$, $B(0, 1, 0)$, and $C(0, 0, 1)$ in the $xyz$
%% space. Find the condition that $r$ must satisfy in order that there
%% exist two points $P$ in the $xyz$ space that satisfy
%% $|\vec{PA}|=|\vec{PB}|=r |\vec{PO}|$ and $|\vec{PC}|=|\vec{PO}|$.
%% Represent the coordinates of these two points using $r$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  319 (  27 equality;  91 variable)
%            Maximal formula depth :   24 (  20 average)
%            Number of connectives :  265 (   2   ~;   2   |;  25   &; 236   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   20 (   0 sgn;   0   !;  14   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P1: '3d.Point',V_P2: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 1 @ 0 @ 0 ) )
        & ( V_B
          = ( '3d.point/3' @ 0 @ 1 @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0 @ 0 @ 1 ) )
        & ( V_P1 != V_P2 )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_A ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) )
          = ( '*/2' @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_C ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_A ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) )
          = ( '*/2' @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_C ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Ps: 'ListOf' @ '3d.Point'] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P1: '3d.Point',V_P2: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 1 @ 0 @ 0 ) )
        & ( V_B
          = ( '3d.point/3' @ 0 @ 1 @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0 @ 0 @ 1 ) )
        & ( V_P1 != V_P2 )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_A ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) )
          = ( '*/2' @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_C ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_A ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) )
          = ( '*/2' @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_C ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) )
        & ( V_Ps
          = ( 'cons/2' @ V_P1 @ ( 'cons/2' @ V_P2 @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( ( ( '</2' @ ( 'sqrt/1' @ ( '-/2' @ 3 @ ( 'sqrt/1' @ 6 ) ) ) @ V_r_dot_0 )
        & ( '</2' @ V_r_dot_0 @ 1 ) )
      | ( ( '</2' @ 1 @ V_r_dot_0 )
        & ( '</2' @ V_r_dot_0 @ ( 'sqrt/1' @ ( '+/2' @ 3 @ ( 'sqrt/1' @ 6 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Ps_dot_0: 'ListOf' @ '3d.Point'] :
    ? [V_P1_dot_0: '3d.Point',V_P2_dot_0: '3d.Point'] :
      ( ( ( V_Ps_dot_0
          = ( 'cons/2' @ V_P1_dot_0 @ ( 'cons/2' @ V_P2_dot_0 @ 'nil/0' ) ) )
        | ( V_Ps_dot_0
          = ( 'cons/2' @ V_P2_dot_0 @ ( 'cons/2' @ V_P1_dot_0 @ 'nil/0' ) ) ) )
      & ( V_P1_dot_0
        = ( '3d.point/3' @ ( '//2' @ ( '+/2' @ -2 @ ( 'sqrt/1' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '+/2' @ ( '-/2' @ ( '^/2' @ V_r @ 4 ) @ ( '*/2' @ 6 @ ( '^/2' @ V_r @ 2 ) ) ) @ 3 ) ) ) ) @ ( '*/2' @ 4 @ ( '-/2' @ ( '^/2' @ V_r @ 2 ) @ 1 ) ) ) @ ( '//2' @ ( '+/2' @ -2 @ ( 'sqrt/1' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '+/2' @ ( '-/2' @ ( '^/2' @ V_r @ 4 ) @ ( '*/2' @ 6 @ ( '^/2' @ V_r @ 2 ) ) ) @ 3 ) ) ) ) @ ( '*/2' @ 4 @ ( '-/2' @ ( '^/2' @ V_r @ 2 ) @ 1 ) ) ) @ ( '//2' @ 1 @ 2 ) ) )
      & ( V_P2_dot_0
        = ( '3d.point/3' @ ( '//2' @ ( '-/2' @ -2 @ ( 'sqrt/1' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '+/2' @ ( '-/2' @ ( '^/2' @ V_r @ 4 ) @ ( '*/2' @ 6 @ ( '^/2' @ V_r @ 2 ) ) ) @ 3 ) ) ) ) @ ( '*/2' @ 4 @ ( '-/2' @ ( '^/2' @ V_r @ 2 ) @ 1 ) ) ) @ ( '//2' @ ( '-/2' @ -2 @ ( 'sqrt/1' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '+/2' @ ( '-/2' @ ( '^/2' @ V_r @ 4 ) @ ( '*/2' @ 6 @ ( '^/2' @ V_r @ 2 ) ) ) @ 3 ) ) ) ) @ ( '*/2' @ 4 @ ( '-/2' @ ( '^/2' @ V_r @ 2 ) @ 1 ) ) ) @ ( '//2' @ 1 @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
