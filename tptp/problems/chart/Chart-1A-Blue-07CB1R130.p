%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R130
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  133 (  12 equality;  34 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :  109 (   0   ~;   0   |;  14   &;  95   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ratios: ( 'ListOf' @ $real )] :
      ? [V_Cyl: '3d.Shape',V_S: '3d.Shape',V_Cone: '3d.Shape'] :
        ( ( '3d.cylinder-type/1' @ V_Cyl )
        & ( ( $product @ 2.0 @ ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) ) )
          = ( '3d.height-of/1' @ V_Cyl ) )
        & ( '3d.sphere-type/1' @ V_S )
        & ( ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) )
          = ( '3d.radius-of/1' @ V_S ) )
        & ( '3d.right-cone-type/1' @ V_Cone )
        & ( ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) )
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
        & ( ( '3d.height-of/1' @ V_Cyl )
          = ( '3d.height-of/1' @ V_Cone ) )
        & ( V_ratios
          = ( 'cons/2' @ $real @ ( $quotient @ ( '3d.volume-of/1' @ V_Cyl ) @ ( '3d.volume-of/1' @ V_S ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( '3d.volume-of/1' @ V_S ) @ ( '3d.volume-of/1' @ V_Cone ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ratios: ( 'ListOf' @ $real )] :
      ? [V_Cyl: '3d.Shape',V_S: '3d.Shape',V_Cone: '3d.Shape'] :
        ( ( '3d.cylinder-type/1' @ V_Cyl )
        & ( ( $product @ 2.0 @ ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) ) )
          = ( '3d.height-of/1' @ V_Cyl ) )
        & ( '3d.sphere-type/1' @ V_S )
        & ( ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) )
          = ( '3d.radius-of/1' @ V_S ) )
        & ( '3d.right-cone-type/1' @ V_Cone )
        & ( ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) )
          = ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cone ) ) )
        & ( ( '3d.height-of/1' @ V_Cyl )
          = ( '3d.height-of/1' @ V_Cone ) )
        & ( V_ratios
          = ( 'cons/2' @ $real @ ( $quotient @ ( '3d.area-of/1' @ ( '3d.side-of/1' @ V_Cyl ) ) @ ( '3d.area-of/1' @ V_S ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( '3d.area-of/1' @ V_S ) @ ( '3d.area-of/1' @ ( '3d.side-of/1' @ V_Cone ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ratios_dot_0: ( 'ListOf' @ $real )] :
      ( V_ratios_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 2.0 ) @ ( 'cons/2' @ $real @ 2.0 @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ratios_dot_0: ( 'ListOf' @ $real )] :
      ( V_ratios_dot_0
      = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ 4.0 @ ( 'sqrt/1' @ 5.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p2_question,[])).

