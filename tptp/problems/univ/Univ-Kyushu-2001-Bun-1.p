%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% Consider the function $f(x)=\frac{2}{3} a x^3 +(a + b)x^2 +(b + 1)x$.
%%
%% (1) Find the condition for $a$ and $b$ such that the function $f(x)$
%% always increases, and draw the region on the $a b$ plane.
%%
%% (2) Find the condition for $b$ such that the function $f(x)$ always
%% increases when $x > - 1$.
%%
%% (3) Find the condition for $a$ and $b$ such that the function $f(x)$
%% always increases when $x > - 1$, and draw the region on the $a b$
%% plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  262 (  14 equality;  84 variable)
%            Maximal formula depth :   21 (  15 average)
%            Number of connectives :  224 (   0   ~;   2   |;  23   &; 196   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   34 (   1 sgn;   6   !;  12   ?;  12   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_a_b_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_f: 'R2R'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ V_b @ 1 ) @ ( 'cons/2' @ ( '+/2' @ V_a @ V_b ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ V_a ) @ 'nil/0' ) ) ) ) ) )
        & ( 'monotonically-increasing/1' @ V_f ) ) )).

thf(p1_D_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_f: 'R2R',V_a: 'R',V_b: 'R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ V_b @ 1 ) @ ( 'cons/2' @ ( '+/2' @ V_a @ V_b ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ V_a ) @ 'nil/0' ) ) ) ) ) )
              & ( 'monotonically-increasing/1' @ V_f )
              & ( V_a
                = ( '2d.x-coord/1' @ V_p ) )
              & ( V_b
                = ( '2d.y-coord/1' @ V_p ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_f: 'R2R',V_a: 'R'] :
        ( ( V_a = 0 )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ V_b @ 1 ) @ ( 'cons/2' @ ( '+/2' @ V_a @ V_b ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ V_a ) @ 'nil/0' ) ) ) ) ) )
        & ! [V_x1: 'R',V_x2: 'R'] :
            ( ( ( '>/2' @ V_x1 @ -1 )
              & ( '>/2' @ V_x2 @ -1 )
              & ( '>/2' @ V_x1 @ V_x2 ) )
           => ( '>/2' @ ( 'funapp/2' @ V_f @ V_x1 ) @ ( 'funapp/2' @ V_f @ V_x2 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: 'R'] :
      ? [V_f: 'R2R'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ V_b @ 1 ) @ ( 'cons/2' @ ( '+/2' @ V_a @ V_b ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ V_a ) @ 'nil/0' ) ) ) ) ) )
        & ! [V_x1: 'R',V_x2: 'R'] :
            ( ( ( '>/2' @ V_x1 @ -1 )
              & ( '>/2' @ V_x2 @ -1 )
              & ( '>/2' @ V_x1 @ V_x2 ) )
           => ( '>/2' @ ( 'funapp/2' @ V_f @ V_x1 ) @ ( 'funapp/2' @ V_f @ V_x2 ) ) ) ) )).

thf(p3_D_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_f: 'R2R',V_a: 'R',V_b: 'R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '+/2' @ V_b @ 1 ) @ ( 'cons/2' @ ( '+/2' @ V_a @ V_b ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ V_a ) @ 'nil/0' ) ) ) ) ) )
              & ! [V_x1: 'R',V_x2: 'R'] :
                  ( ( ( '>/2' @ V_x1 @ -1 )
                    & ( '>/2' @ V_x2 @ -1 )
                    & ( '>/2' @ V_x1 @ V_x2 ) )
                 => ( '>/2' @ ( 'funapp/2' @ V_f @ V_x1 ) @ ( 'funapp/2' @ V_f @ V_x2 ) ) )
              & ( ( '2d.x-coord/1' @ V_p )
                = V_a )
              & ( ( '2d.y-coord/1' @ V_p )
                = V_b ) ) ) ) )).

thf(p1_a_b_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_a @ 1 ) @ 2 ) @ ( '^/2' @ V_b_dot_0 @ 2 ) ) @ 1 ) ),
    answer_to(p1_a_b_question,[])).

thf(p1_D_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_P: '2d.Point'] :
        ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_P ) @ 1 ) @ 2 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_P ) @ 2 ) ) @ 1 ) ),
    answer_to(p1_D_question,[])).

thf(p2_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_b_dot_0 )
      & ( '<=/2' @ V_b_dot_0 @ 1 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_b_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_a )
      & ( ( ( '<=/2' @ V_a @ V_b_dot_0 )
          & ( '<=/2' @ V_b_dot_0 @ 1 ) )
        | ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_a @ 1 ) @ 2 ) @ ( '^/2' @ V_b_dot_0 @ 2 ) ) @ 1 ) ) ) ),
    answer_to(p3_question,[])).

thf(p3_D_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
        ( ( '<=/2' @ 0 @ V_a_dot_0 )
        & ( V_a_dot_0
          = ( '2d.x-coord/1' @ V_P ) )
        & ( V_b_dot_0
          = ( '2d.y-coord/1' @ V_P ) )
        & ( ( ( '<=/2' @ V_a_dot_0 @ V_b_dot_0 )
            & ( '<=/2' @ V_b_dot_0 @ 1 ) )
          | ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_a_dot_0 @ 1 ) @ 2 ) @ ( '^/2' @ V_b_dot_0 @ 2 ) ) @ 1 ) ) ) ),
    answer_to(p3_D_question,[])).
