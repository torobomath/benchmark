%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Humanities Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number. Answer the following questions:
%%
%% (1) Find the range of the value of $a$ such that the quadratic
%% equation $x^2 - 2(a + 1)x + 3 a = 0$ has two different real solutions
%% in the range of $- 1\le x\le 3$.
%%
%% (2) When $a$ moves in the range found in (1), find the range of the
%% values of the $y$ coordinate of the vertex of the parabola
%% $y = x^2 - 2(a + 1)x + 3 a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  148 (   6 equality;  32 variable)
%            Maximal formula depth :   25 (  15 average)
%            Number of connectives :  134 (   2   ~;   0   |;  15   &; 117   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_x1: 'R',V_x2: 'R'] :
        ( ( '<=/2' @ ( '-/1' @ 1 ) @ V_x1 )
        & ( '<=/2' @ V_x1 @ 3 )
        & ( '<=/2' @ ( '-/1' @ 1 ) @ V_x2 )
        & ( '<=/2' @ V_x2 @ 3 )
        & ( V_x1 != V_x2 )
        & ( 0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '*/2' @ 3 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '+/2' @ V_a @ 1 ) ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_x1 ) )
        & ( 0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '*/2' @ 3 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '+/2' @ V_a @ 1 ) ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_x2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_y: 'R'] :
      ? [V_a: 'R',V_x1: 'R',V_x2: 'R'] :
        ( ( '<=/2' @ ( '-/1' @ 1 ) @ V_x1 )
        & ( '<=/2' @ V_x1 @ 3 )
        & ( '<=/2' @ ( '-/1' @ 1 ) @ V_x2 )
        & ( '<=/2' @ V_x2 @ 3 )
        & ( V_x1 != V_x2 )
        & ( 0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '*/2' @ 3 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '+/2' @ V_a @ 1 ) ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_x1 ) )
        & ( 0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '*/2' @ 3 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '+/2' @ V_a @ 1 ) ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_x2 ) )
        & ? [V_x: 'R'] :
            ( 'func-extreme/3' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '*/2' @ 3 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '+/2' @ V_a @ 1 ) ) ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) @ V_x @ V_y ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ -3 @ 5 ) @ V_a_dot_0 )
      & ( '<=/2' @ V_a_dot_0 @ 1 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_y_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ -49 @ 25 ) @ V_y_dot_0 )
      & ( '<=/2' @ V_y_dot_0 @ ( '//2' @ -3 @ 4 ) ) ) ),
    answer_to(p2_question,[])).
