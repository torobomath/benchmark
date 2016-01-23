%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P333
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  147 (  18 equality;  34 variable)
%            Maximal formula depth :   19 (  15 average)
%            Number of connectives :  109 (   0   ~;   3   |;  10   &;  96   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   20 (   0 sgn;   0   !;   4   ?;  12   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E1: '2d.Shape',V_E2: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.intersection/2' @ V_E1 @ V_E2 ) )
        & ( V_E1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 1
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '//2' @ ( '^/2' @ V_y_dot_1 @ 2 ) @ 3 ) ) ) ) )
        & ( V_E2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 1
                = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 3 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_E1: '2d.Shape',V_E2: '2d.Shape'] :
        ( ( V_E1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '//2' @ ( '^/2' @ V_y_dot_0 @ 2 ) @ 3 ) ) @ 1 ) ) )
        & ( V_E2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( '<=/2' @ ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ 3 ) @ ( '^/2' @ V_y @ 2 ) ) @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.intersection/2' @ V_E1 @ V_E2 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( ( V_x
            = ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) )
          & ( V_y
            = ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) )
        | ( ( V_x
            = ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) )
          & ( V_y
            = ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) ) )
        | ( ( V_x
            = ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) )
          & ( V_y
            = ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) )
        | ( ( V_x
            = ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) )
          & ( V_y
            = ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ 'Pi/0' ) @ 3 ) ) ),
    answer_to(p2_question,[])).
