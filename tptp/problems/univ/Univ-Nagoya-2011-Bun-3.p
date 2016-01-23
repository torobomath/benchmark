%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2011, Humanities Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-15
%%
%% <PROBLEM-TEXT>
%% Consider the three points $O(0, 0)$, $A(1, 0)$, and $B(0, 1)$ on the
%% $x y$ plane.
%%
%% (1) Assume that $a > 0$. Find the locus of the point $P$ that
%% satisfies $OP : AP = 1 : a$.
%%
%% (2) Assume that $a > 1 > b > 0$. Find the condition that $a$ and $b$
%% must satisfy in order that there exists the point $P$ that satisfies
%% $OP : AP : BP = 1 : a : b$, and draw it on the $a b$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  15 equality;  55 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :  157 (   1   ~;   1   |;  22   &; 133   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;   6   ?;  13   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
        ( ( '>/2' @ V_a @ 0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.distance/2' @ ( '2d.point/2' @ 1 @ 0 ) @ V_P )
                = ( '*/2' @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_a ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_P: '2d.Point',V_a: 'R',V_b: 'R'] :
        ( ( '>/2' @ V_a @ 1 )
        & ( '>/2' @ 1 @ V_b )
        & ( '>/2' @ V_b @ 0 )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( ( '2d.distance/2' @ ( '2d.point/2' @ 1 @ 0 ) @ V_P )
          = ( '*/2' @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_a ) )
        & ( ( '2d.distance/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_P )
          = ( '*/2' @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_b ) ) ) )).

thf(p3_qustion,question,
    ( 'Draw/1'
    @ ^ [V_S: '2d.Shape'] :
        ( V_S
        = ( '2d.set-of-cfun/1'
          @ ^ [V_a: 'R',V_b: 'R'] :
            ? [V_P: '2d.Point'] :
              ( ( ( '2d.distance/2' @ ( '2d.point/2' @ 1 @ 0 ) @ V_P )
                = ( '*/2' @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_a ) )
              & ( ( '2d.distance/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_P )
                = ( '*/2' @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_b ) )
              & ( '>/2' @ V_a @ 1 )
              & ( '>/2' @ 1 @ V_b )
              & ( '>/2' @ V_b @ 0 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( ( ( V_a = 1 )
        & ( V_C_dot_0
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.x-coord/1' @ V_p )
                = ( '//2' @ 1 @ 2 ) ) ) ) )
      | ( ( '</2' @ 0 @ V_a )
        & ( V_a != 1 )
        & ( V_C_dot_0
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '+/2' @ ( '^/2' @ ( '+/2' @ V_x @ ( '//2' @ 1 @ ( '-/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) ) ) @ 2 ) @ ( '^/2' @ V_y @ 2 ) )
                = ( '//2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ ( '-/2' @ ( '^/2' @ V_a @ 2 ) @ 1 ) @ 2 ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( '</2' @ 0 @ V_b_dot_0 )
      & ( '</2' @ V_b_dot_0 @ 1 )
      & ( '</2' @ 1 @ V_a_dot_0 )
      & ( '<=/2' @ ( 'sqrt/1' @ 2 ) @ ( '+/2' @ V_a_dot_0 @ V_b_dot_0 ) )
      & ( '<=/2' @ ( '-/2' @ V_a_dot_0 @ V_b_dot_0 ) @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
        ( ( '</2' @ 0 @ V_b_dot_0 )
        & ( '</2' @ V_b_dot_0 @ 1 )
        & ( '</2' @ 1 @ V_a_dot_0 )
        & ( '<=/2' @ ( 'sqrt/1' @ 2 ) @ ( '+/2' @ V_a_dot_0 @ V_b_dot_0 ) )
        & ( '<=/2' @ ( '-/2' @ V_a_dot_0 @ V_b_dot_0 ) @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p3_question,[])).
