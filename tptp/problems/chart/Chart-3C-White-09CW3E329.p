%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E329
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  110 (  12 equality;  30 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   80 (   0   ~;   0   |;  11   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :)
%            Number of variables   :   18 (   1 sgn;   0   !;   6   ?;  12   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '2d.Shape',V_E: '3d.Shape'] :
        ( ( V_C
          = ( '2d.shape-enclosed-by/1'
            @ ( 'cons/2'
              @ ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x_dot_0: 'R'] :
                      ( 'sqrt/1' @ ( '-/2' @ V_x_dot_0 @ 1 ) ) ) )
              @ ( 'cons/2' @ '2d.x-axis/0'
                @ ( 'cons/2' @ '2d.y-axis/0'
                  @ ( 'cons/2'
                    @ ( '2d.graph-of/1'
                      @ ( 'fun/1'
                        @ ^ [V_x: 'R'] : 1 ) )
                    @ 'nil/0' ) ) ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_E ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '2d.Shape',V_E: '3d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_y: 'R',V_x: 'R'] :
                ( ( '>=/2' @ V_x @ ( '-/2' @ ( '^/2' @ V_y @ 2 ) @ V_y ) )
                & ( '>=/2' @ 0 @ V_x ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_E ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '2d.Shape',V_E: '3d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_y: 'R',V_x: 'R'] :
                ( ( '<=/2' @ V_y @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '*/2' @ 2 @ V_x ) ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 1 )
                & ( '<=/2' @ 0 @ V_y )
                & ( '<=/2' @ V_y @ 3 ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) )
        & ( V_V
          = ( '3d.volume-of/1' @ V_E ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 28 @ 15 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 1 @ 30 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 7 @ 6 ) @ 'Pi/0' ) ) ),
    answer_to(p3_question,[])).
