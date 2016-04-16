%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P228
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   3 equality;  24 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   53 (   0   ~;   0   |;   3   &;  49   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   5   !;   0   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ! [V_S: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( ( '3d.sphere-type/1' @ V_S )
          & ( 1.0
            = ( '3d.radius-of/1' @ V_S ) )
          & ( '3d.is-regular-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
          & ( 'all/2' @ '3d.Shape'
            @ ^ [V_side: '3d.Shape'] :
                ( '3d.tangent/2' @ V_side @ V_S )
            @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_A @ V_B ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_A @ V_C ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_A @ V_D ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_B @ V_C ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_B @ V_D ) @ ( 'cons/2' @ '3d.Shape' @ ( '3d.line/2' @ V_C @ V_D ) @ ( 'nil/0' @ '3d.Shape' ) ) ) ) ) ) ) ) )
       => ( V_l
          = ( '3d.distance/2' @ V_A @ V_B ) ) ) )).

thf(p_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p_question,[])).

