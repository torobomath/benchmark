%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1989, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-13
%%
%% <PROBLEM-TEXT>
%% Assume that $k > 0$. When the curves
%%
%% $y = k(x - x^3)$ and $x = k(y - y^3)$
%%
%% on the $x y$ plane have the intersection $({\alpha}, {\beta})$, where
%% ${\alpha}\not= {\beta}$, in the first quadrant, find the range of
%% $k$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   5 equality;  22 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   45 (   1   ~;   0   |;   7   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_k )
        & ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '*/2' @ V_k @ ( '-/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3 ) ) ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.x-coord/1' @ V_p )
                = ( '*/2' @ V_k @ ( '-/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 3 ) ) ) ) ) )
        & ? [V_a: 'R',V_b: 'R'] :
            ( ( V_a != V_b )
            & ( '</2' @ 0 @ V_a )
            & ( '</2' @ 0 @ V_b )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_C1 )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_a @ V_b ) @ V_C2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( '</2' @ 2 @ V_k_dot_0 ) ),
    answer_to(p_question,[])).
