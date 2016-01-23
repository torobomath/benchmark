%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Humanities Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $D$ be the region on the coordinate plane defined by the
%% inequality $2 y > x + 1 + 3 |x - 1|$. For the real number $a$, define
%% the parabola $C$ as $y = x^2 - 2 a x + a^2 + a + 2$. Find the range
%% of $a$ such that all the points on $C$ are contained in $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   4 equality;  28 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   86 (   0   ~;   0   |;   4   &;  80   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   13 (   0 sgn;   3   !;   2   ?;   8   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ! [V_x: 'R',V_y: 'R'] :
        ( ( V_y
          = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '*/2' @ V_a @ V_x ) ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ V_a @ 2 ) ) ) ) )
       => ( '>/2' @ ( '*/2' @ 2 @ V_y ) @ ( '+/2' @ V_x @ ( '+/2' @ 1 @ ( '*/2' @ 3 @ ( 'abs/1' @ ( '-/2' @ V_x @ 1 ) ) ) ) ) ) ) )).

thf(p_another_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_C: '2d.Shape',V_D: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 2 ) @ ( '*/2' @ V_a @ V_x_dot_0 ) ) @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ V_a @ 2 ) ) ) ) ) ) )
        & ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( '>/2' @ ( '*/2' @ 2 @ V_y ) @ ( '+/2' @ V_x @ ( '+/2' @ 1 @ ( '*/2' @ 3 @ ( 'abs/1' @ ( '-/2' @ V_x @ 1 ) ) ) ) ) ) ) )
        & ! [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ V_C )
           => ( '2d.on/2' @ V_P @ V_D ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ 1 @ 8 ) @ V_a_dot_0 )
      & ( '</2' @ V_a_dot_0 @ 2 ) ) ),
    answer_to(p_question,[])).

thf(p_another_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ 1 @ 8 ) @ V_a_dot_0 )
      & ( '</2' @ V_a_dot_0 @ 2 ) ) ),
    answer_to(p_another_question,[])).
