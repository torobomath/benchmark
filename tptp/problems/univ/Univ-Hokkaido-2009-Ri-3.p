%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2009, Science Course, Problem 3
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-24
%%
%% <PROBLEM-TEXT>
%% Let $t > 0$, and let $l_1$ be the straight line defined as $x = t$.
%% Let $C$ be the parabola defined as $y =\frac{x^2}{4}$. Let $l_2$ be
%% the tangent to $C$ at the point $(t, \frac{t^2}{4})$ which is the
%% common point of $C$ and $l_1$. Answer the following questions:
%%
%% (1) Let ${\theta}$ be the angle formed by $l_1$ and $l_2$, then find
%% $\cos {\theta}$, where $0\le {\theta}\le\frac{{\pi}}{2}$.
%%
%% (2) Let $l_3$ be the straight line symmetric to $l_1$ about $l_2$,
%% then find the equation of $l_3$.
%%
%% (3) Prove that $l_3$ passes through a fixed point irrespective of the
%% value of $t$.
%%
%% (4) Let $P$ and $Q$ be the two common points of $l_3$ and $C$. Find
%% the value of $t$ that gives the minimum length of the line segment
%% $PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   14 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  581 (  46 equality; 230 variable)
%            Maximal formula depth :   59 (  19 average)
%            Number of connectives :  479 (   4   ~;   0   |; 100   &; 372   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (   0   :)
%            Number of variables   :   79 (   0 sgn;   3   !;  50   ?;  22   ^)
%                                         (  75   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_cosT: 'R'] :
      ? [V_theta: 'R',V_l1: '2d.Shape',V_l2: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape'] :
        ( ( '>/2' @ V_t @ 0 )
        & ( '2d.line-type/1' @ V_l1 )
        & ( V_l1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( V_t
                = ( '2d.x-coord/1' @ V_p ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_T
          = ( '2d.point/2' @ V_t @ ( '//2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) ) )
        & ( '2d.on/2' @ V_T @ V_C )
        & ( '2d.on/2' @ V_T @ V_l1 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
        & ( '<=/2' @ 0 @ V_theta )
        & ( '<=/2' @ V_theta @ ( '//2' @ 'Pi/0' @ 2 ) )
        & ( '2d.lines-intersect-angle/3' @ V_l1 @ V_l2 @ V_theta )
        & ( V_cosT
          = ( 'cos/1' @ V_theta ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_l3: '2d.Shape'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape'] :
        ( ( '>/2' @ V_t @ 0 )
        & ( V_l1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( V_t
                = ( '2d.x-coord/1' @ V_p ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_T
          = ( '2d.point/2' @ V_t @ ( '//2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) ) )
        & ( '2d.on/2' @ V_T @ V_C )
        & ( '2d.on/2' @ V_T @ V_l1 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 ) ) )).

thf(p3,conjecture,(
    ? [V_P: '2d.Point'] :
    ! [V_t: 'R'] :
      ( ( '>/2' @ V_t @ 0 )
     => ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_C: '2d.Shape',V_T: '2d.Point',V_l3: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l1 )
          & ( V_l1
            = ( '2d.shape-of-cpfun/1'
              @ ^ [V_p: '2d.Point'] :
                  ( V_t
                  = ( '2d.x-coord/1' @ V_p ) ) ) )
          & ( V_C
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
          & ( '2d.line-type/1' @ V_l2 )
          & ( V_T
            = ( '2d.point/2' @ V_t @ ( '//2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) ) )
          & ( '2d.on/2' @ V_T @ V_C )
          & ( '2d.on/2' @ V_T @ V_l1 )
          & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
          & ( '2d.line-type/1' @ V_l3 )
          & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 )
          & ( '2d.on/2' @ V_P @ V_l3 ) ) ) )).

thf(p3_0,conjecture,(
    ? [V_P: '2d.Point'] :
    ! [V_t: 'R'] :
      ( ( '>/2' @ V_t @ 0 )
     => ? [V_l3: '2d.Shape'] :
          ( ( V_l3
            = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ ( '-/1' @ 4 ) ) @ ( '*/2' @ 4 @ V_t ) ) @ 'nil/0' ) ) ) ) )
          & ( '2d.on/2' @ V_P @ V_l3 ) ) ) )).

thf(p3_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ! [V_t: 'R'] :
        ( ( '>/2' @ V_t @ 0 )
       => ? [V_l3: '2d.Shape'] :
            ( ( V_l3
              = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ ( '-/1' @ 4 ) ) @ ( '*/2' @ 4 @ V_t ) ) @ 'nil/0' ) ) ) ) )
            & ( '2d.on/2' @ V_P @ V_l3 ) ) ) )).

thf(p4_0_qustion,question,
    ( 'Find/1'
    @ ^ [V_PQmin: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_PQ: 'R'] :
            ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_t: 'R'] :
              ( ( '>/2' @ V_t @ 0 )
              & ( '2d.line-type/1' @ V_l1 )
              & ( V_l1
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( V_t
                      = ( '2d.x-coord/1' @ V_p ) ) ) )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
              & ( '2d.line-type/1' @ V_l2 )
              & ( V_T
                = ( '2d.point/2' @ V_t @ ( '//2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) ) )
              & ( '2d.on/2' @ V_T @ V_C )
              & ( '2d.on/2' @ V_T @ V_l1 )
              & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
              & ( '2d.line-type/1' @ V_l3 )
              & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 )
              & ( '2d.on/2' @ V_P @ V_C )
              & ( '2d.on/2' @ V_P @ V_l3 )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_Q @ V_l3 )
              & ( V_P != V_Q )
              & ( V_PQ
                = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )
        @ V_PQmin ) )).

thf(p4_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_PQmin: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_PQ: 'R'] :
            ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_TT: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_t: 'R'] :
              ( ( '>/2' @ V_t @ 0 )
              & ( '2d.line-type/1' @ V_l1 )
              & ( V_l1
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( V_t
                      = ( '2d.x-coord/1' @ V_p ) ) ) )
              & ( V_C
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
              & ( '2d.line-type/1' @ V_l2 )
              & ( V_TT
                = ( '2d.point/2' @ V_t @ ( '//2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) ) )
              & ( '2d.on/2' @ V_TT @ V_C )
              & ( '2d.on/2' @ V_TT @ V_l1 )
              & ( '2d.tangent/3' @ V_C @ V_l2 @ V_TT )
              & ( '2d.line-type/1' @ V_l3 )
              & ( V_l3
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ ( '-/1' @ 4 ) ) @ ( '*/2' @ 4 @ V_t ) ) @ 'nil/0' ) ) ) ) )
              & ( '2d.on/2' @ V_P @ V_C )
              & ( '2d.on/2' @ V_P @ V_l3 )
              & ( '2d.on/2' @ V_Q @ V_C )
              & ( '2d.on/2' @ V_Q @ V_l3 )
              & ( V_P != V_Q )
              & ( V_PQ
                = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )
        @ V_PQmin ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_tmin: 'R'] :
      ? [V_PQmin: 'R',V_l1: '2d.Shape',V_l2: '2d.Shape',V_l3: '2d.Shape',V_T: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_PQmin
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( '>/2' @ V_tmin @ 0 )
        & ( '2d.line-type/1' @ V_l1 )
        & ( V_l1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( V_tmin
                = ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_T
          = ( '2d.point/2' @ V_tmin @ ( '//2' @ ( '^/2' @ V_tmin @ 2 ) @ 4 ) ) )
        & ( '2d.on/2' @ V_T @ V_C )
        & ( '2d.on/2' @ V_T @ V_l1 )
        & ( '2d.tangent/3' @ V_C @ V_l2 @ V_T )
        & ( '2d.line-type/1' @ V_l3 )
        & ( '2d.line-symmetry-shapes/3' @ V_l1 @ V_l3 @ V_l2 )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_P @ V_l3 )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.on/2' @ V_Q @ V_l3 )
        & ( V_P != V_Q )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_PQ: 'R'] :
              ? [V_l1_dot_0: '2d.Shape',V_l2_dot_0: '2d.Shape',V_l3_dot_0: '2d.Shape',V_T_dot_0: '2d.Point',V_C_dot_0: '2d.Shape',V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point',V_t: 'R'] :
                ( ( '>/2' @ V_t @ 0 )
                & ( '2d.line-type/1' @ V_l1_dot_0 )
                & ( V_l1_dot_0
                  = ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p: '2d.Point'] :
                        ( V_t
                        = ( '2d.x-coord/1' @ V_p ) ) ) )
                & ( V_C_dot_0
                  = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 4 ) @ 'nil/0' ) ) ) ) ) )
                & ( '2d.line-type/1' @ V_l2_dot_0 )
                & ( V_T_dot_0
                  = ( '2d.point/2' @ V_t @ ( '//2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) ) )
                & ( '2d.on/2' @ V_T_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_T_dot_0 @ V_l1_dot_0 )
                & ( '2d.tangent/3' @ V_C_dot_0 @ V_l2_dot_0 @ V_T_dot_0 )
                & ( '2d.line-type/1' @ V_l3_dot_0 )
                & ( '2d.line-symmetry-shapes/3' @ V_l1_dot_0 @ V_l3_dot_0 @ V_l2_dot_0 )
                & ( '2d.on/2' @ V_P_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_P_dot_0 @ V_l3_dot_0 )
                & ( '2d.on/2' @ V_Q_dot_0 @ V_C_dot_0 )
                & ( '2d.on/2' @ V_Q_dot_0 @ V_l3_dot_0 )
                & ( V_P_dot_0 != V_Q_dot_0 )
                & ( V_PQ
                  = ( '2d.distance/2' @ V_P_dot_0 @ V_Q_dot_0 ) ) ) )
          @ V_PQmin ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosT_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_t )
      & ( V_cosT_dot_0
        = ( '//2' @ V_t @ ( 'sqrt/1' @ ( '+/2' @ 4 @ ( '^/2' @ V_t @ 2 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l3_dot_0: '2d.Shape'] :
      ( ( '</2' @ 0 @ V_t )
      & ( V_l3_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 1 ) @ ( '2d.point/2' @ 1 @ ( '+/2' @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_t @ 2 ) @ 4 ) @ ( '*/2' @ 4 @ V_t ) ) @ 1 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( V_P_dot_0
      = ( '2d.point/2' @ 0 @ 1 ) ) ),
    answer_to(p3_1_question,[])).

thf(p4_0_answer,answer,(
    ^ [V_PQmin_dot_0: 'R'] : ( V_PQmin_dot_0 = 16 ) ),
    answer_to(p4_0_question,[])).

thf(p4_1_answer,answer,(
    ^ [V_PQmin_dot_0: 'R'] : ( V_PQmin_dot_0 = 16 ) ),
    answer_to(p4_1_question,[])).

thf(p4_answer,answer,(
    ^ [V_tmin_dot_0: 'R'] : ( V_tmin_dot_0 = 2 ) ),
    answer_to(p4_question,[])).
