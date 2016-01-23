%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E287
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   97 (   9 equality;  35 variable)
%            Maximal formula depth :   19 (  13 average)
%            Number of connectives :   75 (   0   ~;   0   |;  12   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   20 (   4 sgn;   0   !;   9   ?;   6   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_TY: 'R'] :
      ? [V_C: '2d.Shape',V_L: '2d.Shape',V_a_dot_0: 'R',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( '>/2' @ V_a_dot_0 @ 0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_0 )
                = ( 'exp/1' @ ( '*/2' @ V_a_dot_0 @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ '2d.origin/0' @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_Q )
        & ( V_P
          = ( '2d.point/2' @ V_TX @ V_TY ) )
        & ( '2d.on/2' @ V_P @ V_L ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '2d.Shape',V_L: '2d.Shape',V_E: '2d.Shape',V_Q: '2d.Point'] :
        ( ( '>/2' @ V_a @ 0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( 'exp/1' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ '2d.origin/0' @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_Q )
        & ( V_E
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.y-axis/0' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_L @ 'nil/0' ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_TY_dot_0: 'R'] :
      ( V_TY_dot_0
      = ( '*/2' @ V_a @ ( '*/2' @ ( 'exp/1' @ 1 ) @ V_Tx ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( '-/2' @ 3 @ ( 'exp/1' @ 1 ) ) ) @ ( '*/2' @ 3 @ ( '*/2' @ 'Pi/0' @ ( '^/2' @ V_a @ 2 ) ) ) ) ) ),
    answer_to(p2_question,[])).
