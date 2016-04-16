%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE146
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    9 (   0 unit;   6 type;   0 defn)
%            Number of atoms       :  160 (  11 equality;  51 variable)
%            Maximal formula depth :   24 (   7 average)
%            Number of connectives :  137 (   0   ~;   0   |;  11   &; 125   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   6   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   4   !;   7   ?;   2   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    3 func;    1 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf('Cx/0_type',type,(
    'Cx/0': $real )).

thf('Cy/0_type',type,(
    'Cy/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_Rate: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_ABI: $real,V_BCI: $real,V_CAI: $real] :
        ( ( V_A
          = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
        & ( V_B
          = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
        & ( V_C
          = ( '2d.point/2' @ 'Cx/0' @ 'Cy/0' ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_ABI
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_I ) ) )
        & ( V_BCI
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_I ) ) )
        & ( V_CAI
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_C @ V_A @ V_I ) ) )
        & ( V_Rate
          = ( 'cons/2' @ $real @ ( $quotient @ V_ABI @ V_BCI ) @ ( 'cons/2' @ $real @ ( $quotient @ V_BCI @ V_CAI ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_P ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_P ) ) )
        & ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_P ) )
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_C @ V_A @ V_P ) ) ) )
     => ( V_P
        = ( '2d.centroid-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_Rate_dot_0: ( 'ListOf' @ $real )] :
      ( V_Rate_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ ( $difference @ 'Ax/0' @ 'Bx/0' ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'Ay/0' @ 'By/0' ) @ 2.0 ) ) ) @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ ( $difference @ 'Bx/0' @ 'Cx/0' ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'By/0' @ 'Cy/0' ) @ 2.0 ) ) ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ ( $difference @ 'Bx/0' @ 'Cx/0' ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'By/0' @ 'Cy/0' ) @ 2.0 ) ) ) @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ ( $difference @ 'Cx/0' @ 'Ax/0' ) @ 2.0 ) @ ( '^/2' @ ( $difference @ 'Cy/0' @ 'Ay/0' ) @ 2.0 ) ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

