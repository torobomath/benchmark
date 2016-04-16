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

% Syntax   : Number of formulae    :    5 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :   96 (   7 equality;  24 variable)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :   81 (   1   ~;   0   |;   7   &;  71   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   3   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   3 pred;    5 func;    7 numbers)

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
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( $less @ 'a/0' @ 0.0 )
        & ( V_C1
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $sum @ ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $sum @ ( $product @ 'b/0' @ V_x ) @ 'c/0' ) ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( ( $greater @ ( '2d.x-coord/1' @ V_p ) @ 0.0 )
                 => ( ( '2d.y-coord/1' @ V_p )
                    = ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $sum @ ( $uminus @ ( '2d.x-coord/1' @ V_p ) ) @ ( $quotient @ 3.0 @ 4.0 ) ) ) ) )
                & ( ( $lesseq @ ( '2d.x-coord/1' @ V_p ) @ 0.0 )
                 => ( ( '2d.y-coord/1' @ V_p )
                    = ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_p ) ) @ ( $quotient @ 3.0 @ 4.0 ) ) ) ) ) ) ) )
        & ? [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( V_P != V_Q )
            & ( '2d.tangent/3' @ V_C1 @ V_C2 @ V_P )
            & ( '2d.tangent/3' @ V_C1 @ V_C2 @ V_Q ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C1 @ ( 'cons/2' @ '2d.Shape' @ V_C2 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 9.0 @ ( $product @ 32.0 @ ( '^/2' @ ( $difference @ 1.0 @ 'a/0' ) @ 2.0 ) ) ) ) ),
    answer_to(p_question,[])).

