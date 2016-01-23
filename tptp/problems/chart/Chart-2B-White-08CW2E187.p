%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E187
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  267 (  27 equality; 108 variable)
%            Maximal formula depth :   24 (  15 average)
%            Number of connectives :  211 (   0   ~;   4   |;  32   &; 172   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   45 (   0 sgn;   3   !;  14   ?;  18   ^)
%                                         (  35   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_O
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( ( '^/2' @ V_r @ 2 )
                = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 1 ) @ 2 ) ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
        & ( '</2' @ 0 @ V_r )
        & ( '</2' @ 0 @ V_a )
        & ( V_answer
          = ( 'cons/2' @ V_r @ ( 'cons/2' @ V_a @ 'nil/0' ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ! [V_Q: '2d.Point'] :
            ( ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_O @ V_C ) )
           => ( V_P = V_Q ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
        ( ( V_O
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( ( '^/2' @ V_r @ 2 )
                = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 1 ) @ 2 ) ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
        & ( '</2' @ 0 @ V_r )
        & ( '</2' @ 0 @ V_a )
        & ( V_answer
          = ( 'cons/2' @ V_r @ ( 'cons/2' @ V_a @ 'nil/0' ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '</2' @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
        & ( '</2' @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.x-coord/1' @ V_R ) )
        & ! [V_T: '2d.Point'] :
            ( ( '2d.on/2' @ V_T @ ( '2d.intersection/2' @ V_O @ V_C ) )
           => ( ( V_P = V_T )
              | ( V_Q = V_T )
              | ( V_R = V_T ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_O: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_r: 'R'] :
        ( ( V_O
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( ( '^/2' @ V_r @ 2 )
                = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 1 ) @ 2 ) ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) ) ) )
        & ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_r )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_O @ V_C ) )
        & ( '</2' @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
        & ( '</2' @ ( '2d.x-coord/1' @ V_Q ) @ ( '2d.x-coord/1' @ V_R ) )
        & ! [V_T: '2d.Point'] :
            ( ( '2d.on/2' @ V_T @ ( '2d.intersection/2' @ V_O @ V_C ) )
           => ( ( V_P = V_T )
              | ( V_Q = V_T )
              | ( V_R = V_T ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_r @ ( 'cons/2' @ V_a @ 'nil/0' ) ) )
      & ( V_r = 1 )
      & ( '</2' @ 0 @ V_a )
      & ( '<=/2' @ V_a @ ( '//2' @ 1 @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_r @ ( 'cons/2' @ V_a @ 'nil/0' ) ) )
      & ( V_r = 1 )
      & ( '</2' @ ( '//2' @ 1 @ 2 ) @ V_a ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ 1 @ 2 ) @ V_a )
      & ( V_S_dot_0
        = ( '//2' @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_a ) @ 1 ) @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_a ) @ 1 ) ) ) @ ( '^/2' @ V_a @ 2 ) ) ) ) ),
    answer_to(p3_question,[])).
