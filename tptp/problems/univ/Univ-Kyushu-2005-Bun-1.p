%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2005, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a positive real number, and consider the point
%% $A(0, a+\frac{1}{2 a})$ and the curve $C$: $y = a x^2$ ( $x\ge 0$).
%% Let $P$ the point on the curve $C$ that is the closest to the point
%% $A$. Answer the following questions:
%%
%% (1) Find the coordinates of the point $P$ and the length of the line
%% segment $AP$.
%%
%% (2) Find the area $S(a)$ of the region enclosed by the curve $C$, the
%% $y$ axis, and the line segment $AP$.
%%
%% (3) When $a > 0$, find the minimum value of the area $S(a)$ and the
%% value of $a$ that gives the minimum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   11 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  490 (  26 equality; 140 variable)
%            Maximal formula depth :   37 (  16 average)
%            Number of connectives :  428 (   0   ~;   0   |;  54   &; 367   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   1   :;   0   =)
%            Number of variables   :   51 (   0 sgn;   7   !;  25   ?;  19   ^)
%                                         (  51   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1P_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_AP: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( V_A
          = ( '2d.point/2' @ 0.0 @ ( $sum @ 'a/0' @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ 'a/0' ) ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_P ) )
        & ( V_AP
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) )
        & ! [V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q @ V_C )
              & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q ) ) )
           => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) ) ) )).

thf(p1AP_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_AP: $real] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( V_A
          = ( '2d.point/2' @ 0.0 @ ( $sum @ 'a/0' @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ 'a/0' ) ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_P ) )
        & ( V_AP
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) )
        & ! [V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q @ V_C )
              & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q ) ) )
           => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( V_A
          = ( '2d.point/2' @ 0.0 @ ( $sum @ 'a/0' @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ 'a/0' ) ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_P ) )
        & ! [V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q @ V_C )
              & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q ) ) )
           => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_P ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p3_a_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_mina: $real] :
      ? [V_minA: '2d.Point',V_minC: '2d.Shape',V_minP: '2d.Point',V_minS: $real] :
        ( ( $less @ 0.0 @ V_mina )
        & ( V_minA
          = ( '2d.point/2' @ 0.0 @ ( $sum @ V_mina @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ V_mina ) ) ) ) )
        & ( V_minC
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( $product @ V_mina @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ V_minP @ V_minC )
        & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_minP ) )
        & ( V_minS
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_minC @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_minA @ V_minP ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ! [V_Q_dot_0: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q_dot_0 @ V_minC )
              & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q_dot_0 ) ) )
           => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_minP ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_Q_dot_0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a: $real,V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
                ( ( $less @ 0.0 @ V_a )
                & ( V_A
                  = ( '2d.point/2' @ 0.0 @ ( $sum @ V_a @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ V_a ) ) ) ) )
                & ( V_C
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] :
                          ( $product @ V_a @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
                & ( '2d.on/2' @ V_P @ V_C )
                & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_P ) )
                & ! [V_Q: '2d.Point'] :
                    ( ( ( '2d.on/2' @ V_Q @ V_C )
                      & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q ) ) )
                   => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_P ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )
          @ V_minS ) ) )).

thf(p3_S_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minS: $real] :
      ? [V_minA: '2d.Point',V_minC: '2d.Shape',V_minP: '2d.Point',V_mina: $real] :
        ( ( $less @ 0.0 @ V_mina )
        & ( V_minA
          = ( '2d.point/2' @ 0.0 @ ( $sum @ V_mina @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ V_mina ) ) ) ) )
        & ( V_minC
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( $product @ V_mina @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) )
        & ( '2d.on/2' @ V_minP @ V_minC )
        & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_minP ) )
        & ( V_minS
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_minC @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_minA @ V_minP ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ! [V_Q_dot_0: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q_dot_0 @ V_minC )
              & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q_dot_0 ) ) )
           => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_minP ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_Q_dot_0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a: $real,V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
                ( ( $less @ 0.0 @ V_a )
                & ( V_A
                  = ( '2d.point/2' @ 0.0 @ ( $sum @ V_a @ ( $quotient @ 1.0 @ ( $product @ 2.0 @ V_a ) ) ) ) )
                & ( V_C
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] :
                          ( $product @ V_a @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )
                & ( '2d.on/2' @ V_P @ V_C )
                & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_P ) )
                & ! [V_Q: '2d.Point'] :
                    ( ( ( '2d.on/2' @ V_Q @ V_C )
                      & ( $lesseq @ 0.0 @ ( '2d.x-coord/1' @ V_Q ) ) )
                   => ( $lesseq @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.y-axis/0' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_P ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )
          @ V_minS ) ) )).

thf(p1P_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_P_dot_0
        = ( '2d.point/2' @ 1.0 @ 'a/0' ) ) ) ),
    answer_to(p1P_question,[])).

thf(p1AP_answer,answer,(
    ^ [V_AP_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_AP_dot_0
        = ( $quotient @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 4.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) @ ( $product @ 2.0 @ 'a/0' ) ) ) ) ),
    answer_to(p1AP_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_S_dot_0
        = ( $sum @ ( $quotient @ ( $product @ 2.0 @ 'a/0' ) @ 3.0 ) @ ( $quotient @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_a_answer,answer,(
    ^ [V_mina_dot_0: $real] :
      ( V_mina_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 4.0 ) ) ),
    answer_to(p3_a_question,[])).

thf(p3_S_answer,answer,(
    ^ [V_minS_dot_0: $real] :
      ( V_minS_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 3.0 ) ) ),
    answer_to(p3_S_question,[])).

