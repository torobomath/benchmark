%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3R144
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   59 (   7 equality;  18 variable)
%            Maximal formula depth :   15 (   9 average)
%            Number of connectives :   41 (   0   ~;   0   |;   3   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   2   ?;   7   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
              ( ( '2d.y-coord/1' @ V_P )
              = ( '*/2' @ ( '2d.x-coord/1' @ V_P ) @ ( 'ln/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape',V_L: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( '*/2' @ ( '2d.x-coord/1' @ V_P ) @ ( 'ln/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ ( '2d.point/2' @ ( 'exp/1' @ 1 ) @ ( 'exp/1' @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.x-axis/0' @ ( 'cons/2' @ V_L @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: 'R',V_y: 'R'] :
        ( V_y
        = ( '*/2' @ V_x @ ( 'ln/1' @ V_x ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 1 @ 4 ) ) ),
    answer_to(p2_question,[])).
