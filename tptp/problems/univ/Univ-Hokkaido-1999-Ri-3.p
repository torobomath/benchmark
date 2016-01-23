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

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  246 (  23 equality;  78 variable)
%            Maximal formula depth :   36 (  16 average)
%            Number of connectives :  192 (   0   ~;   0   |;  27   &; 165   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   42 (   2 sgn;   0   !;  26   ?;  12   ^)
%                                         (  38   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_R: '2d.Point'] :
      ? [V_L2: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_L2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
            ? [V_L1: '2d.Shape',V_L2: '2d.Shape',V_Q: '2d.Point',V_R: '2d.Point'] :
              ( ( V_L1
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
              & ( V_L2
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ) )
              & ( '2d.line-symmetry/3' @ V_P @ V_Q @ V_L1 )
              & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 )
              & ( 2
                = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) )).

thf(p3_range_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_Pn: '2d.Point',V_Qn: '2d.Point',V_Rn: '2d.Point',V_L1n: '2d.Shape',V_L2n: '2d.Shape',V_C: '2d.Shape'] :
        ( ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_Pn @ V_Qn @ V_Rn ) ) )
        & ( '2d.on/2' @ V_Pn @ V_C )
        & ( V_L1n
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
        & ( V_L2n
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ) )
        & ( '2d.line-symmetry/3' @ V_Pn @ V_Qn @ V_L1n )
        & ( '2d.line-symmetry/3' @ V_Pn @ V_Rn @ V_L2n )
        & ( V_C
          = ( '2d.set-as-shape/1'
            @ ( 'set-by-def/1'
              @ ^ [V_P: '2d.Point'] :
                ? [V_Q: '2d.Point',V_R: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape'] :
                  ( ( V_L1
                    = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
                  & ( V_L2
                    = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ) )
                  & ( '2d.line-symmetry/3' @ V_P @ V_Q @ V_L1 )
                  & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 )
                  & ( 2
                    = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_Smax: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_S: 'R'] :
            ? [V_Pn: '2d.Point',V_Qn: '2d.Point',V_Rn: '2d.Point',V_L1n: '2d.Shape',V_L2n: '2d.Shape',V_C: '2d.Shape'] :
              ( ( V_S
                = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_Pn @ V_Qn @ V_Rn ) ) )
              & ( '2d.on/2' @ V_Pn @ V_C )
              & ( V_L1n
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
              & ( V_L2n
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ) )
              & ( '2d.line-symmetry/3' @ V_Pn @ V_Qn @ V_L1n )
              & ( '2d.line-symmetry/3' @ V_Pn @ V_Rn @ V_L2n )
              & ( V_C
                = ( '2d.set-as-shape/1'
                  @ ( 'set-by-def/1'
                    @ ^ [V_P: '2d.Point'] :
                      ? [V_Q: '2d.Point',V_R: '2d.Point',V_L1: '2d.Shape',V_L2: '2d.Shape'] :
                        ( ( V_L1
                          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
                        & ( V_L2
                          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( 'sqrt/1' @ 3 ) @ 'nil/0' ) ) ) ) )
                        & ( '2d.line-symmetry/3' @ V_P @ V_Q @ V_L1 )
                        & ( '2d.line-symmetry/3' @ V_P @ V_R @ V_L2 )
                        & ( 2
                          = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) ) ) )
        @ V_Smax ) )).

thf(p1_answer,answer,(
    ^ [V_R_dot_0: '2d.Point'] :
      ( V_R_dot_0
      = ( '2d.point/2' @ ( '+/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) ) @ ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ V_b ) ) @ ( '+/2' @ ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ V_a ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_b ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( 'sqrt/1' @ ( '//2' @ 4 @ 3 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_range_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_S_dot_0 )
      & ( '<=/2' @ V_S_dot_0 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p3_range_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( 'sqrt/1' @ 3 ) ) ),
    answer_to(p3_question,[])).
