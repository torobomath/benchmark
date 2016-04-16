%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Science Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-14
%%
%% <PROBLEM-TEXT>
%% Let $A$ and $B$ be fixed points on a plane, and let $c$ be a positive
%% constant. When the point $P$ on a plane satisfies
%% $|\vec{PA}| |\vec{PB}|+\vec{PA}\cdot\vec{PB}=c$, find the locus of
%% the point $P$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   5 type;   0 defn)
%            Number of atoms       :   69 (   8 equality;  20 variable)
%            Maximal formula depth :   18 (   6 average)
%            Number of connectives :   51 (   0   ~;   0   |;   6   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   5   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p0_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_Pn: '2d.Shape'] :
        ( ( $greater @ 'c/0' @ 0.0 )
        & ( V_Pn
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_A: '2d.Point',V_B: '2d.Point'] :
                ( ( V_A
                  = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
                & ( V_B
                  = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
                & ( ( $sum @ ( $product @ ( '2d.distance/2' @ V_P @ V_A ) @ ( '2d.distance/2' @ V_P @ V_B ) ) @ ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_P @ V_A ) @ ( '2d.vec/2' @ V_P @ V_B ) ) )
                  = 'c/0' ) ) ) ) ) )).

thf(p0_answer,answer,(
    ^ [V_Pn_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point'] :
      ( ( $greater @ 'c/0' @ 0.0 )
      & ( V_A_dot_0
        = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
      & ( V_Pn_dot_0
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P_dot_0: '2d.Point'] :
              ( ( $sum @ ( '2d.distance/2' @ V_P_dot_0 @ V_A_dot_0 ) @ ( '2d.distance/2' @ V_P_dot_0 @ V_B_dot_0 ) )
              = ( 'sqrt/1' @ ( $sum @ ( $product @ 2.0 @ 'c/0' ) @ ( '^/2' @ ( '2d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) @ 2.0 ) ) ) ) ) ) ) ),
    answer_to(p0_question,[])).

