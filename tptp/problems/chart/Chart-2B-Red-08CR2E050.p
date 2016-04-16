%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E050
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  185 (  22 equality;  67 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :  135 (   0   ~;   8   |;  21   &; 106   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   0   !;   7   ?;  21   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_P: '2d.Shape'] :
      ? [V_O: '2d.Point',V_D: ( '2d.Point' > '2d.Point' > $real )] :
        ( ( V_O = '2d.origin/0' )
        & ( V_D
          = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
                ( 'max/2' @ ( 'abs/1' @ ( $difference @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) @ ( 'abs/1' @ ( $difference @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) ) ) ) )
        & ( V_P
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 3.0
                = ( V_D @ V_O @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_P: '2d.Shape'] :
      ? [V_A: '2d.Point',V_D: ( '2d.Point' > '2d.Point' > $real )] :
        ( ( V_A
          = ( '2d.point/2' @ 0.0 @ 2.0 ) )
        & ( V_D
          = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
                ( 'max/2' @ ( 'abs/1' @ ( $difference @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) @ ( 'abs/1' @ ( $difference @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) ) ) ) )
        & ( V_P
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 3.0
                = ( V_D @ V_A @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_P: '2d.Shape'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_D: ( '2d.Point' > '2d.Point' > $real )] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 0.0 @ 2.0 ) )
        & ( V_D
          = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
                ( 'max/2' @ ( 'abs/1' @ ( $difference @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) @ ( 'abs/1' @ ( $difference @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) ) ) ) )
        & ( V_P
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( V_D @ V_O @ ( '2d.point/2' @ V_x @ V_y ) )
                = ( V_D @ V_A @ ( '2d.point/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $lesseq @ -3.0 @ V_x_dot_0 )
          & ( $lesseq @ V_x_dot_0 @ 3.0 )
          & ( ( V_y_dot_0 = 3.0 )
            | ( V_y_dot_0 = -3.0 ) ) )
        | ( ( ( V_x_dot_0 = 3.0 )
            | ( V_x_dot_0 = -3.0 ) )
          & ( $lesseq @ -3.0 @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ 3.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $lesseq @ -3.0 @ V_x_dot_0 )
          & ( $lesseq @ V_x_dot_0 @ 3.0 )
          & ( ( V_y_dot_0 = 5.0 )
            | ( V_y_dot_0 = -1.0 ) ) )
        | ( ( ( V_x_dot_0 = 3.0 )
            | ( V_x_dot_0 = -3.0 ) )
          & ( $lesseq @ -1.0 @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ 5.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $lesseq @ 1.0 @ V_x_dot_0 )
          & ( $lesseq @ ( $sum @ ( $uminus @ V_x_dot_0 ) @ 2.0 ) @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ V_x_dot_0 ) )
        | ( ( $less @ -1.0 @ V_x_dot_0 )
          & ( $less @ V_x_dot_0 @ 1.0 )
          & ( V_y_dot_0 = 1.0 ) )
        | ( ( $lesseq @ V_x_dot_0 @ -1.0 )
          & ( $lesseq @ ( $sum @ V_x_dot_0 @ 2.0 ) @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ ( $uminus @ V_x_dot_0 ) ) ) ) ),
    answer_to(p3_question,[])).

