%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E349
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   8 equality;  24 variable)
%            Maximal formula depth :   19 (  10 average)
%            Number of connectives :   71 (   0   ~;   0   |;   8   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   17 (   2 sgn;   2   !;   4   ?;  11   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_I: 'R'] :
        ( V_I
        = ( 'integral/3'
          @ ^ [V_x: 'R'] :
              ( '*/2' @ V_x @ ( 'sin/1' @ V_x ) )
          @ 0
          @ ( '//2' @ 'Pi/0' @ 2 ) ) ) )).

thf(p2_1_qustion,question,(
    ! [Tv1: $tType,Tv2: $tType] :
      ( 'Find/1'
      @ ^ [V_V: 'R'] :
        ? [V_S: Tv1,V_C: Tv2,V_E: '2d.Shape'] :
          ( ( V_E
            = ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( ( '>=/2' @ V_y @ ( '*/2' @ ( '//2' @ 2 @ 'Pi/0' ) @ V_x ) )
                  & ( '<=/2' @ V_y @ ( 'sin/1' @ V_x ) )
                  & ( '<=/2' @ 0 @ V_x )
                  & ( '<=/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) ) ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_W: 'R'] :
      ? [V_E: '2d.Shape'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '>=/2' @ V_y @ ( '*/2' @ ( '//2' @ 2 @ 'Pi/0' ) @ V_x ) )
                & ( '<=/2' @ V_y @ ( 'sin/1' @ V_x ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) ) ) ) )
        & ( V_W
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_I_dot_0: 'R'] : ( V_I_dot_0 = 1 ) ),
    answer_to(p1_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( '^/2' @ 'Pi/0' @ 2 ) @ 12 ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_W_dot_0: 'R'] :
      ( V_W_dot_0
      = ( '-/2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ ( '//2' @ ( '^/2' @ 'Pi/0' @ 3 ) @ 6 ) ) ) ),
    answer_to(p2_2_question,[])).
