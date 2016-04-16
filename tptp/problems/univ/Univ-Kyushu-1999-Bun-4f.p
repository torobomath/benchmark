%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 1999, Humanities Course, Problem 4f
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-01-25
%%
%% <PROBLEM-TEXT>
%% Assume that the spatial vectors $\vec{a}$, $\vec{b}$, and $\vec{c}$
%% with a magnitude of 1 satisfy
%% $\vec{a}\cdot\vec{b} =\vec{b}\cdot\vec{c} = -\frac{1}{2}$ and
%% $\vec{a}\cdot\vec{c} = 0$. When the spatial vectors $\vec{d}$,
%% $\vec{e}$, and $\vec{f}$ satisfy $\vec{a}\cdot\vec{d} = 1$,
%% $\vec{b}\cdot\vec{d} = 0$, $\vec{c}\cdot\vec{d} = 0$,
%% $\vec{a}\cdot\vec{e} = 0$, $\vec{b}\cdot\vec{e} = 1$,
%% $\vec{c}\cdot\vec{e} = 0$, $\vec{a}\cdot\vec{f} = 0$,
%% $\vec{b}\cdot\vec{f} = 0$, and $\vec{c}\cdot\vec{f} = 1$, answer the
%% following questions about the points $D(\vec{d})$, $E(\vec{e})$,
%% $F(\vec{f})$, and the origin $O$.
%%
%% (1) Represent the real numbers $x$, $y$, and $z$ such that
%% $\vec{d} = x\vec{a} + y\vec{b} + z\vec{c}$. Also represent $\vec{f}$
%% using $\vec{a}$, $\vec{b}$, and $\vec{c}$.
%%
%% (2) Find the magnitudes of the vector $\vec{d}$, $\vec{f}$, and
%% $\vec{d} -\vec{f}$.
%%
%% (3) Find the area of the triangle $ODF$.
%%
%% (4) Find the volume of the tetrahedron $ODEF$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   13 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  597 ( 105 equality; 182 variable)
%            Maximal formula depth :   42 (  18 average)
%            Number of connectives :  381 (   0   ~;   0   |;  95   &; 286   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   3   :;   0   =)
%            Number of variables   :   59 (   0 sgn;   0   !;  49   ?;  10   ^)
%                                         (  59   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': '3d.Vector' )).

thf('b/0_type',type,(
    'b/0': '3d.Vector' )).

thf('c/0_type',type,(
    'c/0': '3d.Vector' )).

thf(a1_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_xyz: ( 'ListOf' @ $real )] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_x: $real,V_y: $real,V_z: $real,V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1.0
          = ( '3d.radius/1' @ V_a ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_b ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1.0 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' )
        & ( V_d
          = ( '3d.v+/2' @ ( '3d.sv*/2' @ V_x @ V_a ) @ ( '3d.v+/2' @ ( '3d.sv*/2' @ V_y @ V_b ) @ ( '3d.sv*/2' @ V_z @ V_c ) ) ) )
        & ( V_xyz
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ '3d.Vector'
    @ ^ [V_f: '3d.Vector'] :
      ? [V_d: '3d.Vector',V_e: '3d.Vector',V_O: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1.0
          = ( '3d.radius/1' @ 'a/0' ) )
        & ( 1.0
          = ( '3d.radius/1' @ 'b/0' ) )
        & ( 1.0
          = ( '3d.radius/1' @ 'c/0' ) )
        & ( ( '3d.inner-prod/2' @ 'a/0' @ 'b/0' )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ 'b/0' @ 'c/0' )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ 'a/0' @ 'c/0' )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'a/0' @ V_d )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ 'b/0' @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'c/0' @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'a/0' @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'b/0' @ V_e )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ 'c/0' @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'a/0' @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'b/0' @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ 'c/0' @ V_f )
          = 1.0 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' ) ) )).

thf(a2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_D: '3d.Vector',V_E: '3d.Vector',V_F: '3d.Vector'] :
        ( ( 1.0
          = ( '3d.radius/1' @ V_a ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_b ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1.0 )
        & ( V_D = V_d )
        & ( V_E = V_e )
        & ( V_F = V_f )
        & ( V_O = '3d.origin/0' )
        & ( V_ans
          = ( 'cons/2' @ $real @ ( '3d.radius/1' @ V_d ) @ ( 'cons/2' @ $real @ ( '3d.radius/1' @ V_f ) @ ( 'cons/2' @ $real @ ( '3d.radius/1' @ ( '3d.v-/2' @ V_d @ V_f ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(a3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_areaODF: $real] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1.0
          = ( '3d.radius/1' @ V_a ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_b ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1.0 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' )
        & ( V_areaODF
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_D @ V_F ) ) ) ) )).

thf(a4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_volumeODEF: $real] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1.0
          = ( '3d.radius/1' @ V_a ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_b ) )
        & ( 1.0
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0.0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1.0 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' )
        & ( V_volumeODEF
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_D @ V_E @ V_F ) ) ) ) )).

thf(a1_1_answer,answer,(
    ^ [V_xyz_dot_0: ( 'ListOf' @ $real )] :
      ( V_xyz_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(a1_1_question,[])).

thf(a1_2_answer,answer,(
    ^ [V_f_dot_0: '3d.Vector'] :
      ( V_f_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) @ ( '3d.v+/2' @ 'b/0' @ ( '3d.sv*/2' @ ( $quotient @ 3.0 @ 2.0 ) @ 'c/0' ) ) ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
      ( V_ans_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 2.0 ) @ ( 'cons/2' @ $real @ ( 'sqrt/1' @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(a2_question,[])).

thf(a3_answer,answer,(
    ^ [V_areaODF_dot_0: $real] :
      ( V_areaODF_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 2.0 ) ) ),
    answer_to(a3_question,[])).

thf(a4_answer,answer,(
    ^ [V_volumeODEF_dot_0: $real] :
      ( V_volumeODEF_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 6.0 ) ) ),
    answer_to(a4_question,[])).

