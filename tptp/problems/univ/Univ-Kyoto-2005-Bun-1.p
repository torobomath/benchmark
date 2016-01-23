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
%            Number of atoms       :  102 (   5 equality;  34 variable)
%            Maximal formula depth :   18 (  17 average)
%            Number of connectives :   92 (   0   ~;   3   |;  14   &;  75   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_L: '2d.Shape',V_C: '2d.Shape',V_a: 'R',V_b: 'R'] :
        ( ( V_L
          = ( '2d.seg/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 2 ) ) )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p )
                = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_p ) ) @ V_b ) ) ) ) )
        & ( '2d.intersect/2' @ V_C @ V_L )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( ( ( '</2' @ 2 @ V_a_dot_0 )
          & ( '<=/2' @ ( '-/2' @ 1 @ V_a_dot_0 ) @ V_b_dot_0 )
          & ( '<=/2' @ V_b_dot_0 @ 0 ) )
        | ( ( '<=/2' @ 0 @ V_a_dot_0 )
          & ( '<=/2' @ V_a_dot_0 @ 1 )
          & ( '<=/2' @ ( '*/2' @ 4 @ V_b_dot_0 ) @ ( '^/2' @ ( '-/2' @ V_a_dot_0 @ 2 ) @ 2 ) )
          & ( '>=/2' @ V_b_dot_0 @ 0 ) )
        | ( ( '<=/2' @ 1 @ V_a_dot_0 )
          & ( '<=/2' @ V_a_dot_0 @ 2 )
          & ( '<=/2' @ ( '*/2' @ 4 @ V_b_dot_0 ) @ ( '^/2' @ ( '-/2' @ V_a_dot_0 @ 2 ) @ 2 ) )
          & ( '>=/2' @ V_b_dot_0 @ ( '-/2' @ 1 @ V_a_dot_0 ) ) )
        | ( ( '</2' @ V_a_dot_0 @ 0 )
          & ( '<=/2' @ 0 @ V_b_dot_0 )
          & ( '<=/2' @ V_b_dot_0 @ ( '-/2' @ 1 @ V_a_dot_0 ) ) ) ) ) ),
    answer_to(p_question,[])).
