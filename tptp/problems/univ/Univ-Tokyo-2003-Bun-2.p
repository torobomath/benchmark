%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2003, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers. Let $D$ be the region consisting of
%% all the points $(x, y)$ that satisfy the following four inequalities:
%% $\begin{matrix} x+3 y\ge a\\ 3 x+y\ge b\\ x\ge 0\\ y\ge 0\end{matrix}$
%% Find the minimum value of $x+y$ in the region $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   6 equality;  37 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :   84 (   0   ~;   3   |;  14   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   11 (   2 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '>=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '*/2' @ 3 @ ( '2d.y-coord/1' @ V_p ) ) ) @ V_a )
                & ( '>=/2' @ ( '+/2' @ ( '*/2' @ 3 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '2d.y-coord/1' @ V_p ) ) @ V_b )
                & ( '>=/2' @ ( '2d.x-coord/1' @ V_p ) @ 0 )
                & ( '>=/2' @ ( '2d.y-coord/1' @ V_p ) @ 0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_z: 'R'] :
              ? [V_x: 'R',V_y: 'R'] :
                ( ( V_z
                  = ( '+/2' @ V_x @ V_y ) )
                & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D ) ) )
          @ V_m ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ ( '//2' @ V_a @ 3 ) @ V_b )
        & ( '<=/2' @ V_b @ ( '*/2' @ 3 @ V_a ) )
        & ( V_m_dot_0
          = ( '//2' @ ( '+/2' @ V_a @ V_b ) @ 4 ) ) )
      | ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ V_b @ ( '//2' @ V_a @ 3 ) )
        & ( V_m_dot_0
          = ( '//2' @ V_a @ 3 ) ) )
      | ( ( '<=/2' @ 0 @ V_b )
        & ( '<=/2' @ ( '*/2' @ 3 @ V_a ) @ V_b )
        & ( V_m_dot_0
          = ( '//2' @ V_b @ 3 ) ) )
      | ( ( '<=/2' @ V_a @ 0 )
        & ( '<=/2' @ V_b @ 0 )
        & ( V_m_dot_0 = 0 ) ) ) ),
    answer_to(p_question,[])).
