%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1993, Science Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Consider the tetrahedron $ABCD$ whose faces are all congruent. Assume
%% that the vertices $A$, $B$, and $C$ are on the positive part of the
%% $x$, $y$, and $z$ axes, and the side lengths are $AB=2 l-1$,
%% $BC=2 l$, and $CA=2 l+1$ ( $l>2$), respectively. When the volume of
%% the tetrahedron $ABCD$ is $V(l)$, find the following limit value:
%% $\lim_{l\rightarrow 2}\frac{V(l)}{\sqrt{l-2}}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   6 equality;  36 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :   67 (   0   ~;   0   |;  11   &;  54   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   3   !;   6   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_lim: $real] :
      ? [V_V: 'R2R'] :
        ( ( 'converge/3'
          @ ( 'fun/1'
            @ ^ [V_l_dot_0: $real] :
                ( $quotient @ ( 'funapp/2' @ V_V @ V_l_dot_0 ) @ ( 'sqrt/1' @ ( $difference @ V_l_dot_0 @ 2.0 ) ) ) )
          @ 2.0
          @ V_lim )
        & ! [V_l: $real] :
            ( ( $greater @ V_l @ 2.0 )
           => ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_ABCD: '3d.Shape'] :
                ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
                & ( V_ABCD
                  = ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) )
                & ! [V_F0: '3d.Shape',V_F1: '3d.Shape'] :
                    ( ( ( '3d.is-face-of/2' @ V_F0 @ V_ABCD )
                      & ( '3d.is-face-of/2' @ V_F1 @ V_ABCD ) )
                   => ( '3d.similar/2' @ V_F0 @ V_F1 ) )
                & ( '3d.on/2' @ V_A @ '3d.x-axis/0' )
                & ( '3d.on/2' @ V_B @ '3d.y-axis/0' )
                & ( '3d.on/2' @ V_C @ '3d.z-axis/0' )
                & ( ( '3d.distance/2' @ V_A @ V_B )
                  = ( $difference @ ( $product @ 2.0 @ V_l ) @ 1.0 ) )
                & ( ( '3d.distance/2' @ V_B @ V_C )
                  = ( $product @ 2.0 @ V_l ) )
                & ( ( '3d.distance/2' @ V_C @ V_A )
                  = ( $sum @ ( $product @ 2.0 @ V_l ) @ 1.0 ) )
                & ( ( 'funapp/2' @ V_V @ V_l )
                  = ( '3d.volume-of/1' @ V_ABCD ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_lim_dot_0: $real] : ( V_lim_dot_0 = 8.0 ) ),
    answer_to(p_question,[])).

