%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  119 (  13 equality;  29 variable)
%            Maximal formula depth :   17 (  11 average)
%            Number of connectives :   87 (   0   ~;   0   |;  10   &;  77   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;   5   ?;  12   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) )
                & ( V_y
                  = ( '-/1' @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2 ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ ( 'cons/2' @ '2d.y-axis/0' @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '*/2' @ ( '-/2' @ 3 @ V_x ) @ ( 'exp/1' @ V_x ) ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 0 @ 1 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 2 @ 0 ) @ ( '2d.point/2' @ 2 @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p21_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_y )
                & ( '<=/2' @ V_y @ ( '*/2' @ ( '-/2' @ 3 @ V_x ) @ ( 'exp/1' @ V_x ) ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 2 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_f ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 'Pi/0' @ 4 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '*/2' @ 2 @ ( 'exp/1' @ 2 ) ) @ 4 ) ) ),
    answer_to(p2_question,[])).

thf(p21_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '*/2' @ 2 @ ( 'exp/1' @ 2 ) ) @ 4 ) ) ),
    answer_to(p21_question,[])).
