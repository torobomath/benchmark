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

% Syntax   : Number of formulae    :    7 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  248 (  18 equality;  74 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :  211 (   0   ~;   1   |;  11   &; 198   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   2   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   6   !;  12   ?;   4   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_st: ( 'ListOf' @ $real )] :
      ? [V_v1: '2d.Vector',V_v2: '2d.Vector',V_s: $real,V_t: $real] :
        ( ( V_v1
          = ( '2d.vec2d/2' @ 3.0 @ 0.0 ) )
        & ( V_v2
          = ( '2d.vec2d/2' @ 1.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) )
        & ( ( '2d.vec2d/2' @ 'x/0' @ 'y/0' )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ V_v1 ) @ ( '2d.sv*/2' @ V_t @ V_v2 ) ) )
        & ( V_st
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2,conjecture,(
    ? [V_v1: '2d.Vector',V_v2: '2d.Vector'] :
      ( ( V_v1
        = ( '2d.vec2d/2' @ 3.0 @ 0.0 ) )
      & ( V_v2
        = ( '2d.vec2d/2' @ 1.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) )
      & ! [V_a: $real,V_b: $real,V_c: $real,V_v3: '2d.Vector',V_v: '2d.Vector'] :
          ( ( ( V_v3
              = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_a @ V_v1 ) @ ( '2d.sv*/2' @ V_b @ V_v2 ) ) )
            & ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v1 ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v1 ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v1 ) @ V_v3 ) ) )
              = ( '2d.sv*/2' @ V_c @ V_v1 ) )
            & ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v2 ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v2 ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v2 ) @ V_v3 ) ) )
              = ( '2d.sv*/2' @ V_c @ V_v2 ) ) )
         => ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v ) @ V_v3 ) ) )
            = ( '2d.sv*/2' @ V_c @ V_v ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abc: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_c: $real,V_v1: '2d.Vector',V_v2: '2d.Vector',V_v3: '2d.Vector'] :
        ( ( V_abc
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) )
        & ( V_v1
          = ( '2d.vec2d/2' @ 3.0 @ 0.0 ) )
        & ( V_v2
          = ( '2d.vec2d/2' @ 1.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) )
        & ( V_v3
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_a @ V_v1 ) @ ( '2d.sv*/2' @ V_b @ V_v2 ) ) )
        & ! [V_v: '2d.Vector'] :
            ( ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v1 @ V_v ) @ V_v1 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v2 @ V_v ) @ V_v2 ) @ ( '2d.sv*/2' @ ( '2d.inner-prod/2' @ V_v3 @ V_v ) @ V_v3 ) ) )
            = ( '2d.sv*/2' @ V_c @ V_v ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: ( 'ListOf' @ $real )] :
      ( V_st_dot_0
      = ( 'cons/2' @ $real @ ( $sum @ ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ 'x/0' ) @ ( $uminus @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 12.0 ) @ 'y/0' ) ) ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 4.0 ) @ 'y/0' ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p3_answer,answer,(
    ^ [V_abc_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ ( 'cons/2' @ $real @ 12.0 @ ( 'nil/0' @ $real ) ) ) ) )
      | ( V_abc_dot_0
        = ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'cons/2' @ $real @ 12.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p3_question,[])).

