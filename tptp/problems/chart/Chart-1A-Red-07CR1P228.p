%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P228
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   3 equality;  24 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   3   &;  40   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    8 (   0 sgn;   5   !;   0   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ! [V_S: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( ( '3d.sphere-type/1' @ V_S )
          & ( 1
            = ( '3d.radius-of/1' @ V_S ) )
          & ( '3d.is-regular-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
          & ( 'all/2'
            @ ^ [V_side: '3d.Shape'] :
                ( '3d.tangent/2' @ V_side @ V_S )
            @ ( 'cons/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( 'cons/2' @ ( '3d.line/2' @ V_A @ V_C ) @ ( 'cons/2' @ ( '3d.line/2' @ V_A @ V_D ) @ ( 'cons/2' @ ( '3d.line/2' @ V_B @ V_C ) @ ( 'cons/2' @ ( '3d.line/2' @ V_B @ V_D ) @ ( 'cons/2' @ ( '3d.line/2' @ V_C @ V_D ) @ 'nil/0' ) ) ) ) ) ) ) )
       => ( V_l
          = ( '3d.distance/2' @ V_A @ V_B ) ) ) )).

thf(p_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p_question,[])).
