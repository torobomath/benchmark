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

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :   87 (   6 equality;  15 variable)
%            Maximal formula depth :   24 (   8 average)
%            Number of connectives :   73 (   0   ~;   0   |;  10   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   3   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_R: '3d.Shape'] :
        ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 0.0 @ 'b/0' )
        & ( $lesseq @ 0.0 @ 'c/0' )
        & ( V_R
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '3d.Point'] :
                ( ( $lesseq @ ( 'abs/1' @ ( '3d.x-coord/1' @ V_p_dot_0 ) ) @ 'a/0' )
                & ( $lesseq @ ( 'abs/1' @ ( '3d.y-coord/1' @ V_p_dot_0 ) ) @ 'b/0' )
                & ( ( '3d.z-coord/1' @ V_p_dot_0 )
                  = 'c/0' ) ) ) )
        & ( V_S
          = ( '3d.area-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_p: '3d.Point'] :
                  ( ( '3d.on/2' @ V_p @ '3d.xy-plane/0' )
                  & ? [V_P: '3d.Point',V_PP: '3d.Point'] :
                      ( ( ( $sum @ ( $quotient @ ( '^/2' @ ( '3d.x-coord/1' @ V_P ) @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $quotient @ ( '^/2' @ ( '3d.y-coord/1' @ V_P ) @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) )
                        = 1.0 )
                      & ( ( '3d.z-coord/1' @ V_P )
                        = ( $sum @ 'c/0' @ 1.0 ) )
                      & ( '3d.on/2' @ V_PP @ V_R )
                      & ( '3d.on/2' @ V_PP @ ( '3d.line/2' @ V_P @ V_p ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $sum @ ( $product @ ( $sum @ 'Pi/0' @ 12.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 16.0 @ 'c/0' ) @ 4.0 ) ) @ ( $product @ 'a/0' @ 'b/0' ) ) ) ),
    answer_to(p_question,[])).

