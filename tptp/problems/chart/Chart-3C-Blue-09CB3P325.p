%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P325
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  118 (  10 equality;  36 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :   96 (   0   ~;   0   |;  13   &;  83   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   19 (   0 sgn;   0   !;   7   ?;   8   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_L: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( '-/2' @ V_y_dot_0 @ ( '^/2' @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x_dot_0 ) ) @ 2 ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ ( '//2' @ 'Pi/0' @ 8 ) @ ( '//2' @ 1 @ 2 ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ V_P @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_P )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_L ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape',V_P: '2d.Point',V_O: '2d.Point',V_L: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of-implicit-function/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( '-/2' @ V_y @ ( '^/2' @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x ) ) @ 2 ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ ( '//2' @ 'Pi/0' @ 8 ) @ ( '//2' @ 1 @ 2 ) ) )
        & ( V_O = '2d.origin/0' )
        & ( '2d.line-type/1' @ V_L )
        & ( '2d.on/2' @ V_P @ V_L )
        & ( '2d.tangent/3' @ V_L @ V_C @ V_P )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_L @ ( 'cons/2' @ '2d.y-axis/0' @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ ( '//2' @ 1 @ 2 ) ) @ ( '//2' @ ( '-/1' @ 'Pi/0' ) @ 4 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '//2' @ ( '^/2' @ 'Pi/0' @ 2 ) @ 64 ) @ ( '//2' @ 1 @ 8 ) ) ) ),
    answer_to(p2_question,[])).
