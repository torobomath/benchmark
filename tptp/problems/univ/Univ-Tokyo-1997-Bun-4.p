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
%            Number of atoms       :  110 (   4 equality;  33 variable)
%            Maximal formula depth :   22 (  18 average)
%            Number of connectives :  100 (   0   ~;   4   |;  12   &;  84   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   4 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
            ? [V_t: $real,V_A: '2d.Point',V_B: '2d.Point'] :
              ( ( $lesseq @ 0.0 @ V_t )
              & ( $lesseq @ V_t @ 1.0 )
              & ( V_A
                = ( '2d.point/2' @ ( $quotient @ ( $product @ 2.0 @ ( $sum @ ( '^/2' @ V_t @ 2.0 ) @ ( $sum @ V_t @ 1.0 ) ) ) @ ( $product @ 3.0 @ ( $sum @ V_t @ 1.0 ) ) ) @ -2.0 ) )
              & ( V_B
                = ( '2d.point/2' @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ V_t ) @ ( $product @ -2.0 @ V_t ) ) )
              & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: $real,V_y: $real] :
        ( ( ( $lesseq @ V_x @ 0.0 )
          & ( $lesseq @ ( $sum @ ( $product @ 3.0 @ V_x ) @ V_y ) @ 0.0 )
          & ( $greatereq @ ( $sum @ V_y @ 2.0 ) @ 0.0 ) )
        | ( ( $less @ 0.0 @ V_x )
          & ( $less @ V_x @ 1.0 )
          & ( ( ( $greater @ V_y @ ( $product @ -3.0 @ V_x ) )
              & ( $lesseq @ V_y @ ( $difference @ ( '^/2' @ V_x @ 3.0 ) @ ( $product @ 3.0 @ V_x ) ) ) )
            | ( V_y
              = ( $product @ -3.0 @ V_x ) )
            | ( ( $less @ V_y @ ( $product @ -3.0 @ V_x ) )
              & ( $greatereq @ V_y @ -2.0 ) ) ) )
        | ( ( $lesseq @ 1.0 @ V_x )
          & ( $greatereq @ ( $sum @ ( $product @ 3.0 @ V_x ) @ V_y ) @ 0.0 )
          & ( $lesseq @ ( $sum @ V_y @ 2.0 ) @ 0.0 ) ) ) ),
    answer_to(p_question,[])).

