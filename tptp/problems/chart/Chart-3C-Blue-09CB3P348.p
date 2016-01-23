%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P348
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (   9 equality;  26 variable)
%            Maximal formula depth :   16 (  11 average)
%            Number of connectives :   71 (   0   ~;   0   |;   9   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( '^/2' @ V_x @ 2 ) @ V_y )
                & ( '<=/2' @ V_y @ ( 'sqrt/1' @ V_x ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_S ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x @ 4 ) @ ( '*/2' @ -2 @ ( '^/2' @ V_x @ 2 ) ) ) @ V_y )
                & ( '<=/2' @ V_y @ 0 )
                & ( '<=/2' @ 0 @ V_x ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_S ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_S: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ -1 @ V_y )
                & ( '<=/2' @ V_y @ ( 'cos/1' @ V_x ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 'Pi/0' ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_S ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 3 @ 10 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 4 @ 3 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '+/2' @ ( '^/2' @ 'Pi/0' @ 3 ) @ ( '*/2' @ -4 @ 'Pi/0' ) ) ) ),
    answer_to(p3_question,[])).
