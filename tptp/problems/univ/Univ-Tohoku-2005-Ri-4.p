%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2005, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a negative real number, and consider the parabola $C_1$:
%% $y = a x^2 + b x + c$. When $C_1$ is in contact with the curve $C_2$:
%% $y =\{\begin{matrix} x^2-x+\frac{3}{4} &(if x > 0)\\ x^2+2 x+\frac{3}{4} &(if x\le 0)\end{matrix}$
%% at two points, represent the area of the region enclosed by $C_1$ and
%% $C_2$ using $a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (   7 equality;  29 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   77 (   1   ~;   0   |;   7   &;  67   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   12 (   3 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( '</2' @ V_a @ 0 )
        & ( V_C1
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_b @ V_x ) @ V_c ) ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( ( '>/2' @ ( '2d.x-coord/1' @ V_p ) @ 0 )
                 => ( ( '2d.y-coord/1' @ V_p )
                    = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '2d.x-coord/1' @ V_p ) ) @ ( '//2' @ 3 @ 4 ) ) ) ) )
                & ( ( '<=/2' @ ( '2d.x-coord/1' @ V_p ) @ 0 )
                 => ( ( '2d.y-coord/1' @ V_p )
                    = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '//2' @ 3 @ 4 ) ) ) ) ) ) ) )
        & ? [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( V_P != V_Q )
            & ( '2d.tangent/3' @ V_C1 @ V_C2 @ V_P )
            & ( '2d.tangent/3' @ V_C1 @ V_C2 @ V_Q ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_C2 @ 'nil/0' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 9 @ ( '*/2' @ 32 @ ( '^/2' @ ( '-/2' @ 1 @ V_a ) @ 2 ) ) ) ) ),
    answer_to(p_question,[])).
