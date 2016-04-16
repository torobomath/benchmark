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

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  100 (   6 equality;  18 variable)
%            Maximal formula depth :   16 (   8 average)
%            Number of connectives :   86 (   0   ~;   3   |;  14   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   2   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( $greatereq @ ( $sum @ ( '2d.x-coord/1' @ V_p ) @ ( $product @ 3.0 @ ( '2d.y-coord/1' @ V_p ) ) ) @ 'a/0' )
                & ( $greatereq @ ( $sum @ ( $product @ 3.0 @ ( '2d.x-coord/1' @ V_p ) ) @ ( '2d.y-coord/1' @ V_p ) ) @ 'b/0' )
                & ( $greatereq @ ( '2d.x-coord/1' @ V_p ) @ 0.0 )
                & ( $greatereq @ ( '2d.y-coord/1' @ V_p ) @ 0.0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_z: $real] :
              ? [V_x: $real,V_y: $real] :
                ( ( V_z
                  = ( $sum @ V_x @ V_y ) )
                & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D ) ) )
          @ V_m ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ ( $quotient @ 'a/0' @ 3.0 ) @ 'b/0' )
        & ( $lesseq @ 'b/0' @ ( $product @ 3.0 @ 'a/0' ) )
        & ( V_m_dot_0
          = ( $quotient @ ( $sum @ 'a/0' @ 'b/0' ) @ 4.0 ) ) )
      | ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 'b/0' @ ( $quotient @ 'a/0' @ 3.0 ) )
        & ( V_m_dot_0
          = ( $quotient @ 'a/0' @ 3.0 ) ) )
      | ( ( $lesseq @ 0.0 @ 'b/0' )
        & ( $lesseq @ ( $product @ 3.0 @ 'a/0' ) @ 'b/0' )
        & ( V_m_dot_0
          = ( $quotient @ 'b/0' @ 3.0 ) ) )
      | ( ( $lesseq @ 'a/0' @ 0.0 )
        & ( $lesseq @ 'b/0' @ 0.0 )
        & ( V_m_dot_0 = 0.0 ) ) ) ),
    answer_to(p_question,[])).

