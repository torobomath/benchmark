%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R159
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   94 (   8 equality;  35 variable)
%            Maximal formula depth :   22 (  13 average)
%            Number of connectives :   74 (   0   ~;   0   |;   9   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   19 (   1 sgn;   0   !;   5   ?;  12   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_y: 'R',V_x: 'R'] :
                ( ( '>=/2' @ V_y @ ( 'exp/1' @ ( '^/2' @ V_x @ 2 ) ) )
                & ( '<=/2' @ V_y @ V_h )
                & ( '<=/2' @ 0 @ V_x ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: 'R' > '2d.Shape',V_h: 'R' > 'R',V_V: 'R' > 'R',V_t0: 'R'] :
        ( ( V_h
          = ( ^ [V_t_dot_1: 'R'] :
                ( '*/2' @ 2 @ V_t_dot_1 ) ) )
        & ( V_C
          = ( ^ [V_t_dot_0: 'R'] :
                ( '2d.set-of-cfun/1'
                @ ^ [V_y: 'R',V_x_dot_0: 'R'] :
                    ( ( '>=/2' @ V_y @ ( 'exp/1' @ ( '^/2' @ V_x_dot_0 @ 2 ) ) )
                    & ( '<=/2' @ V_y @ ( 'LamApp/2' @ V_h @ V_t_dot_0 ) )
                    & ( '<=/2' @ 0 @ V_x_dot_0 ) ) ) ) )
        & ( V_V
          = ( ^ [V_t: 'R'] :
                ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ ( 'LamApp/2' @ V_C @ V_t ) ) @ '3d.y-axis/0' ) ) ) )
        & ( 'Pi/0'
          = ( 'LamApp/2' @ V_V @ V_t0 ) )
        & ( 'converge/3'
          @ ( 'fun/1'
            @ ^ [V_x: 'R'] :
                ( '//2' @ ( '-/2' @ ( 'LamApp/2' @ V_V @ V_t0 ) @ ( 'LamApp/2' @ V_V @ V_x ) ) @ ( '-/2' @ V_t0 @ V_x ) ) )
          @ V_t0
          @ V_S ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ 'Pi/0' @ ( '-/2' @ ( '*/2' @ ( '+/2' @ V_h @ 1 ) @ ( 'ln/1' @ ( '+/2' @ V_h @ 1 ) ) ) @ V_h ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 2 @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).
