%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP135
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  174 (  10 equality;  54 variable)
%            Maximal formula depth :   29 (  16 average)
%            Number of connectives :  150 (   0   ~;   0   |;   6   &; 142   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   28 (   0 sgn;   6   !;   6   ?;  16   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_S1: '3d.Shape',V_S2: '3d.Shape',V_p: '3d.Point'] :
        ( ( V_S1
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R',V_z_dot_1: 'R'] :
                ( 1
                = ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) @ ( '^/2' @ V_z_dot_1 @ 2 ) ) ) ) )
        & ( V_S2
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R',V_z_dot_0: 'R'] :
                ( 0
                = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ ( '^/2' @ V_z_dot_0 @ 2 ) ) @ ( '*/2' @ -4 @ V_x_dot_0 ) ) @ ( '*/2' @ -2 @ V_y_dot_0 ) ) @ ( '*/2' @ 4 @ V_z_dot_0 ) ) @ V_a ) ) ) )
        & ( '3d.intersect/3' @ V_S1 @ V_S2 @ V_p )
        & ! [V_x: 'R',V_y: 'R',V_z: 'R'] :
            ( ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ V_S1 )
           => ( '<=/2' @ 0 @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ ( '^/2' @ V_z @ 2 ) ) @ ( '*/2' @ -4 @ V_x ) ) @ ( '*/2' @ -2 @ V_y ) ) @ ( '*/2' @ 4 @ V_z ) ) @ V_a ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_S1: '3d.Shape',V_S2: '3d.Shape',V_p: '3d.Point'] :
        ( ( V_S1
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R',V_z_dot_1: 'R'] :
                ( 1
                = ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) @ ( '^/2' @ V_z_dot_1 @ 2 ) ) ) ) )
        & ( V_S2
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R',V_z_dot_0: 'R'] :
                ( 0
                = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ ( '^/2' @ V_z_dot_0 @ 2 ) ) @ ( '*/2' @ -4 @ V_x_dot_0 ) ) @ ( '*/2' @ -2 @ V_y_dot_0 ) ) @ ( '*/2' @ 4 @ V_z_dot_0 ) ) @ V_a ) ) ) )
        & ( '3d.intersect/3' @ V_S1 @ V_S2 @ V_p )
        & ! [V_x: 'R',V_y: 'R',V_z: 'R'] :
            ( ( '3d.on/2' @ ( '3d.point/3' @ V_x @ V_y @ V_z ) @ V_S1 )
           => ( '<=/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ ( '^/2' @ V_z @ 2 ) ) @ ( '*/2' @ -4 @ V_x ) ) @ ( '*/2' @ -2 @ V_y ) ) @ ( '*/2' @ 4 @ V_z ) ) @ V_a ) @ 0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] : ( V_a_dot_0 = 5 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: 'R'] : ( V_a_dot_0 = -7 ) ),
    answer_to(p2_question,[])).
