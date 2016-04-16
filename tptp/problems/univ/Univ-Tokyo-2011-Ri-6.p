%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Science Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% (1) Let $x$ and $y$ be real numbers, and assume that $x>0$. Find the
%% difference between the maximum and minimum values of the quadratic
%% function of $f(t)=x t^2+y t$ with the variable $t$in the range of
%% $0\le t\le 1$
%%
%% (2) Let $S$ be the region on the coordinate plane consisting of all
%% the points $(x, y, z)$ that satisfy the following conditions: $x>0$
%% is true, and there exists the real number $z$ that satisfies
%% $0\le x t^2+y t+z\le 1$ for all the real numbers $t$ in the range of
%% $0\le t\le 1$. Draw the outline of $S$.
%%
%% (3) Let $V$ be the region in the coordinate space consisting of all
%% the points $(x, y, z)$ that satisfy the following conditions:
%% $0\le x\le 1$ is true, and $0\le x t^2+y t+z\le 1$ is true for all
%% the real numbers $t$ in the range of $0\le t\le 1$. Find the volume
%% of $V$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  331 (  10 equality;  77 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :  305 (   0   ~;   6   |;  35   &; 262   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   39 (   2   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   2   !;   6   ?;  11   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   3 pred;    5 func;    7 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_m: $real,V_M: $real] :
        ( ? [V_f: 'R2R',V_t0: $real,V_t1: $real] :
            ( ( $less @ 0.0 @ 'x/0' )
            & ( V_f
              = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 'y/0' @ ( 'cons/2' @ $real @ 'x/0' @ ( 'nil/0' @ $real ) ) ) ) ) )
            & ( 'func-min/4' @ V_f
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_t_dot_0: $real] :
                    ( ( $lesseq @ 0.0 @ V_t_dot_0 )
                    & ( $lesseq @ V_t_dot_0 @ 1.0 ) ) )
              @ V_t0
              @ V_m )
            & ( 'func-max/4' @ V_f
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_t: $real] :
                    ( ( $lesseq @ 0.0 @ V_t )
                    & ( $lesseq @ V_t @ 1.0 ) ) )
              @ V_t1
              @ V_M ) )
        & ( V_a
          = ( $difference @ V_M @ V_m ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_S: '2d.Shape'] :
        ( V_S
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p ) )
              & ? [V_z: $real] :
                ! [V_t: $real] :
                  ( ( ( $lesseq @ 0.0 @ V_t )
                    & ( $lesseq @ V_t @ 1.0 ) )
                 => ( ( $lesseq @ 0.0 @ ( $sum @ ( $product @ ( '2d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $sum @ ( $product @ ( '2d.y-coord/1' @ V_p ) @ V_t ) @ V_z ) ) )
                    & ( $lesseq @ ( $sum @ ( $product @ ( '2d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $sum @ ( $product @ ( '2d.y-coord/1' @ V_p ) @ V_t ) @ V_z ) ) @ 1.0 ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
        ( V_a
        = ( '3d.volume-of/1'
          @ ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
                ( ( $lesseq @ 0.0 @ ( '3d.x-coord/1' @ V_p ) )
                & ( $lesseq @ ( '3d.x-coord/1' @ V_p ) @ 1.0 )
                & ! [V_t: $real] :
                    ( ( ( $lesseq @ 0.0 @ V_t )
                      & ( $lesseq @ V_t @ 1.0 ) )
                   => ( ( $lesseq @ 0.0 @ ( $sum @ ( $product @ ( '3d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $sum @ ( $product @ ( '3d.y-coord/1' @ V_p ) @ V_t ) @ ( '3d.z-coord/1' @ V_p ) ) ) )
                      & ( $lesseq @ ( $sum @ ( $product @ ( '3d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $sum @ ( $product @ ( '3d.y-coord/1' @ V_p ) @ V_t ) @ ( '3d.z-coord/1' @ V_p ) ) ) @ 1.0 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( ( $less @ 0.0 @ 'x/0' )
        & ( $less @ 0.0 @ 'y/0' )
        & ( V_a_dot_0
          = ( $sum @ 'x/0' @ 'y/0' ) ) )
      | ( ( $less @ 0.0 @ 'x/0' )
        & ( $less @ ( $uminus @ 'x/0' ) @ 'y/0' )
        & ( $lesseq @ 'y/0' @ 0.0 )
        & ( V_a_dot_0
          = ( $sum @ 'x/0' @ ( $sum @ 'y/0' @ ( $quotient @ ( '^/2' @ 'y/0' @ 2.0 ) @ ( $product @ 4.0 @ 'x/0' ) ) ) ) ) )
      | ( ( $less @ 0.0 @ 'x/0' )
        & ( $less @ ( $product @ -2.0 @ 'x/0' ) @ 'y/0' )
        & ( $lesseq @ 'y/0' @ ( $uminus @ 'x/0' ) )
        & ( V_a_dot_0
          = ( $quotient @ ( '^/2' @ 'y/0' @ 2.0 ) @ ( $product @ 4.0 @ 'x/0' ) ) ) )
      | ( ( $less @ 0.0 @ 'x/0' )
        & ( $lesseq @ 'y/0' @ ( $product @ -2.0 @ 'x/0' ) )
        & ( V_a_dot_0
          = ( $difference @ 0.0 @ ( $sum @ 'x/0' @ 'y/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: '2d.Shape'] :
      ( V_S_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $greatereq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 0.0 )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $difference @ 1.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) )
            | ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( $uminus @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 0.0 )
              & ( $lesseq @ ( $uminus @ ( $sum @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( $product @ 2.0 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $difference @ ( $product @ 2.0 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
            | ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( $product @ -2.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $uminus @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) )
              & ( $lesseq @ ( $product @ -2.0 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $product @ 2.0 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
            | ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $product @ -2.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) )
              & ( $greatereq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $uminus @ ( $sum @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1.0 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( V_a_dot_0
      = ( $quotient @ 17.0 @ 18.0 ) ) ),
    answer_to(p3_question,[])).

