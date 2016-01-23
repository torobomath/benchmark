%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1997, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% For the real number $t$ that satisfies $0\le t\le 1$, define the
%% points $A$ and $B$ on the $xy$ plane as
%% $A(\frac{2(t^2+t+1)}{3(t+1)}, -2)$ and $B(\frac{2}{3} t, -2 t)$. When
%% $t$ moves in the range of $0\le t\le 1$, draw the movable range of
%% the straight line $AB$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (   4 equality;  33 variable)
%            Maximal formula depth :   22 (  18 average)
%            Number of connectives :   99 (   0   ~;   4   |;  12   &;  83   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
            ? [V_t: 'R',V_A: '2d.Point',V_B: '2d.Point'] :
              ( ( '<=/2' @ 0 @ V_t )
              & ( '<=/2' @ V_t @ 1 )
              & ( V_A
                = ( '2d.point/2' @ ( '//2' @ ( '*/2' @ 2 @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ ( '+/2' @ V_t @ 1 ) ) ) @ ( '*/2' @ 3 @ ( '+/2' @ V_t @ 1 ) ) ) @ -2 ) )
              & ( V_B
                = ( '2d.point/2' @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ V_t ) @ ( '*/2' @ -2 @ V_t ) ) )
              & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: 'R',V_y: 'R'] :
        ( ( ( '<=/2' @ V_x @ 0 )
          & ( '<=/2' @ ( '+/2' @ ( '*/2' @ 3 @ V_x ) @ V_y ) @ 0 )
          & ( '>=/2' @ ( '+/2' @ V_y @ 2 ) @ 0 ) )
        | ( ( '</2' @ 0 @ V_x )
          & ( '</2' @ V_x @ 1 )
          & ( ( ( '>/2' @ V_y @ ( '*/2' @ -3 @ V_x ) )
              & ( '<=/2' @ V_y @ ( '-/2' @ ( '^/2' @ V_x @ 3 ) @ ( '*/2' @ 3 @ V_x ) ) ) )
            | ( V_y
              = ( '*/2' @ -3 @ V_x ) )
            | ( ( '</2' @ V_y @ ( '*/2' @ -3 @ V_x ) )
              & ( '>=/2' @ V_y @ -2 ) ) ) )
        | ( ( '<=/2' @ 1 @ V_x )
          & ( '>=/2' @ ( '+/2' @ ( '*/2' @ 3 @ V_x ) @ V_y ) @ 0 )
          & ( '<=/2' @ ( '+/2' @ V_y @ 2 ) @ 0 ) ) ) ),
    answer_to(p_question,[])).
