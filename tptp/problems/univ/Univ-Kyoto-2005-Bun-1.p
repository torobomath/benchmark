%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2005, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-28
%%
%% <PROBLEM-TEXT>
%% Let $L$ be the line segment connecting the origin and the point
%% $(1, 2)$ (including both ends) on the $xy$ plane. Draw the set of
%% pairs of real numbers $(a, b)$ such that the curve $y=x^2+a x+b$ has
%% common points with $L$, on the $ab$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  110 (   5 equality;  34 variable)
%            Maximal formula depth :   18 (  17 average)
%            Number of connectives :  100 (   0   ~;   3   |;  14   &;  83   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   3 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_L: '2d.Shape',V_C: '2d.Shape',V_a: $real,V_b: $real] :
        ( ( V_L
          = ( '2d.seg/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 2.0 ) ) )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $sum @ ( $product @ V_a @ ( '2d.x-coord/1' @ V_p ) ) @ V_b ) ) ) ) )
        & ( '2d.intersect/2' @ V_C @ V_L )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( ( ( $less @ 2.0 @ V_a_dot_0 )
          & ( $lesseq @ ( $difference @ 1.0 @ V_a_dot_0 ) @ V_b_dot_0 )
          & ( $lesseq @ V_b_dot_0 @ 0.0 ) )
        | ( ( $lesseq @ 0.0 @ V_a_dot_0 )
          & ( $lesseq @ V_a_dot_0 @ 1.0 )
          & ( $lesseq @ ( $product @ 4.0 @ V_b_dot_0 ) @ ( '^/2' @ ( $difference @ V_a_dot_0 @ 2.0 ) @ 2.0 ) )
          & ( $greatereq @ V_b_dot_0 @ 0.0 ) )
        | ( ( $lesseq @ 1.0 @ V_a_dot_0 )
          & ( $lesseq @ V_a_dot_0 @ 2.0 )
          & ( $lesseq @ ( $product @ 4.0 @ V_b_dot_0 ) @ ( '^/2' @ ( $difference @ V_a_dot_0 @ 2.0 ) @ 2.0 ) )
          & ( $greatereq @ V_b_dot_0 @ ( $difference @ 1.0 @ V_a_dot_0 ) ) )
        | ( ( $less @ V_a_dot_0 @ 0.0 )
          & ( $lesseq @ 0.0 @ V_b_dot_0 )
          & ( $lesseq @ V_b_dot_0 @ ( $difference @ 1.0 @ V_a_dot_0 ) ) ) ) ) ),
    answer_to(p_question,[])).

