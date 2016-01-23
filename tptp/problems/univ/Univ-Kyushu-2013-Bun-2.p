%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2013, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $D$ be the region defined by the following simultaneous
%% inequalities: $x + 2 y\le 5$, $3 x + y\le 8$, $- 2 x - y\le 4$, and
%% $- x - 4 y\le 7$
%% When the point $P(x, y)$ moves in the region $D$, let $Q$ and $R$ be
%% the points that give the maximum and minimum values of $x + y$,
%% respectively. Answer the following questions:
%%
%% (1) Find the coordinates of the points $Q$ and $R$.
%%
%% (2) Assume that $a > 0$ and $b > 0$. Assume that when the point
%% $P(x, y)$ moves in the region $D$, $P(x, y)$ becomes the maximum only
%% at the point $Q$ and becomes the minimum only at the point $R$. Find
%% the value of $\frac{a}{b}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  238 (   7 equality;  79 variable)
%            Maximal formula depth :   24 (  15 average)
%            Number of connectives :  224 (   2   ~;   0   |;  23   &; 196   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   17 (   0 sgn;   3   !;   8   ?;   6   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_QR: 'ListOf' @ '2d.Point'] :
      ? [V_D: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '<=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_p ) ) ) @ 5 )
                & ( '<=/2' @ ( '+/2' @ ( '*/2' @ 3 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '2d.y-coord/1' @ V_p ) ) @ 8 )
                & ( '<=/2' @ ( '-/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '2d.y-coord/1' @ V_p ) ) ) @ 4 )
                & ( '<=/2' @ ( '-/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '*/2' @ 4 @ ( '2d.y-coord/1' @ V_p ) ) ) ) @ 7 ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_D )
        & ( '2d.on/2' @ V_R @ V_D )
        & ! [V_X: '2d.Point'] :
            ( ( '2d.on/2' @ V_X @ V_D )
           => ( ( '<=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_X ) @ ( '2d.y-coord/1' @ V_X ) ) @ ( '+/2' @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.y-coord/1' @ V_Q ) ) )
              & ( '<=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_R ) @ ( '2d.y-coord/1' @ V_R ) ) @ ( '+/2' @ ( '2d.x-coord/1' @ V_X ) @ ( '2d.y-coord/1' @ V_X ) ) ) ) )
        & ( V_QR
          = ( 'cons/2' @ V_Q @ ( 'cons/2' @ V_R @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'R'] :
      ? [V_D: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point',V_a: 'R',V_b: 'R'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '<=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_p ) ) ) @ 5 )
                & ( '<=/2' @ ( '+/2' @ ( '*/2' @ 3 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '2d.y-coord/1' @ V_p ) ) @ 8 )
                & ( '<=/2' @ ( '-/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '2d.y-coord/1' @ V_p ) ) ) @ 4 )
                & ( '<=/2' @ ( '-/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '*/2' @ 4 @ ( '2d.y-coord/1' @ V_p ) ) ) ) @ 7 ) ) ) )
        & ( '2d.on/2' @ V_Q @ V_D )
        & ( '2d.on/2' @ V_R @ V_D )
        & ! [V_X_dot_0: '2d.Point'] :
            ( ( '2d.on/2' @ V_X_dot_0 @ V_D )
           => ( ( '<=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_X_dot_0 ) @ ( '2d.y-coord/1' @ V_X_dot_0 ) ) @ ( '+/2' @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.y-coord/1' @ V_Q ) ) )
              & ( '<=/2' @ ( '+/2' @ ( '2d.x-coord/1' @ V_R ) @ ( '2d.y-coord/1' @ V_R ) ) @ ( '+/2' @ ( '2d.x-coord/1' @ V_X_dot_0 ) @ ( '2d.y-coord/1' @ V_X_dot_0 ) ) ) ) )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( V_ab
          = ( '//2' @ V_a @ V_b ) )
        & ! [V_X: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_X @ V_D )
              & ( V_X != V_Q )
              & ( V_X != V_R ) )
           => ( ( '</2' @ ( '+/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_X ) ) @ ( '*/2' @ V_b @ ( '2d.y-coord/1' @ V_X ) ) ) @ ( '+/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_Q ) ) @ ( '*/2' @ V_b @ ( '2d.y-coord/1' @ V_Q ) ) ) )
              & ( '</2' @ ( '+/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_R ) ) @ ( '*/2' @ V_b @ ( '2d.y-coord/1' @ V_R ) ) ) @ ( '+/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_X ) ) @ ( '*/2' @ V_b @ ( '2d.y-coord/1' @ V_X ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_QR_dot_0: 'ListOf' @ '2d.Point'] :
      ( V_QR_dot_0
      = ( 'cons/2' @ ( '2d.point/2' @ ( '//2' @ 11 @ 5 ) @ ( '//2' @ 7 @ 5 ) ) @ ( 'cons/2' @ ( '2d.point/2' @ ( '//2' @ -9 @ 7 ) @ ( '//2' @ -10 @ 7 ) ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ab_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ 1 @ 2 ) @ V_ab_dot_0 )
      & ( '</2' @ V_ab_dot_0 @ 2 ) ) ),
    answer_to(p2_question,[])).
