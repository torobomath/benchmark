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

% Syntax   : Number of formulae    :    9 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  190 (   9 equality;  49 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :  164 (   0   ~;   0   |;   4   &; 159   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :   34 (   0 sgn;  12   !;  12   ?;  10   ^)
%                                         (  34   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_1_qustion,question,
    ( 'find/1' @ '2d.Matrix'
    @ ^ [V_A: '2d.Matrix'] :
      ? [V_s: $real,V_t: $real,V_u: $real,V_v: $real] :
        ( ( V_A
          = ( '2d.matrix/4' @ V_s @ V_t @ V_u @ V_v ) )
        & ! [V_x: $real,V_y: $real] :
            ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_A @ ( '2d.vec2d/2' @ V_x @ V_y ) ) ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ '2d.Matrix'
    @ ^ [V_C: '2d.Matrix'] :
      ? [V_s: $real,V_t: $real,V_u: $real,V_v: $real] :
        ( ( V_C
          = ( '2d.matrix/4' @ V_s @ V_t @ V_u @ V_v ) )
        & ! [V_x: $real,V_y: $real] :
            ( ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_C @ ( '2d.vec2d/2' @ V_x @ V_y ) ) )
            = ( ^ [V_P: '2d.Point'] :
                  ( '2d.point-rotate-around-origin/2' @ V_P @ ( $quotient @ ( $product @ 2.0 @ 'Pi/0' ) @ 3.0 ) )
              @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Matrix'
    @ ^ [V_B: '2d.Matrix'] :
      ? [V_s: $real,V_t: $real,V_u: $real,V_v: $real] :
        ( ( V_B
          = ( '2d.matrix/4' @ V_s @ V_t @ V_u @ V_v ) )
        & ! [V_x: $real,V_y: $real] :
            ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.vec->point/1' @ ( '2d.mv*/2' @ V_B @ ( '2d.vec2d/2' @ V_x @ V_y ) ) ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 'c/0' ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_c: $real] :
      ! [V_x: $real,V_y: $real,V_p: $real,V_q: $real,V_r: $real,V_s: $real] :
        ( ( ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ V_c ) ) )
          & ( '2d.line-symmetry/3' @ ( '2d.point/2' @ V_p @ V_q ) @ ( '2d.point/2' @ V_r @ V_s ) @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) ) ) )
       => ( ( '2d.point/2' @ V_r @ V_s )
          = ( ^ [V_P: '2d.Point'] :
                ( '2d.point-rotate-around-origin/2' @ V_P @ ( $quotient @ ( $product @ 2.0 @ 'Pi/0' ) @ 3.0 ) )
            @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_A_dot_0: '2d.Matrix'] :
      ( V_A_dot_0
      = ( '2d.matrix/4' @ 0.0 @ 1.0 @ 1.0 @ 0.0 ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_C_dot_0: '2d.Matrix'] :
      ( V_C_dot_0
      = ( '2d.matrix/4' @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_B_dot_0: '2d.Matrix'] :
      ( V_B_dot_0
      = ( '2d.matrix/4' @ ( $quotient @ ( $difference @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) @ ( $sum @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) @ ( $quotient @ ( $product @ 2.0 @ 'c/0' ) @ ( $sum @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) @ ( $quotient @ ( $product @ 2.0 @ 'c/0' ) @ ( $sum @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) @ ( $quotient @ ( $difference @ ( '^/2' @ 'c/0' @ 2.0 ) @ 1.0 ) @ ( $sum @ 1.0 @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_c_dot_0: $real] :
      ( V_c_dot_0
      = ( $difference @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) ),
    answer_to(p3_question,[])).

