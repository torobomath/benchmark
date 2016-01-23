%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R093
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  216 (  20 equality;  78 variable)
%            Maximal formula depth :   34 (  21 average)
%            Number of connectives :  176 (   0   ~;   0   |;  20   &; 156   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   44 (   2 sgn;   0   !;  20   ?;  24   ^)
%                                         (  44   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_D1: '2d.Shape',V_D2: '2d.Shape',V_D3: '2d.Shape',V_D4: '2d.Shape',V_f: '2d.Point' > 'R',V_p: '2d.Point',V_x: 'R',V_y: 'R',V_max: 'R'] :
        ( ( V_D1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_3: 'R',V_y_dot_3: 'R'] :
                ( '<=/2' @ 0 @ V_y_dot_3 ) ) )
        & ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_2: 'R',V_y_dot_2: 'R'] :
                ( '<=/2' @ V_y_dot_2 @ ( '+/2' @ V_x_dot_2 @ 1 ) ) ) )
        & ( V_D3
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( '<=/2' @ 3 @ ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_1 ) @ ( '*/2' @ 3 @ V_y_dot_1 ) ) ) ) )
        & ( V_D4
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( '<=/2' @ ( '+/2' @ ( '*/2' @ 3 @ V_x_dot_0 ) @ V_y_dot_0 ) @ 9 ) ) )
        & ( V_f
          = ( ^ [V_P: '2d.Point'] :
                ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 3 @ ( '2d.y-coord/1' @ V_P ) ) ) ) )
        & ( V_p
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/1' @ ( 'cons/2' @ V_D1 @ ( 'cons/2' @ V_D2 @ ( 'cons/2' @ V_D3 @ ( 'cons/2' @ V_D4 @ 'nil/0' ) ) ) ) ) )
        & ( V_max
          = ( 'LamApp/2' @ V_f @ V_p ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_p0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p0 @ ( '2d.intersection/1' @ ( 'cons/2' @ V_D1 @ ( 'cons/2' @ V_D2 @ ( 'cons/2' @ V_D3 @ ( 'cons/2' @ V_D4 @ 'nil/0' ) ) ) ) ) )
                & ( V_v
                  = ( 'LamApp/2' @ V_f @ V_p0 ) ) ) )
          @ V_max )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_max @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_D1: '2d.Shape',V_D2: '2d.Shape',V_D3: '2d.Shape',V_D4: '2d.Shape',V_f: '2d.Point' > 'R',V_p: '2d.Point',V_x: 'R',V_y: 'R',V_min: 'R'] :
        ( ( V_D1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_3: 'R',V_y_dot_3: 'R'] :
                ( '<=/2' @ 0 @ V_y_dot_3 ) ) )
        & ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_2: 'R',V_y_dot_2: 'R'] :
                ( '<=/2' @ V_y_dot_2 @ ( '+/2' @ V_x_dot_2 @ 1 ) ) ) )
        & ( V_D3
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( '<=/2' @ 3 @ ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_1 ) @ ( '*/2' @ 3 @ V_y_dot_1 ) ) ) ) )
        & ( V_D4
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( '<=/2' @ ( '+/2' @ ( '*/2' @ 3 @ V_x_dot_0 ) @ V_y_dot_0 ) @ 9 ) ) )
        & ( V_f
          = ( ^ [V_P: '2d.Point'] :
                ( '+/2' @ ( '2d.x-coord/1' @ V_P ) @ ( '*/2' @ 3 @ ( '2d.y-coord/1' @ V_P ) ) ) ) )
        & ( V_p
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/1' @ ( 'cons/2' @ V_D1 @ ( 'cons/2' @ V_D2 @ ( 'cons/2' @ V_D3 @ ( 'cons/2' @ V_D4 @ 'nil/0' ) ) ) ) ) )
        & ( V_min
          = ( 'LamApp/2' @ V_f @ V_p ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_p0: '2d.Point'] :
                ( ( '2d.on/2' @ V_p0 @ ( '2d.intersection/1' @ ( 'cons/2' @ V_D1 @ ( 'cons/2' @ V_D2 @ ( 'cons/2' @ V_D3 @ ( 'cons/2' @ V_D4 @ 'nil/0' ) ) ) ) ) )
                & ( V_v
                  = ( 'LamApp/2' @ V_f @ V_p0 ) ) ) )
          @ V_min )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_min @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 11 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ 3 @ 2 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 3 @ 2 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
