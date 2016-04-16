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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  351 (  28 equality;  77 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :  296 (   3   ~;   2   |;  29   &; 262   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;  14   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    5 func;    8 numbers)

include('axioms.ax').

thf('r/0_type',type,(
    'r/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P1: '3d.Point',V_P2: '3d.Point'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_A
          = ( '3d.point/3' @ 1.0 @ 0.0 @ 0.0 ) )
        & ( V_B
          = ( '3d.point/3' @ 0.0 @ 1.0 @ 0.0 ) )
        & ( V_C
          = ( '3d.point/3' @ 0.0 @ 0.0 @ 1.0 ) )
        & ( V_P1 != V_P2 )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_A ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) )
          = ( $product @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_C ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_A ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) )
          = ( $product @ V_r @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) ) )
        & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_C ) )
          = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ '3d.Point' )
    @ ^ [V_Ps: ( 'ListOf' @ '3d.Point' )] :
        ( ( $less @ 0.0 @ 'r/0' )
        & ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P1: '3d.Point',V_P2: '3d.Point'] :
            ( ( V_O = '3d.origin/0' )
            & ( V_A
              = ( '3d.point/3' @ 1.0 @ 0.0 @ 0.0 ) )
            & ( V_B
              = ( '3d.point/3' @ 0.0 @ 1.0 @ 0.0 ) )
            & ( V_C
              = ( '3d.point/3' @ 0.0 @ 0.0 @ 1.0 ) )
            & ( V_P1 != V_P2 )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_A ) )
              = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_B ) )
              = ( $product @ 'r/0' @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_C ) )
              = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P1 @ V_O ) ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_A ) )
              = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_B ) )
              = ( $product @ 'r/0' @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) ) )
            & ( ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_C ) )
              = ( '3d.radius/1' @ ( '3d.vec/2' @ V_P2 @ V_O ) ) )
            & ( V_Ps
              = ( 'cons/2' @ '3d.Point' @ V_P1 @ ( 'cons/2' @ '3d.Point' @ V_P2 @ ( 'nil/0' @ '3d.Point' ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( ( ( $less @ ( 'sqrt/1' @ ( $difference @ 3.0 @ ( 'sqrt/1' @ 6.0 ) ) ) @ V_r_dot_0 )
        & ( $less @ V_r_dot_0 @ 1.0 ) )
      | ( ( $less @ 1.0 @ V_r_dot_0 )
        & ( $less @ V_r_dot_0 @ ( 'sqrt/1' @ ( $sum @ 3.0 @ ( 'sqrt/1' @ 6.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Ps_dot_0: ( 'ListOf' @ '3d.Point' )] :
      ( ( 1.0 != 'r/0' )
      & ( $less @ ( 'sqrt/1' @ ( $difference @ 3.0 @ ( 'sqrt/1' @ 6.0 ) ) ) @ 'r/0' )
      & ( $less @ 'r/0' @ ( 'sqrt/1' @ ( $sum @ 3.0 @ ( 'sqrt/1' @ 6.0 ) ) ) )
      & ? [V_P1_dot_0: '3d.Point',V_P2_dot_0: '3d.Point'] :
          ( ( ( V_Ps_dot_0
              = ( 'cons/2' @ '3d.Point' @ V_P1_dot_0 @ ( 'cons/2' @ '3d.Point' @ V_P2_dot_0 @ ( 'nil/0' @ '3d.Point' ) ) ) )
            | ( V_Ps_dot_0
              = ( 'cons/2' @ '3d.Point' @ V_P2_dot_0 @ ( 'cons/2' @ '3d.Point' @ V_P1_dot_0 @ ( 'nil/0' @ '3d.Point' ) ) ) ) )
          & ( V_P1_dot_0
            = ( '3d.point/3' @ ( $quotient @ ( $sum @ -2.0 @ ( 'sqrt/1' @ ( $product @ ( $uminus @ 2.0 ) @ ( $sum @ ( $sum @ ( '^/2' @ 'r/0' @ 4.0 ) @ ( $product @ -6.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) @ 3.0 ) ) ) ) @ ( $product @ 4.0 @ ( $difference @ ( '^/2' @ 'r/0' @ 2.0 ) @ 1.0 ) ) ) @ ( $quotient @ ( $sum @ -2.0 @ ( 'sqrt/1' @ ( $product @ ( $uminus @ 2.0 ) @ ( $sum @ ( $sum @ ( '^/2' @ 'r/0' @ 4.0 ) @ ( $product @ -6.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) @ 3.0 ) ) ) ) @ ( $product @ 4.0 @ ( $difference @ ( '^/2' @ 'r/0' @ 2.0 ) @ 1.0 ) ) ) @ ( $quotient @ 1.0 @ 2.0 ) ) )
          & ( V_P2_dot_0
            = ( '3d.point/3' @ ( $quotient @ ( $difference @ -2.0 @ ( 'sqrt/1' @ ( $product @ ( $uminus @ 2.0 ) @ ( $sum @ ( $sum @ ( '^/2' @ 'r/0' @ 4.0 ) @ ( $product @ -6.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) @ 3.0 ) ) ) ) @ ( $product @ 4.0 @ ( $difference @ ( '^/2' @ 'r/0' @ 2.0 ) @ 1.0 ) ) ) @ ( $quotient @ ( $difference @ -2.0 @ ( 'sqrt/1' @ ( $product @ ( $uminus @ 2.0 ) @ ( $sum @ ( $sum @ ( '^/2' @ 'r/0' @ 4.0 ) @ ( $product @ -6.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) ) @ 3.0 ) ) ) ) @ ( $product @ 4.0 @ ( $difference @ ( '^/2' @ 'r/0' @ 2.0 ) @ 1.0 ) ) ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

