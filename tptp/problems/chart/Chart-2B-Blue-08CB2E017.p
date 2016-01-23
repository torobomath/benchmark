%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2E017
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  264 (  13 equality;  87 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  228 (   0   ~;   0   |;  16   &; 208   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   37 (   0 sgn;   8   !;  13   ?;  16   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p3_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: 'R'] :
      ? [V_x0: 'R',V_y0: 'R',V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_M
          = ( '+/2' @ ( 'abs/1' @ V_x0 ) @ ( 'abs/1' @ ( '*/2' @ 2 @ V_y0 ) ) ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ V_x ) @ ( 'abs/1' @ ( '*/2' @ 2 @ V_y ) ) ) @ V_M ) ) ) )).

thf(p3_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_x0: 'R',V_y0: 'R',V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_m
          = ( '+/2' @ ( 'abs/1' @ V_x0 ) @ ( 'abs/1' @ ( '*/2' @ 2 @ V_y0 ) ) ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( '>=/2' @ ( '+/2' @ ( 'abs/1' @ V_x ) @ ( 'abs/1' @ ( '*/2' @ 2 @ V_y ) ) ) @ V_m ) ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: 'R'] :
      ? [V_x0: 'R',V_y0: 'R',V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_M
          = ( '+/2' @ V_x0 @ ( '*/2' @ 2 @ V_y0 ) ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( '<=/2' @ ( '+/2' @ V_x @ ( '*/2' @ 2 @ V_y ) ) @ V_M ) ) ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_x0: 'R',V_y0: 'R',V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1 ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x0 @ V_y0 ) @ V_D )
        & ( V_m
          = ( '+/2' @ V_x0 @ ( '*/2' @ 2 @ V_y0 ) ) )
        & ! [V_x: 'R',V_y: 'R'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_D )
           => ( '>=/2' @ ( '+/2' @ V_x @ ( '*/2' @ 2 @ V_y ) ) @ V_m ) ) ) )).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_Dp: '2d.Point'] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 2 @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_P ) ) @ ( '2d.y-coord/1' @ V_P ) ) ) ) @ 1 ) ) )
        & ( '2d.on/2' @ V_Dp @ V_D ) ) )).

thf(p3_1_answer,answer,(
    ^ [V_M_dot_0: 'R'] :
      ( V_M_dot_0
      = ( '//2' @ 5 @ 3 ) ) ),
    answer_to(p3_1_question,[])).

thf(p3_2_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = 0 ) ),
    answer_to(p3_2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_M_dot_0: 'R'] : ( V_M_dot_0 = 1 ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( V_m_dot_0
      = ( '-/1' @ 1 ) ) ),
    answer_to(p2_2_question,[])).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: 'R',V_y: 'R'] :
        ( ( '<=/2' @ V_y @ ( '+/2' @ ( '-/1' @ V_x ) @ ( '//2' @ 1 @ 3 ) ) )
        & ( '<=/2' @ ( '-/2' @ ( '-/1' @ V_x ) @ ( '//2' @ 1 @ 3 ) ) @ V_y )
        & ( '<=/2' @ V_y @ ( '+/2' @ V_x @ 1 ) )
        & ( '<=/2' @ ( '-/2' @ V_x @ 1 ) @ V_y ) ) ),
    answer_to(p1_question,[])).
