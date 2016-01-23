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

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  463 (  26 equality; 160 variable)
%            Maximal formula depth :   37 (  17 average)
%            Number of connectives :  401 (   0   ~;   0   |;  54   &; 340   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   57 (   0 sgn;   7   !;  25   ?;  19   ^)
%                                         (  51   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1P_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_AP: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_A
          = ( '2d.point/2' @ 0 @ ( '+/2' @ V_a @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_a ) ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_P ) )
        & ( V_AP
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) )
        & ! [V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q @ V_C )
              & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q ) ) )
           => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) ) ) )).

thf(p1AP_qustion,question,
    ( 'Find/1'
    @ ^ [V_AP: 'R'] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_A
          = ( '2d.point/2' @ 0 @ ( '+/2' @ V_a @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_a ) ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_P ) )
        & ( V_AP
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) )
        & ! [V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q @ V_C )
              & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q ) ) )
           => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_A
          = ( '2d.point/2' @ 0 @ ( '+/2' @ V_a @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_a ) ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_P ) )
        & ! [V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q @ V_C )
              & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q ) ) )
           => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.y-axis/0' @ ( 'cons/2' @ ( '2d.seg/2' @ V_A @ V_P ) @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p3_a_qustion,question,
    ( 'Find/1'
    @ ^ [V_mina: 'R'] :
      ? [V_minA: '2d.Point',V_minC: '2d.Shape',V_minP: '2d.Point',V_minS: 'R'] :
        ( ( '</2' @ 0 @ V_mina )
        & ( V_minA
          = ( '2d.point/2' @ 0 @ ( '+/2' @ V_mina @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_mina ) ) ) ) )
        & ( V_minC
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '*/2' @ V_mina @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) )
        & ( '2d.on/2' @ V_minP @ V_minC )
        & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_minP ) )
        & ( V_minS
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_minC @ ( 'cons/2' @ '2d.y-axis/0' @ ( 'cons/2' @ ( '2d.seg/2' @ V_minA @ V_minP ) @ 'nil/0' ) ) ) ) ) )
        & ! [V_Q_dot_0: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q_dot_0 @ V_minC )
              & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q_dot_0 ) ) )
           => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_minP ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_Q_dot_0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_a: 'R',V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
                ( ( '</2' @ 0 @ V_a )
                & ( V_A
                  = ( '2d.point/2' @ 0 @ ( '+/2' @ V_a @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_a ) ) ) ) )
                & ( V_C
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
                & ( '2d.on/2' @ V_P @ V_C )
                & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_P ) )
                & ! [V_Q: '2d.Point'] :
                    ( ( ( '2d.on/2' @ V_Q @ V_C )
                      & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q ) ) )
                   => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.y-axis/0' @ ( 'cons/2' @ ( '2d.seg/2' @ V_A @ V_P ) @ 'nil/0' ) ) ) ) ) ) ) )
          @ V_minS ) ) )).

thf(p3_S_qustion,question,
    ( 'Find/1'
    @ ^ [V_minS: 'R'] :
      ? [V_minA: '2d.Point',V_minC: '2d.Shape',V_minP: '2d.Point',V_mina: 'R'] :
        ( ( '</2' @ 0 @ V_mina )
        & ( V_minA
          = ( '2d.point/2' @ 0 @ ( '+/2' @ V_mina @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_mina ) ) ) ) )
        & ( V_minC
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '*/2' @ V_mina @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) )
        & ( '2d.on/2' @ V_minP @ V_minC )
        & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_minP ) )
        & ( V_minS
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_minC @ ( 'cons/2' @ '2d.y-axis/0' @ ( 'cons/2' @ ( '2d.seg/2' @ V_minA @ V_minP ) @ 'nil/0' ) ) ) ) ) )
        & ! [V_Q_dot_0: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_Q_dot_0 @ V_minC )
              & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q_dot_0 ) ) )
           => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_minP ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_minA @ V_Q_dot_0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_a: 'R',V_A: '2d.Point',V_C: '2d.Shape',V_P: '2d.Point'] :
                ( ( '</2' @ 0 @ V_a )
                & ( V_A
                  = ( '2d.point/2' @ 0 @ ( '+/2' @ V_a @ ( '//2' @ 1 @ ( '*/2' @ 2 @ V_a ) ) ) ) )
                & ( V_C
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
                & ( '2d.on/2' @ V_P @ V_C )
                & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_P ) )
                & ! [V_Q: '2d.Point'] :
                    ( ( ( '2d.on/2' @ V_Q @ V_C )
                      & ( '<=/2' @ 0 @ ( '2d.x-coord/1' @ V_Q ) ) )
                   => ( '<=/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_Q ) ) ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.y-axis/0' @ ( 'cons/2' @ ( '2d.seg/2' @ V_A @ V_P ) @ 'nil/0' ) ) ) ) ) ) ) )
          @ V_minS ) ) )).

thf(p1P_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_P_dot_0
        = ( '2d.point/2' @ 1 @ V_a ) ) ) ),
    answer_to(p1P_question,[])).

thf(p1AP_answer,answer,(
    ^ [V_AP_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_AP_dot_0
        = ( '//2' @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ ( '^/2' @ V_a @ 2 ) ) ) ) @ ( '*/2' @ 2 @ V_a ) ) ) ) ),
    answer_to(p1AP_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_S_dot_0
        = ( '+/2' @ ( '//2' @ ( '*/2' @ 2 @ V_a ) @ 3 ) @ ( '//2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_a_answer,answer,(
    ^ [V_mina_dot_0: 'R'] :
      ( V_mina_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) ) ),
    answer_to(p3_a_question,[])).

thf(p3_S_answer,answer,(
    ^ [V_minS_dot_0: 'R'] :
      ( V_minS_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 3 ) ) ),
    answer_to(p3_S_question,[])).
