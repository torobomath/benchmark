%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE009
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  342 (  30 equality; 106 variable)
%            Maximal formula depth :   25 (  15 average)
%            Number of connectives :  285 (   5   ~;   0   |;  38   &; 242   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   39 (   0   :)
%            Number of variables   :   45 (   0 sgn;   0   !;  25   ?;  20   ^)
%                                         (  45   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 1
                = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 25 ) @ ( '//2' @ ( '^/2' @ V_y @ 2 ) @ 16 ) ) ) ) )
        & ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( V_answer
          = ( 'cons/2' @ ( '2d.x-coord/1' @ V_F1 ) @ ( 'cons/2' @ ( '2d.y-coord/1' @ V_F1 ) @ ( 'cons/2' @ ( '2d.x-coord/1' @ V_F2 ) @ ( 'cons/2' @ ( '2d.y-coord/1' @ V_F2 ) @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 1
                = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 25 ) @ ( '//2' @ ( '^/2' @ V_y @ 2 ) @ 16 ) ) ) ) )
        & ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( '</2' @ 0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( '//2' @ 1 @ 2 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( V_answer
          = ( 'cons/2' @ ( '2d.distance/2' @ V_P @ V_F1 ) @ ( 'cons/2' @ ( '2d.distance/2' @ V_P @ V_F2 ) @ 'nil/0' ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 1
                = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 25 ) @ ( '//2' @ ( '^/2' @ V_y @ 2 ) @ 16 ) ) ) ) )
        & ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( '</2' @ 0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( '//2' @ 1 @ 2 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( V_answer
          = ( 'cons/2' @ ( '2d.x-coord/1' @ V_P ) @ ( 'cons/2' @ ( '2d.y-coord/1' @ V_P ) @ 'nil/0' ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point',V_C: '2d.Point'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 1
                = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 25 ) @ ( '//2' @ ( '^/2' @ V_y @ 2 ) @ 16 ) ) ) ) )
        & ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( '</2' @ 0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( '//2' @ 1 @ 2 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( '2d.is-circumcenter-of/2' @ V_C @ ( '2d.triangle/3' @ V_P @ V_F1 @ V_F2 ) )
        & ( V_r
          = ( '2d.distance/2' @ V_C @ V_F1 ) ) ) )).

thf(p5_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E: '2d.Shape',V_F1: '2d.Point',V_F2: '2d.Point',V_P: '2d.Point',V_circle: '2d.Shape',V_x: 'R',V_y: 'R'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 1
                = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 25 ) @ ( '//2' @ ( '^/2' @ V_y_dot_0 @ 2 ) @ 16 ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_F1 ) )
        & ( V_F1 != V_F2 )
        & ( '2d.is-focus-of/2' @ V_F1 @ V_E )
        & ( '2d.is-focus-of/2' @ V_F2 @ V_E )
        & ( '</2' @ 0 @ ( '2d.y-coord/1' @ V_P ) )
        & ( ( '//2' @ 1 @ 2 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_P @ V_F2 @ V_F1 ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_P @ V_F1 @ V_F2 ) @ V_circle )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 3 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -3 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ 38 @ 7 ) @ ( 'cons/2' @ ( '//2' @ 32 @ 7 ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ -5 @ 7 ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 16 @ ( 'sqrt/1' @ 3 ) ) @ 7 ) @ 'nil/0' ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( V_r_dot_0
      = ( '//2' @ ( '*/2' @ 38 @ ( 'sqrt/1' @ 3 ) ) @ 21 ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x_dot_1 @ ( 'cons/2' @ V_y_dot_1 @ 'nil/0' ) ) )
      & ( ( '^/2' @ ( '//2' @ ( '*/2' @ 38 @ ( 'sqrt/1' @ 3 ) ) @ 21 ) @ 2 )
        = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ ( '+/2' @ V_y_dot_1 @ ( '//2' @ ( '*/2' @ -11 @ ( 'sqrt/1' @ 3 ) ) @ 21 ) ) @ 2 ) ) ) ) ),
    answer_to(p5_question,[])).
