%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1999, Science Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2015-02-07
%%
%% <PROBLEM-TEXT>
%% In the $xyz$ space, assume that the discs $A$ and $B$ are on the $xy$
%% and $xz$ planes, respectively, and the following two conditions are
%% satisfied:
%%
%% (a) $A$ and $B$ are contained in the region within the distance $1$
%% from the origin. (b) $A$ and $B$ share only one point $P$, and the
%% $P$ is on both circumferences.
%%
%% Find the maximum value of the sum of the radii of the discs $A$ and
%% $B$. Here, a disc includes both the inside of the circle and the
%% circumference.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   3 equality;  23 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   53 (   0   ~;   0   |;  10   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   1   !;   3   ?;   5   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_maxSumRadAB: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_sumRadAB: $real] :
            ? [V_A: '3d.Shape',V_B: '3d.Shape',V_P: '3d.Point'] :
              ( ( '3d.disk-type/1' @ V_A )
              & ( '3d.disk-type/1' @ V_B )
              & ( '3d.inside-of/2' @ V_A @ '3d.xy-plane/0' )
              & ( '3d.inside-of/2' @ V_B @ '3d.zx-plane/0' )
              & ( '3d.inside-of/2' @ V_A
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p_dot_0: '3d.Point'] :
                      ( $greatereq @ 1.0 @ ( '3d.distance/2' @ '3d.origin/0' @ V_p_dot_0 ) ) ) )
              & ( '3d.inside-of/2' @ V_B
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( $greatereq @ 1.0 @ ( '3d.distance/2' @ '3d.origin/0' @ V_p ) ) ) )
              & ! [V_Q: '3d.Point'] :
                  ( ( ( '3d.on/2' @ V_Q @ V_A )
                    & ( '3d.on/2' @ V_Q @ V_B ) )
                 => ( V_Q = V_P ) )
              & ( '3d.on/2' @ V_P @ ( '3d.boundary-of/1' @ V_A ) )
              & ( '3d.on/2' @ V_P @ ( '3d.boundary-of/1' @ V_B ) )
              & ( V_sumRadAB
                = ( $sum @ ( '3d.radius-of/1' @ V_A ) @ ( '3d.radius-of/1' @ V_B ) ) ) ) )
        @ V_maxSumRadAB ) )).

thf(p_answer,answer,(
    ^ [V_maxSumRadAB_dot_0: $real] :
      ( V_maxSumRadAB_dot_0
      = ( $quotient @ 9.0 @ 8.0 ) ) ),
    answer_to(p_question,[])).

