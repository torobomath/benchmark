%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 1999, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% Define the straight lines $L_1$ and $L_2$ on the $x y$ plane as
%% $L_1$: $y = 0$ ( $x$ axis) and $L_2$: $y =\sqrt{3} x$. Let $P$ be a
%% point on the $x y$ plane. Let $Q$ be the point symmetric to $P$ about
%% the straight line $L_1$, and let $R$ be the point symmetric to $P$
%% about the straight line $L_2$. Answer the following questions:
%%
%% (1) Let $(a, b)$ be the coordinates of $P$, then represent the
%% coordinates of $R$ using $a$ and $b$.
%%
%% (2) Assuming that the distance between the points $Q$ and $R$ is $2$,
%% find the locus $C$ of $P$.
%%
%% (3) When the point $P$ moves on $C$, find the maximum area of the
%% triangle $PQR$ and the coordinates of $P$ that give the area.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  281 (  23 equality;  72 variable)
%            Maximal formula depth :   36 (  13 average)
%            Number of connectives :  227 (   0   ~;   0   |;  27   &; 200   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   2   :;   0   =)
%            Number of variables   :   38 (   0 sgn;   0   !;  26   ?;  12   ^)
%                                         (  38   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_R: '2d.Point'] :
      ? [V_L2: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_L2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ 'a/0' @ 'b/0' ) )
        & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
            ? [V_L1: '2d.Shape',V_L2: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
              ( ( V_L1
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) )
              & ( V_L2
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( '2d.line-symmetry/3' @ V_P @ V_Q @ V_L1 )
              & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 )
              & ( 2.0
                = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) )).

thf(p3_range_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_Pn: '2d.Point',V_Qn: '2d.Point',V_Rn: '2d.Point',V_L1n: '2d.Shape',V_L2n: '2d.Shape',V_C: '2d.Shape'] :
        ( ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_Pn @ V_Qn @ V_Rn ) ) )
        & ( '2d.on/2' @ V_Pn @ V_C )
        & ( V_L1n
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) )
        & ( V_L2n
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( '2d.line-symmetry/3' @ V_Pn @ V_Qn @ V_L1n )
        & ( '2d.line-symmetry/3' @ V_Pn @ V_Rn @ V_L2n )
        & ( V_C
          = ( '2d.set-as-shape/1'
            @ ( 'set-by-def/1' @ '2d.Point'
              @ ^ [V_P: '2d.Point'] :
                ? [V_Q: '2d.Point',V_R: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape'] :
                  ( ( V_L1
                    = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) )
                  & ( V_L2
                    = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
                  & ( '2d.line-symmetry/3' @ V_P @ V_Q @ V_L1 )
                  & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 )
                  & ( 2.0
                    = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Smax: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_S: $real] :
            ? [V_Pn: '2d.Point',V_Qn: '2d.Point',V_Rn: '2d.Point',V_L1n: '2d.Shape',V_L2n: '2d.Shape',V_C: '2d.Shape'] :
              ( ( V_S
                = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_Pn @ V_Qn @ V_Rn ) ) )
              & ( '2d.on/2' @ V_Pn @ V_C )
              & ( V_L1n
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) )
              & ( V_L2n
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( '2d.line-symmetry/3' @ V_Pn @ V_Qn @ V_L1n )
              & ( '2d.line-symmetry/3' @ V_Pn @ V_Rn @ V_L2n )
              & ( V_C
                = ( '2d.set-as-shape/1'
                  @ ( 'set-by-def/1' @ '2d.Point'
                    @ ^ [V_P: '2d.Point'] :
                      ? [V_Q: '2d.Point',V_R: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape'] :
                        ( ( V_L1
                          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) )
                        & ( V_L2
                          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 3.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
                        & ( '2d.line-symmetry/3' @ V_P @ V_Q @ V_L1 )
                        & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 )
                        & ( 2.0
                          = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) ) ) )
        @ V_Smax ) )).

thf(p1_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
      ( V_R_dot_0
      = ( '2d.point/2' @ ( $sum @ ( $uminus @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) ) @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ 'b/0' ) ) @ ( $sum @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ 'a/0' ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'b/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( 'sqrt/1' @ ( $quotient @ 4.0 @ 3.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_range_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ V_S_dot_0 )
      & ( $lesseq @ V_S_dot_0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p3_range_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( 'sqrt/1' @ 3.0 ) ) ),
    answer_to(p3_question,[])).

