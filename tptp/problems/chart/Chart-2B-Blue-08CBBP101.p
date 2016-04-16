%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP101
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    9 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  227 (  25 equality;  50 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :  170 (   0   ~;   2   |;  17   &; 150   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :;   0   =)
%            Number of variables   :   25 (   0 sgn;   5   !;  12   ?;   8   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ! [V_x: $real,V_y: $real,V_z: $real,V_A: '3d.Point',V_B: '3d.Point'] :
        ( ( ( V_A
            = ( '3d.point/3' @ -1.0 @ 1.0 @ 1.0 ) )
          & ( V_B
            = ( '3d.point/3' @ 1.0 @ -1.0 @ 1.0 ) )
          & ( ( '3d.vec3d/3' @ V_x @ V_y @ V_z )
            = ( '3d.vec/2' @ V_A @ V_B ) ) )
       => ( V_answer
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'cons/2' @ $real @ ( '3d.radius/1' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_e: '3d.Point'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_A
          = ( '3d.point/3' @ -1.0 @ 1.0 @ 1.0 ) )
        & ( V_B
          = ( '3d.point/3' @ 1.0 @ -1.0 @ 1.0 ) )
        & ( V_C
          = ( '3d.point/3' @ 1.0 @ 1.0 @ -1.0 ) )
        & ( '3d.is-point/1' @ V_e )
        & ( 0.0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_e ) @ ( '3d.vec/2' @ V_A @ V_B ) ) )
        & ( 0.0
          = ( '3d.inner-prod/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_e ) @ ( '3d.vec/2' @ V_A @ V_C ) ) )
        & ( 1.0
          = ( '3d.radius^2/1' @ ( '3d.vec/2' @ '3d.origin/0' @ V_e ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_D: '3d.Point'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_A
          = ( '3d.point/3' @ -1.0 @ 1.0 @ 1.0 ) )
        & ( V_B
          = ( '3d.point/3' @ 1.0 @ -1.0 @ 1.0 ) )
        & ( V_C
          = ( '3d.point/3' @ 1.0 @ 1.0 @ -1.0 ) )
        & ( '3d.is-parallelogram/4' @ V_A @ V_B @ V_C @ V_D ) ) )).

thf(p4,conjecture,(
    ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
      ( ( V_A
        = ( '3d.point/3' @ -1.0 @ 1.0 @ 1.0 ) )
      & ( V_B
        = ( '3d.point/3' @ 1.0 @ -1.0 @ 1.0 ) )
      & ( V_C
        = ( '3d.point/3' @ 1.0 @ 1.0 @ -1.0 ) )
      & ( '3d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C ) ) )).

thf(p5_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_E: '3d.Point'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point'] :
        ( ( V_A
          = ( '3d.point/3' @ -1.0 @ 1.0 @ 1.0 ) )
        & ( V_B
          = ( '3d.point/3' @ 1.0 @ -1.0 @ 1.0 ) )
        & ( V_C
          = ( '3d.point/3' @ 1.0 @ 1.0 @ -1.0 ) )
        & ( '3d.is-regular-tetrahedron/4' @ V_A @ V_B @ V_C @ V_E ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ -2.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_e_dot_0: '3d.Point'] :
      ( ( V_e_dot_0
        = ( '3d.vec->point/1' @ ( '3d.sv*/2' @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( '3d.vec3d/3' @ 1.0 @ 1.0 @ 1.0 ) ) ) )
      | ( V_e_dot_0
        = ( '3d.vec->point/1' @ ( '3d.sv*/2' @ ( $quotient @ -1.0 @ ( 'sqrt/1' @ 3.0 ) ) @ ( '3d.vec3d/3' @ 1.0 @ 1.0 @ 1.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_D_dot_0: '3d.Point'] :
      ( V_D_dot_0
      = ( '3d.point/3' @ -1.0 @ 3.0 @ -1.0 ) ) ),
    answer_to(p3_question,[])).

thf(p5_answer,answer,(
    ^ [V_E_dot_0: '3d.Point'] :
      ( ( V_E_dot_0
        = ( '3d.point/3' @ -1.0 @ -1.0 @ -1.0 ) )
      | ( V_E_dot_0
        = ( '3d.point/3' @ ( $quotient @ 5.0 @ 3.0 ) @ ( $quotient @ 5.0 @ 3.0 ) @ ( $quotient @ 5.0 @ 3.0 ) ) ) ) ),
    answer_to(p5_question,[])).

