%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2001, Humanities Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-22
%%
%% <PROBLEM-TEXT>
%% (a) Consider the planar vectors $\vec{OA} =(2 a, a)$ and
%% $\vec{OB} =(0, 2 b)$, where $a$ and $b$ are positive constants. Let
%% $C$ be the midpoint of the line segment $OB$. For the point $P$ on a
%% plane that is not on either the straight line $OA$ or $OB$, let $Q$
%% be the intersection of the straight line $OA$ and the straight line
%% passing through the point $P$ and parallel to the straight line $OB$,
%% and let $R$ be the intersection of the straight line $OB$ and the
%% straight line passing through the point $P$ and parallel to the
%% straight line $OA$, then it is possible to represent
%% $\vec{OQ} = s\vec{OA}$ and $\vec{OR} = t\vec{OB}$, where $s$ and $t$
%% are real numbers.
%%
%% (1) Let $k$ be a positive constant, then find the equation of the
%% curve $F$ formed by the point $P$ that satisfies $t =(s - k)^2$.
%%
%% (2) When the straight line $AC$ is in contact with $F$, find the
%% value of $k$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  279 (  22 equality; 113 variable)
%            Maximal formula depth :   44 (  17 average)
%            Number of connectives :  237 (   6   ~;   0   |;  47   &; 184   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   3   :;   0   =)
%            Number of variables   :   32 (   0 sgn;   0   !;  26   ?;   6   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('k/0_type',type,(
    'k/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_Fp: '2d.Point'] :
      ? [V_F: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $less @ 0.0 @ 'k/0' )
        & ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ ( $product @ 2.0 @ 'a/0' ) @ 'a/0' ) )
        & ( V_B
          = ( '2d.point/2' @ 0.0 @ ( $product @ 2.0 @ 'b/0' ) ) )
        & ( V_C
          = ( '2d.midpoint-of/2' @ V_O @ V_B ) )
        & ( '2d.on/2' @ V_Fp @ V_F )
        & ( V_F
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_O @ V_A ) )
                & ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_O @ V_B ) )
                & ? [V_l: '2d.Shape',V_m: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
                    ( ( '2d.line-type/1' @ V_l )
                    & ( '2d.on/2' @ V_P @ V_l )
                    & ( '2d.parallel/2' @ V_l @ ( '2d.line/2' @ V_O @ V_B ) )
                    & ( '2d.intersect/3' @ V_l @ ( '2d.line/2' @ V_O @ V_A ) @ V_Q )
                    & ( '2d.line-type/1' @ V_m )
                    & ( '2d.on/2' @ V_P @ V_m )
                    & ( '2d.parallel/2' @ V_m @ ( '2d.line/2' @ V_O @ V_A ) )
                    & ( '2d.intersect/3' @ V_m @ ( '2d.line/2' @ V_O @ V_B ) @ V_R )
                    & ? [V_s: $real,V_t: $real] :
                        ( ( ( '2d.vec/2' @ V_O @ V_Q )
                          = ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ V_O @ V_A ) ) )
                        & ( ( '2d.vec/2' @ V_O @ V_R )
                          = ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ V_O @ V_B ) ) )
                        & ( V_t
                          = ( '^/2' @ ( $difference @ V_s @ 'k/0' ) @ 2.0 ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_F: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_O: '2d.Point',V_a: $real,V_b: $real] :
        ( ( $less @ 0.0 @ V_a )
        & ( $less @ 0.0 @ V_b )
        & ( $less @ 0.0 @ V_k )
        & ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ ( $product @ 2.0 @ V_a ) @ V_a ) )
        & ( V_B
          = ( '2d.point/2' @ 0.0 @ ( $product @ 2.0 @ V_b ) ) )
        & ( V_C
          = ( '2d.midpoint-of/2' @ V_O @ V_B ) )
        & ( '2d.tangent/2' @ V_F @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( V_F
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_l: '2d.Shape',V_m: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
                ( ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_O @ V_A ) )
                & ~ ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_O @ V_B ) )
                & ( '2d.line-type/1' @ V_l )
                & ( '2d.on/2' @ V_P @ V_l )
                & ( '2d.parallel/2' @ V_l @ ( '2d.line/2' @ V_O @ V_B ) )
                & ( '2d.intersect/3' @ V_l @ ( '2d.line/2' @ V_O @ V_A ) @ V_Q )
                & ( '2d.line-type/1' @ V_m )
                & ( '2d.on/2' @ V_P @ V_m )
                & ( '2d.parallel/2' @ V_m @ ( '2d.line/2' @ V_O @ V_A ) )
                & ( '2d.intersect/3' @ V_m @ ( '2d.line/2' @ V_O @ V_B ) @ V_R )
                & ? [V_s: $real,V_t: $real] :
                    ( ( ( '2d.vec/2' @ V_O @ V_Q )
                      = ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ V_O @ V_A ) ) )
                    & ( ( '2d.vec/2' @ V_O @ V_R )
                      = ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ V_O @ V_B ) ) )
                    & ( V_t
                      = ( '^/2' @ ( $difference @ V_s @ V_k ) @ 2.0 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_p: '2d.Point'] :
    ? [V_x: $real,V_y: $real] :
      ( ( V_y
        = ( '2d.y-coord/1' @ V_p ) )
      & ( V_x
        = ( '2d.x-coord/1' @ V_p ) )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'k/0' )
      & ( ( $product @ 2.0 @ V_y )
       != V_x )
      & ( V_x != 0.0 )
      & ( V_y
        = ( $sum @ ( $product @ ( $quotient @ 'b/0' @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $sum @ ( $product @ ( $difference @ ( $quotient @ 1.0 @ 2.0 ) @ ( $quotient @ ( $product @ 2.0 @ ( $product @ 'b/0' @ 'k/0' ) ) @ 'a/0' ) ) @ V_x ) @ ( $product @ 2.0 @ ( $product @ 'b/0' @ ( '^/2' @ 'k/0' @ 2.0 ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( V_k_dot_0
      = ( $quotient @ 9.0 @ 8.0 ) ) ),
    answer_to(p2_question,[])).

