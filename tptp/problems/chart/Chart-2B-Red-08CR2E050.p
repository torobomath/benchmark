%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E050
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  22 equality;  67 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :  140 (   0   ~;   8   |;  21   &; 111   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   28 (   0 sgn;   0   !;   7   ?;  21   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_P: '2d.Shape'] :
      ? [V_O: '2d.Point',V_D: '2d.Point' > '2d.Point' > 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_D
          = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
                ( 'max/2' @ ( 'abs/1' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) @ ( 'abs/1' @ ( '-/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) ) ) ) )
        & ( V_P
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 3
                = ( 'LamApp/2' @ ( 'LamApp/2' @ V_D @ V_O ) @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_P: '2d.Shape'] :
      ? [V_A: '2d.Point',V_D: '2d.Point' > '2d.Point' > 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ 0 @ 2 ) )
        & ( V_D
          = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
                ( 'max/2' @ ( 'abs/1' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) @ ( 'abs/1' @ ( '-/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) ) ) ) )
        & ( V_P
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 3
                = ( 'LamApp/2' @ ( 'LamApp/2' @ V_D @ V_A ) @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Draw/1'
    @ ^ [V_P: '2d.Shape'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_D: '2d.Point' > '2d.Point' > 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 0 @ 2 ) )
        & ( V_D
          = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
                ( 'max/2' @ ( 'abs/1' @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) @ ( 'abs/1' @ ( '-/2' @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) ) ) ) )
        & ( V_P
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( 'LamApp/2' @ ( 'LamApp/2' @ V_D @ V_O ) @ ( '2d.point/2' @ V_x @ V_y ) )
                = ( 'LamApp/2' @ ( 'LamApp/2' @ V_D @ V_A ) @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( ( '<=/2' @ -3 @ V_x_dot_0 )
          & ( '<=/2' @ V_x_dot_0 @ 3 )
          & ( ( V_y_dot_0 = 3 )
            | ( V_y_dot_0 = -3 ) ) )
        | ( ( ( V_x_dot_0 = 3 )
            | ( V_x_dot_0 = -3 ) )
          & ( '<=/2' @ -3 @ V_y_dot_0 )
          & ( '<=/2' @ V_y_dot_0 @ 3 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( ( '<=/2' @ -3 @ V_x_dot_0 )
          & ( '<=/2' @ V_x_dot_0 @ 3 )
          & ( ( V_y_dot_0 = 5 )
            | ( V_y_dot_0 = -1 ) ) )
        | ( ( ( V_x_dot_0 = 3 )
            | ( V_x_dot_0 = -3 ) )
          & ( '<=/2' @ -1 @ V_y_dot_0 )
          & ( '<=/2' @ V_y_dot_0 @ 5 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( ( '<=/2' @ 1 @ V_x_dot_0 )
          & ( '<=/2' @ ( '+/2' @ ( '-/1' @ V_x_dot_0 ) @ 2 ) @ V_y_dot_0 )
          & ( '<=/2' @ V_y_dot_0 @ V_x_dot_0 ) )
        | ( ( '</2' @ -1 @ V_x_dot_0 )
          & ( '</2' @ V_x_dot_0 @ 1 )
          & ( V_y_dot_0 = 1 ) )
        | ( ( '<=/2' @ V_x_dot_0 @ -1 )
          & ( '<=/2' @ ( '+/2' @ V_x_dot_0 @ 2 ) @ V_y_dot_0 )
          & ( '<=/2' @ V_y_dot_0 @ ( '-/1' @ V_x_dot_0 ) ) ) ) ),
    answer_to(p3_question,[])).
