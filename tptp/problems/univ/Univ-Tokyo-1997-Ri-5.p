%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Science Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number that satisfies $0<a<\frac{1}{4}$. Find the
%% volume of the solid of revolution formed by rotating the region
%% defined by the inequality $y^2\le x^2(1-x^2)-a$ on the $xy$ plane
%% around the $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   61 (   3 equality;   8 variable)
%            Maximal formula depth :   19 (  11 average)
%            Number of connectives :   53 (   0   ~;   0   |;   6   &;  47   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   1   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   1   ?;   3   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_D: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 'a/0' @ ( $quotient @ 1.0 @ 4.0 ) )
        & ( V_D
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
                ( ( '3d.on/2' @ V_p @ '3d.xy-plane/0' )
                & ( $lesseq @ ( '^/2' @ ( '3d.y-coord/1' @ V_p ) @ 2.0 ) @ ( $difference @ ( $product @ ( '^/2' @ ( '3d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $difference @ 1.0 @ ( '^/2' @ ( '3d.x-coord/1' @ V_p ) @ 2.0 ) ) ) @ 'a/0' ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D @ '3d.y-axis/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ ( $quotient @ 1.0 @ 4.0 ) )
      & ( V_V_dot_0
        = ( $product @ ( $quotient @ ( $difference @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) @ 4.0 ) @ ( '^/2' @ 'Pi/0' @ 2.0 ) ) ) ) ),
    answer_to(p_question,[])).

