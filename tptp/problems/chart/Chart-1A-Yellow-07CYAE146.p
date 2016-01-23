%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE146
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  152 (  11 equality;  73 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :  129 (   0   ~;   0   |;  11   &; 117   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   25 (   6 sgn;   4   !;   7   ?;   2   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_Rate: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_ABI: 'R',V_BCI: 'R',V_CAI: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ V_Ax @ V_Ay ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( V_C
          = ( '2d.point/2' @ V_Cx @ V_Cy ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( V_ABI
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_I ) ) )
        & ( V_BCI
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_B @ V_C @ V_I ) ) )
        & ( V_CAI
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_C @ V_A @ V_I ) ) )
        & ( V_Rate
          = ( 'cons/2' @ ( '//2' @ V_ABI @ V_BCI ) @ ( 'cons/2' @ ( '//2' @ V_BCI @ V_CAI ) @ 'nil/0' ) ) ) ) )).

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
    ^ [V_Rate_dot_0: 'ListOf' @ 'R'] :
      ( V_Rate_dot_0
      = ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_Ax @ V_Bx ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_Ay @ V_By ) @ 2 ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_Bx @ V_Cx ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_By @ V_Cy ) @ 2 ) ) ) ) @ ( 'cons/2' @ ( '//2' @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_Bx @ V_Cx ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_By @ V_Cy ) @ 2 ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_Cx @ V_Ax ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_Cy @ V_Ay ) @ 2 ) ) ) ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).
