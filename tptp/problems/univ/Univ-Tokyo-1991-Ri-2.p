%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Science Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-15
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be positive real numbers. Consider the plate
%% $R$ consisting of the points $(x, y, z)$ that satisfy $|x|\le a$,
%% $|y|\le b$, and $z=c$ in the $xyz$ space. When the point light source
%% $P$ makes a circuit on the ellipse
%% $\frac{x^2}{a^2}+\frac{y^2}{b^2}=1$, $z=c+1$ on the plane $z=c+1$,
%% draw the figure formed by the locus of the shade of the plate $R$,
%% and find the area of the figure.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   6 equality;  28 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :   72 (   0   ~;   0   |;  10   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   13 (   2 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_R: '3d.Shape'] :
        ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ 0 @ V_b )
        & ( '<=/2' @ 0 @ V_c )
        & ( V_R
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '3d.Point'] :
                ( ( '<=/2' @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_p_dot_0 ) ) @ V_a )
                & ( '<=/2' @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_p_dot_0 ) ) @ V_b )
                & ( ( '3d.z-coord/1' @ V_p_dot_0 )
                  = V_c ) ) ) )
        & ( V_S
          = ( '3d.area-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_p: '3d.Point'] :
                  ( ( '3d.on/2' @ V_p @ '3d.xy-plane/0' )
                  & ? [V_P: '3d.Point',V_PP: '3d.Point'] :
                      ( ( ( '+/2' @ ( '//2' @ ( '^/2' @ ( '3d.x-coord/1' @ V_P ) @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( '//2' @ ( '^/2' @ ( '3d.y-coord/1' @ V_P ) @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) )
                        = 1 )
                      & ( ( '3d.z-coord/1' @ V_P )
                        = ( '+/2' @ V_c @ 1 ) )
                      & ( '3d.on/2' @ V_PP @ V_R )
                      & ( '3d.on/2' @ V_PP @ ( '3d.line/2' @ V_P @ V_p ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ ( '+/2' @ ( '*/2' @ ( '+/2' @ 'Pi/0' @ 12 ) @ ( '^/2' @ V_c @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 16 @ V_c ) @ 4 ) ) @ ( '*/2' @ V_a @ V_b ) ) ) ),
    answer_to(p_question,[])).
