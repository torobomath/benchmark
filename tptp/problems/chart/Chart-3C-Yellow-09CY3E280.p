%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E280
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (  12 equality;  33 variable)
%            Maximal formula depth :   29 (  16 average)
%            Number of connectives :   60 (   0   ~;   0   |;  11   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   9   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_S: '2d.Point',V_E1: '2d.Shape',V_E2: '2d.Shape',V_V1: 'R',V_V2: 'R'] :
        ( ( '>=/2' @ V_a @ 1 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_0 )
                = ( 'exp/1' @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_a @ ( 'exp/1' @ V_a ) ) )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( V_Q
          = ( '2d.point/2' @ 0 @ ( 'exp/1' @ V_a ) ) )
        & ( V_R
          = ( '2d.point/2' @ 0 @ 1 ) )
        & ( V_S
          = ( '2d.point/2' @ V_a @ 1 ) )
        & ( V_E1
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_Q ) @ ( 'cons/2' @ ( '2d.seg/2' @ V_Q @ V_R ) @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) )
        & ( V_V1
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E1 ) @ '3d.y-axis/0' ) ) )
        & ( V_E2
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.seg/2' @ V_P @ V_S ) @ ( 'cons/2' @ ( '2d.seg/2' @ V_R @ V_S ) @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) )
        & ( V_V2
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E2 ) @ '3d.y-axis/0' ) ) )
        & ( V_V1 = V_V2 ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] : ( V_a_dot_0 = 2 ) ),
    answer_to(p_question,[])).
