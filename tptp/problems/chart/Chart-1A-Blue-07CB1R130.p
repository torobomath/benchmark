%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R130
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  117 (  12 equality;  34 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :   93 (   0   ~;   0   |;  14   &;  79   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ratios: 'ListOf' @ 'R'] :
      ? [V_Cyl: '3d.Shape',V_S: '3d.Shape',V_Cone: '3d.Shape'] :
        ( ( '3d.cylinder-type/1' @ V_Cyl )
        & ( ( '*/2' @ 2 @ ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) ) )
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
          = ( 'cons/2' @ ( '//2' @ ( '3d.volume-of/1' @ V_Cyl ) @ ( '3d.volume-of/1' @ V_S ) ) @ ( 'cons/2' @ ( '//2' @ ( '3d.volume-of/1' @ V_S ) @ ( '3d.volume-of/1' @ V_Cone ) ) @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ratios: 'ListOf' @ 'R'] :
      ? [V_Cyl: '3d.Shape',V_S: '3d.Shape',V_Cone: '3d.Shape'] :
        ( ( '3d.cylinder-type/1' @ V_Cyl )
        & ( ( '*/2' @ 2 @ ( '3d.radius-of/1' @ ( '3d.base-of/1' @ V_Cyl ) ) )
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
          = ( 'cons/2' @ ( '//2' @ ( '3d.area-of/1' @ ( '3d.side-of/1' @ V_Cyl ) ) @ ( '3d.area-of/1' @ V_S ) ) @ ( 'cons/2' @ ( '//2' @ ( '3d.area-of/1' @ V_S ) @ ( '3d.area-of/1' @ ( '3d.side-of/1' @ V_Cone ) ) ) @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ratios_dot_0: 'ListOf' @ 'R'] :
      ( V_ratios_dot_0
      = ( 'cons/2' @ ( '//2' @ 3 @ 2 ) @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ratios_dot_0: 'ListOf' @ 'R'] :
      ( V_ratios_dot_0
      = ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ 4 @ ( 'sqrt/1' @ 5 ) ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).
