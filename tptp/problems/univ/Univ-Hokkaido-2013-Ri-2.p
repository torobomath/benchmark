%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2013, Science Course, Problem 2
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-09-26
%%
%% <PROBLEM-TEXT>
%% On the coordinate plane, let $f$ be the reflection with respect to
%% the straight line $y = x$, and let $g$ be the reflection with respect
%% to the straight line $y = c x$, where $c$ is a real number.
%% Meanwhile, let $h$ be the rotation of $120^{\circ}$ around the
%% origin.
%%
%% (1) Find the matrices that represent $f$ and $h$.
%%
%% (2) Find the matrix that represents $g$.
%%
%% (3) Find the value of $c$ such that the synthetic transformation
%% $f\circ g$ is $h$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  188 (   9 equality;  58 variable)
%            Maximal formula depth :   19 (  13 average)
%            Number of connectives :  162 (   0   ~;   0   |;   4   &; 157   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   36 (   1 sgn;  12   !;  12   ?;  10   ^)
%                                         (  34   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_A: '2d.Matrix'] :
      ? [V_s: 'R',V_t: 'R',V_u: 'R',V_v: 'R'] :
        ( ( V_A
          = ( '2d.matrix/4' @ V_s @ V_t @ V_u @ V_v ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec2d/2' @ V_x @ V_y ) ) ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Matrix'] :
      ? [V_s: 'R',V_t: 'R',V_u: 'R',V_v: 'R'] :
        ( ( V_C
          = ( '2d.matrix/4' @ V_s @ V_t @ V_u @ V_v ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_C @ ( '2d.vec2d/2' @ V_x @ V_y ) ) )
            = ( 'LamApp/2'
              @ ^ [V_P: '2d.Point'] :
                  ( '2d.point-rotate-around-origin/2' @ V_P @ ( '//2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ 3 ) )
              @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_B: '2d.Matrix'] :
      ? [V_s: 'R',V_t: 'R',V_u: 'R',V_v: 'R'] :
        ( ( V_B
          = ( '2d.matrix/4' @ V_s @ V_t @ V_u @ V_v ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_B @ ( '2d.vec2d/2' @ V_x @ V_y ) ) ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ V_c ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_c: 'R'] :
      ! [V_x: 'R',V_y: 'R',V_p: 'R',V_q: 'R',V_r: 'R',V_s: 'R'] :
        ( ( ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ V_c ) ) )
          & ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.point/2' @ V_r @ V_s ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ 1 ) ) ) )
       => ( ( '2d.point/2' @ V_r @ V_s )
          = ( 'LamApp/2'
            @ ^ [V_P: '2d.Point'] :
                ( '2d.point-rotate-around-origin/2' @ V_P @ ( '//2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ 3 ) )
            @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_A_dot_0: '2d.Matrix'] :
      ( V_A_dot_0
      = ( '2d.matrix/4' @ 0 @ 1 @ 1 @ 0 ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_C_dot_0: '2d.Matrix'] :
      ( V_C_dot_0
      = ( '2d.matrix/4' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_B_dot_0: '2d.Matrix'] :
      ( V_B_dot_0
      = ( '2d.matrix/4' @ ( '//2' @ ( '-/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) @ ( '+/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) ) @ ( '//2' @ ( '*/2' @ 2 @ V_c ) @ ( '+/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) ) @ ( '//2' @ ( '*/2' @ 2 @ V_c ) @ ( '+/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) ) @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_c @ 2 ) @ 1 ) @ ( '+/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_c_dot_0: 'R'] :
      ( V_c_dot_0
      = ( '-/2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) ),
    answer_to(p3_question,[])).
