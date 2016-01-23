%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P258
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (   8 equality;  24 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   72 (   0   ~;   0   |;  10   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   8   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( 'cos/1' @ V_x ) @ V_y )
                & ( '<=/2' @ V_y @ ( 'sin/1' @ V_x ) )
                & ( '<=/2' @ ( '//2' @ 'Pi/0' @ 4 ) @ V_x )
                & ( '<=/2' @ V_x @ ( '*/2' @ ( '//2' @ 5 @ 4 ) @ 'Pi/0' ) ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) @ V_y )
                & ( '<=/2' @ V_y @ ( 'sin/1' @ ( 'abs/1' @ ( '-/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) ) ) ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 'Pi/0' ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 'Pi/0' @ 4 ) @ ( '+/2' @ 'Pi/0' @ 6 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 'Pi/0' @ 8 ) @ ( '+/2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ ( '*/2' @ 3 @ ( 'sqrt/1' @ 3 ) ) ) ) ) ),
    answer_to(p2_question,[])).
