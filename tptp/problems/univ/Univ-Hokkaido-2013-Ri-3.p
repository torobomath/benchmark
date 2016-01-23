%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2013, Science Course, Problem 3
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-09-26
%%
%% <PROBLEM-TEXT>
%% For the real numbers $x$, $y$, $s$, and $t$, define $z = x + y i$ and
%% $w = s + t i$, and assume that $z =\frac{w-1}{w+1}$, where $i$ is the
%% imaginary unit.
%%
%% (1) Represent $w$ using $z$, and $s$ and $t$ using $x$ and $y$.
%%
%% (2) Draw the range $D$ of $(x, y)$ such that $0\le s\le 1$ and
%% $0\le t\le 1$ on the coordinate plane.
%%
%% (3) When the point $P(x, y)$ moves in $D$, find the minimum value of
%% $- 5 x + y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  250 (  21 equality;  72 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  209 (   7   ~;   1   |;  23   &; 178   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :)
%            Number of variables   :   29 (   3 sgn;   0   !;  12   ?;  11   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_w: 'complex.Complex'] :
        ( ( V_w
         != ( 'complex.real->complex/1' @ -1 ) )
        & ( V_z
          = ( 'complex.//2' @ ( 'complex.-/2' @ V_w @ ( 'complex.real->complex/1' @ 1 ) ) @ ( 'complex.+/2' @ V_w @ ( 'complex.real->complex/1' @ 1 ) ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_z: 'complex.Complex',V_w: 'complex.Complex',V_s: 'R',V_t: 'R'] :
        ( ( V_w
         != ( 'complex.real->complex/1' @ -1 ) )
        & ( V_z
          = ( 'complex.complex/2' @ V_x @ V_y ) )
        & ( V_w
          = ( 'complex.complex/2' @ V_s @ V_t ) )
        & ( V_z
          = ( 'complex.//2' @ ( 'complex.-/2' @ V_w @ ( 'complex.real->complex/1' @ 1 ) ) @ ( 'complex.+/2' @ V_w @ ( 'complex.real->complex/1' @ 1 ) ) ) )
        & ( V_ans
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_x: 'R',V_y: 'R',V_s: 'R',V_t: 'R'] :
        ( ( ( 'complex.complex/2' @ V_s @ V_t )
         != ( 'complex.real->complex/1' @ -1 ) )
        & ( ( 'complex.complex/2' @ V_x @ V_y )
          = ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1 ) ) @ ( 'complex.+/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1 ) ) ) )
        & ( '<=/2' @ 0 @ V_s )
        & ( '<=/2' @ V_s @ 1 )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( V_p
                = ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_v: 'R'] :
            ? [V_x: 'R',V_y: 'R'] :
              ( ( V_v
                = ( '+/2' @ ( '-/1' @ ( '*/2' @ 5 @ V_x ) ) @ V_y ) )
              & ? [V_s: 'R',V_t: 'R'] :
                  ( ( ( 'complex.complex/2' @ V_s @ V_t )
                   != ( 'complex.real->complex/1' @ -1 ) )
                  & ( ( 'complex.complex/2' @ V_x @ V_y )
                    = ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1 ) ) @ ( 'complex.+/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1 ) ) ) )
                  & ( '<=/2' @ 0 @ V_s )
                  & ( '<=/2' @ V_s @ 1 )
                  & ( '<=/2' @ 0 @ V_t )
                  & ( '<=/2' @ V_t @ 1 ) ) ) )
        @ V_m ) )).

thf(p1_1_answer,answer,(
    ^ [V_w_dot_0: 'complex.Complex'] :
      ( V_w_dot_0
      = ( 'complex.//2' @ ( 'complex.+/2' @ ( 'complex.-/1' @ V_z ) @ ( 'complex.-/1' @ 1 ) ) @ ( 'complex.-/2' @ V_z @ 1 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( ~ ( ( V_x = 1 )
          & ( V_y = 0 ) )
      & ( V_ans_dot_0
        = ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '-/1' @ ( '-/2' @ ( '^/2' @ V_x @ 2 ) @ 1 ) ) @ ( '-/1' @ ( '^/2' @ V_y @ 2 ) ) ) @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 2 @ V_y ) @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ 1 )
        & ( '<=/2' @ ( '//2' @ 1 @ 4 ) @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ ( '//2' @ 1 @ 2 ) ) @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) )
        & ( '<=/2' @ 0 @ V_y_dot_0 )
        & ( '<=/2' @ 1 @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 1 ) @ 2 ) ) )
        & ( ( V_x_dot_0 != 1 )
          | ( V_y_dot_0 != 0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( V_m_dot_0
      = ( '-/1' @ ( '//2' @ 3 @ 5 ) ) ) ),
    answer_to(p3_question,[])).
