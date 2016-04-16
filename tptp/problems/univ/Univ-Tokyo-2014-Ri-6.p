%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2014, Science Course, Problem 6
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-04-01
%%
%% <PROBLEM-TEXT>
%% Let $O$ be the origin of the coordinate plane.
%% The point $P$ moves on the segment $y = \sqrt{3}x$ ($0 \le x \le 2$)
%% and the point $Q$ moves on the segment $y = -\sqrt{3}x$ ($-2 \le x \le 0)
%% so that the sum of the lengths of the segments $OP$ and $OQ$ is 6.
%% Let $D$ be the region that the segment $PQ$ pass through.
%% (1) Let $s$ be a real number satisfying $0 \le s \le 2$.
%% Find the range of $t$ such that the point $(s, t)$ is in the region $D$.
%% (2) Draw the region $D$.
%%
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  352 (  10 equality;  68 variable)
%            Maximal formula depth :   27 (  17 average)
%            Number of connectives :  328 (   0   ~;   4   |;  37   &; 287   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   1   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   0   !;  11   ?;  11   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   1 pred;    5 func;    9 numbers)

include('axioms.ax').

thf('s/0_type',type,(
    's/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_O: '2d.Point',V_D: '2d.Shape',V_Pf: '2d.Shape',V_Qf: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_d: '2d.Point'] :
                ( ( V_O = '2d.origin/0' )
                & ( V_Pf
                  = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) )
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q_dot_0: '2d.Point'] :
                          ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q_dot_0 ) )
                          & ( $lesseq @ ( '2d.x-coord/1' @ V_q_dot_0 ) @ 2.0 ) ) ) ) )
                & ( '2d.on/2' @ V_P @ V_Pf )
                & ( V_Qf
                  = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) )
                    @ ( '2d.shape-of-cpfun/1'
                      @ ^ [V_q: '2d.Point'] :
                          ( ( $lesseq @ ( $uminus @ 2.0 ) @ ( '2d.x-coord/1' @ V_q ) )
                          & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 0.0 ) ) ) ) )
                & ( '2d.on/2' @ V_Q @ V_Qf )
                & ( ( $sum @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) )
                  = 6.0 )
                & ( '2d.on/2' @ V_d @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) )
        & ( $lesseq @ 0.0 @ 's/0' )
        & ( $lesseq @ 's/0' @ 2.0 )
        & ( '2d.on/2' @ ( '2d.point/2' @ 's/0' @ V_t ) @ V_D ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_P: '2d.Point',V_Q: '2d.Point',V_O: '2d.Point',V_Pf: '2d.Shape',V_Qf: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_d: '2d.Point'] :
              ( ( V_O = '2d.origin/0' )
              & ( V_Pf
                = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) )
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_q_dot_0: '2d.Point'] :
                        ( ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_q_dot_0 ) )
                        & ( $lesseq @ ( '2d.x-coord/1' @ V_q_dot_0 ) @ 2.0 ) ) ) ) )
              & ( '2d.on/2' @ V_P @ V_Pf )
              & ( V_Qf
                = ( '2d.intersection/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ ( 'sqrt/1' @ 3.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) )
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_q: '2d.Point'] :
                        ( ( $lesseq @ ( $uminus @ 2.0 ) @ ( '2d.x-coord/1' @ V_q ) )
                        & ( $lesseq @ ( '2d.x-coord/1' @ V_q ) @ 0.0 ) ) ) ) )
              & ( '2d.on/2' @ V_Q @ V_Qf )
              & ( ( $sum @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) )
                = 6.0 )
              & ( '2d.on/2' @ V_d @ ( '2d.seg/2' @ V_P @ V_Q ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( ( ( $lesseq @ ( $product @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 's/0' ) @ V_t_dot_0 )
        & ( $lesseq @ V_t_dot_0 @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 3.0 ) @ ( $sum @ 's/0' @ 4.0 ) ) )
        & ( $lesseq @ 1.0 @ 's/0' )
        & ( $lesseq @ 's/0' @ 2.0 ) )
      | ( ( $lesseq @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 3.0 ) @ ( $difference @ 4.0 @ 's/0' ) ) @ V_t_dot_0 )
        & ( $lesseq @ V_t_dot_0 @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 6.0 ) @ ( $sum @ ( '^/2' @ 's/0' @ 2.0 ) @ 9.0 ) ) )
        & ( $lesseq @ 0.0 @ 's/0' )
        & ( $lesseq @ 's/0' @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_s: $real,V_t: $real] :
        ( ( ( $lesseq @ 1.0 @ V_s )
          & ( $lesseq @ V_s @ 2.0 )
          & ( $lesseq @ ( $product @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ V_s ) @ V_t )
          & ( $lesseq @ V_t @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 3.0 ) @ ( $sum @ V_s @ 4.0 ) ) ) )
        | ( ( $lesseq @ 0.0 @ V_s )
          & ( $lesseq @ V_s @ 1.0 )
          & ( $lesseq @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 3.0 ) @ ( $difference @ 4.0 @ V_s ) ) @ V_t )
          & ( $lesseq @ V_t @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 6.0 ) @ ( $sum @ ( '^/2' @ V_s @ 2.0 ) @ 9.0 ) ) ) )
        | ( ( $lesseq @ -1.0 @ V_s )
          & ( $lesseq @ V_s @ 0.0 )
          & ( $lesseq @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 3.0 ) @ ( $sum @ 4.0 @ V_s ) ) @ V_t )
          & ( $lesseq @ V_t @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 6.0 ) @ ( $sum @ ( '^/2' @ V_s @ 2.0 ) @ 9.0 ) ) ) )
        | ( ( $lesseq @ -2.0 @ V_s )
          & ( $lesseq @ V_s @ -1.0 )
          & ( $lesseq @ ( $product @ ( $uminus @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) ) @ V_s ) @ V_t )
          & ( $lesseq @ V_t @ ( $product @ ( $quotient @ ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 3.0 ) @ ( $sum @ ( $uminus @ V_s ) @ 4.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

