%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P346
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  115 (  12 equality;  43 variable)
%            Maximal formula depth :   22 (  13 average)
%            Number of connectives :   87 (   0   ~;   0   |;  17   &;  70   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   20 (   2 sgn;   0   !;   8   ?;  10   ^)
%                                         (  18   :;   0  !>;   0  ?*)
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
                ( ( '<=/2' @ 0 @ V_y )
                & ( '<=/2' @ V_y @ ( 'exp/1' @ V_x ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 1 ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_f1: 'R' > 'R',V_f2: 'R' > 'R',V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_f1
          = ( ^ [V_x_dot_1: 'R'] :
                ( 'sqrt/1' @ ( '-/2' @ 4 @ ( '^/2' @ V_x_dot_1 @ 2 ) ) ) ) )
        & ( V_f2
          = ( ^ [V_x_dot_0: 'R'] :
                ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) )
        & ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( 'LamApp/2' @ V_f2 @ V_x ) @ V_y )
                & ( '<=/2' @ V_y @ ( 'LamApp/2' @ V_f1 @ V_x ) )
                & ( '<=/2' @ V_x1 @ V_x )
                & ( '<=/2' @ V_x @ V_x2 ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ? [V_x1_dot_0: 'R',V_x2_dot_0: 'R'] :
            ( ( '<=/2' @ -2 @ V_x1_dot_0 )
            & ( '</2' @ V_x1_dot_0 @ V_x2_dot_0 )
            & ( '<=/2' @ V_x2_dot_0 @ 2 )
            & ( ( 'LamApp/2' @ V_f1 @ V_x1_dot_0 )
              = ( 'LamApp/2' @ V_f2 @ V_x1_dot_0 ) )
            & ( ( 'LamApp/2' @ V_f1 @ V_x2_dot_0 )
              = ( 'LamApp/2' @ V_f2 @ V_x2_dot_0 ) )
            & ( V_V
              = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '-/2' @ ( 'exp/1' @ 2 ) @ 1 ) ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 92 @ 15 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).
