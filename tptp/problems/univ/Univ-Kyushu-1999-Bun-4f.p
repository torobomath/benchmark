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

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  574 ( 105 equality; 203 variable)
%            Maximal formula depth :   42 (  22 average)
%            Number of connectives :  358 (   0   ~;   0   |;  95   &; 263   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   65 (   3 sgn;   0   !;  49   ?;  10   ^)
%                                         (  59   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_xyz: 'ListOf' @ 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_x: 'R',V_y: 'R',V_z: 'R',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1
          = ( '3d.radius/1' @ V_a ) )
        & ( 1
          = ( '3d.radius/1' @ V_b ) )
        & ( 1
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1 )
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
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: '3d.Vector'] :
      ? [V_d: '3d.Vector',V_e: '3d.Vector',V_O: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1
          = ( '3d.radius/1' @ V_a ) )
        & ( 1
          = ( '3d.radius/1' @ V_b ) )
        & ( 1
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_D: '3d.Vector',V_E: '3d.Vector',V_F: '3d.Vector'] :
        ( ( 1
          = ( '3d.radius/1' @ V_a ) )
        & ( 1
          = ( '3d.radius/1' @ V_b ) )
        & ( 1
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1 )
        & ( V_D = V_d )
        & ( V_E = V_e )
        & ( V_F = V_f )
        & ( V_O = '3d.origin/0' )
        & ( V_ans
          = ( 'cons/2' @ ( '3d.radius/1' @ V_d ) @ ( 'cons/2' @ ( '3d.radius/1' @ V_f ) @ ( 'cons/2' @ ( '3d.radius/1' @ ( '3d.v-/2' @ V_d @ V_f ) ) @ 'nil/0' ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_areaODF: 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1
          = ( '3d.radius/1' @ V_a ) )
        & ( 1
          = ( '3d.radius/1' @ V_b ) )
        & ( 1
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' )
        & ( V_areaODF
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_O @ V_D @ V_F ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_volumeODEF: 'R'] :
      ? [V_a: '3d.Vector',V_b: '3d.Vector',V_c: '3d.Vector',V_d: '3d.Vector',V_e: '3d.Vector',V_f: '3d.Vector',V_O: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( 1
          = ( '3d.radius/1' @ V_a ) )
        & ( 1
          = ( '3d.radius/1' @ V_b ) )
        & ( 1
          = ( '3d.radius/1' @ V_c ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_b )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_b @ V_c )
          = ( '-/1' @ ( '//2' @ 1 @ 2 ) ) )
        & ( ( '3d.inner-prod/2' @ V_a @ V_c )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_d )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_d )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_e )
          = 1 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_e )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_a @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_b @ V_f )
          = 0 )
        & ( ( '3d.inner-prod/2' @ V_c @ V_f )
          = 1 )
        & ( V_D
          = ( '3d.vec->point/1' @ V_d ) )
        & ( V_E
          = ( '3d.vec->point/1' @ V_e ) )
        & ( V_F
          = ( '3d.vec->point/1' @ V_f ) )
        & ( V_O = '3d.origin/0' )
        & ( V_volumeODEF
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_D @ V_E @ V_F ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_xyz_dot_0: 'ListOf' @ 'R'] :
      ( V_xyz_dot_0
      = ( 'cons/2' @ ( '//2' @ 3 @ 2 ) @ ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_f_dot_0: '3d.Vector'] :
      ( V_f_dot_0
      = ( '3d.v+/2' @ ( '3d.sv*/2' @ ( '//2' @ 1 @ 2 ) @ V_a ) @ ( '3d.v+/2' @ V_b @ ( '3d.sv*/2' @ ( '//2' @ 3 @ 2 ) @ V_c ) ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( V_ans_dot_0
      = ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 2 ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 2 ) @ ( 'cons/2' @ ( 'sqrt/1' @ 2 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_areaODF_dot_0: 'R'] :
      ( V_areaODF_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_volumeODEF_dot_0: 'R'] :
      ( V_volumeODEF_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 2 ) @ 6 ) ) ),
    answer_to(p4_question,[])).
