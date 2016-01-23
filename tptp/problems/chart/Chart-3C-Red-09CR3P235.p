%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P235
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (  16 equality;  31 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  100 (   0   ~;   0   |;   8   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   0   :)
%            Number of variables   :   20 (   0 sgn;   0   !;   4   ?;  16   ^)
%                                         (  20   :;   0  !>;   0  ?*)
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
                ( V_y
                = ( '*/2' @ ( '+/2' @ ( '*/2' @ -2 @ V_x ) @ 8 ) @ ( 'sqrt/1' @ ( '-/2' @ V_x @ 1 ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '+/2' @ ( '+/2' @ 10 @ ( '*/2' @ -9 @ ( 'exp/1' @ ( '-/1' @ V_x ) ) ) ) @ ( '-/1' @ ( 'exp/1' @ V_x ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) )
                & ( V_y
                  = ( '^/2' @ ( 'sin/1' @ ( '+/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) ) ) @ 2 ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ ( 'cons/2' @ '2d.y-axis/0' @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 'Pi/0' )
                & ( V_y
                  = ( '*/2' @ ( '^/2' @ ( '+/2' @ 1 @ ( 'cos/1' @ V_x ) ) @ 2 ) @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x ) ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ 24 @ ( 'sqrt/1' @ 3 ) ) @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '+/2' @ ( '*/2' @ 20 @ ( 'ln/1' @ 3 ) ) @ -16 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 'Pi/0' @ 4 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 3 ) ),
    answer_to(p4_question,[])).
