%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-08
%%
%% <PROBLEM-TEXT>
%% Find the area of the region that satisfies the simultaneous
%% inequalities
%% $\{\begin{matrix} |x|\le 2\\ y\ge x\\ y\le |\frac{3}{4} x^2 - 3|-2\end{matrix}$
%% on the $xy$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   2 equality;   7 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   32 (   0   ~;   0   |;   2   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_xy: '2d.Point'] :
                ( ( '<=/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_xy ) ) @ 2 )
                & ( '>=/2' @ ( '2d.y-coord/1' @ V_xy ) @ ( '2d.x-coord/1' @ V_xy ) )
                & ( '<=/2' @ ( '2d.y-coord/1' @ V_xy ) @ ( '+/2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ ( '//2' @ 3 @ 4 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_xy ) @ 2 ) ) @ ( '-/1' @ 3 ) ) ) @ ( '-/1' @ 2 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 64 @ 27 ) ) ),
    answer_to(p1_question,[])).
