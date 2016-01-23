%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3C018
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  162 (  22 equality;  38 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :  110 (   0   ~;   0   |;  12   &;  98   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   26 (   0 sgn;   0   !;  10   ?;  16   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '//2' @ 1 @ V_x ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 'Napier/0' @ 0 ) @ ( '2d.point/2' @ 'Napier/0' @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '//2' @ 1 @ ( 'sqrt/1' @ V_x ) ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 2 @ 0 ) @ ( '2d.point/2' @ 2 @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 'Pi/0' )
                & ( V_y
                  = ( 'sin/1' @ V_x ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( 'exp/1' @ V_x ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 0 @ 1 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ 1 @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 1 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ 2 @ ( '-/2' @ ( 'sqrt/1' @ 2 ) @ 1 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 2 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ 'Napier/0' @ 1 ) ) ),
    answer_to(p4_question,[])).
