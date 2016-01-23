%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2011, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers. Define the vectors
%% $\vec{v_1} =(3, 0)$, $\vec{v_2} =(1, 2\sqrt{2})$, and
%% $\vec{v_3} = a\vec{v_1} + b\vec{v_2}$. Consider the condition (*)
%% $(\vec{v_1}\cdot\vec{p})\vec{v_1} +(\vec{v_2}\cdot\vec{p})\vec{v_2} +(\vec{v_3}\cdot\vec{p})\vec{v_3} = c\vec{p}$
%% for the vector $\vec{p}$ on the coordinate plane, where
%% $\vec{v_i}\cdot\vec{p}$ $(i = 1, 2, 3)$ represents the inner product
%% of the vector $\vec{v_i}$ and the vector $\vec{p}$. Answer the
%% following questions:
%%
%% (1) Prove that an arbitrary vector $\vec{v} =(x, y)$ on the
%% coordinate plane is represented as
%% $\vec{v} = s\vec{v_1} + t\vec{v_2}$ using real numbers $s$ and $t$ by
%% representing $s$ and $t$ respectively by a formula of $x$ and $y$.
%%
%% (2) Prove that if both $\vec{p} =\vec{v_1}$ and $\vec{p} =\vec{v_2}$
%% satisfy the condition (*), then $\vec{p} =\vec{v}$ satisfies the
%% condition (*) for all the vectors $\vec{v}$ on the coordinate plane.
%%
%% (3) Assuming that $\vec{p} =\vec{v}$ satisfies the condition (*) for
%% all the vectors $\vec{v}$ on the coordinate plane, find all the
%% possible pairs of real numbers $(a, b, c)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  226 (  18 equality;  79 variable)
%            Maximal formula depth :   22 (  16 average)
%            Number of connectives :  189 (   0   ~;   1   |;  11   &; 176   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   26 (   3 sgn;   6   !;  12   ?;   4   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_st: 'ListOf' @ 'R'] :
      ? [V_v1: '2d.Vector',V_v2: '2d.Vector',V_s: 'R',V_t: 'R'] :
        ( ( V_v1
          = ( '2d.vec2d/2' @ 3 @ 0 ) )
        & ( V_v2
          = ( '2d.vec2d/2' @ 1 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) )
        & ( ( '2d.vec2d/2' @ V_x @ V_y )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ V_v1 ) @ ( '2d.sv*/2' @ V_t @ V_v2 ) ) )
        & ( V_st
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) )).

thf(p2,conjecture,(
    ? [V_v1: '2d.Vector',V_v2: '2d.Vector'] :
      ( ( V_v1
        = ( '2d.vec2d/2' @ 3 @ 0 ) )
      & ( V_v2
        = ( '2d.vec2d/2' @ 1 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) )
      & ! [V_a: 'R',V_b: 'R',V_c: 'R',V_v3: '2d.Vector',V_v: '2d.Vector'] :
          ( ( ( V_v3
              = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_a @ V_v1 ) @ ( '2d.sv*/2' @ V_b @ V_v2 ) ) )
            & ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v1 ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v1 ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v1 ) @ V_v3 ) ) )
              = ( '2d.sv*/2' @ V_c @ V_v1 ) )
            & ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v2 ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v2 ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v2 ) @ V_v3 ) ) )
              = ( '2d.sv*/2' @ V_c @ V_v2 ) ) )
         => ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v ) @ V_v3 ) ) )
            = ( '2d.sv*/2' @ V_c @ V_v ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R',V_v1: '2d.Vector',V_v2: '2d.Vector',V_v3: '2d.Vector'] :
        ( ( V_abc
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ( V_v1
          = ( '2d.vec2d/2' @ 3 @ 0 ) )
        & ( V_v2
          = ( '2d.vec2d/2' @ 1 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) )
        & ( V_v3
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_a @ V_v1 ) @ ( '2d.sv*/2' @ V_b @ V_v2 ) ) )
        & ! [V_v: '2d.Vector'] :
            ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v ) @ V_v3 ) ) )
            = ( '2d.sv*/2' @ V_c @ V_v ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: 'ListOf' @ 'R'] :
      ( V_st_dot_0
      = ( 'cons/2' @ ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ V_x ) @ ( '-/1' @ ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 12 ) @ V_y ) ) ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 4 ) @ V_y ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p3_answer,answer,(
    ^ [V_abc_dot_0: 'ListOf' @ 'R'] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ ( 'cons/2' @ 12 @ 'nil/0' ) ) ) )
      | ( V_abc_dot_0
        = ( 'cons/2' @ ( '-/1' @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) @ ( 'cons/2' @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) @ ( 'cons/2' @ 12 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p3_question,[])).
