%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C037
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   6 equality;  17 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   44 (   0   ~;   0   |;   6   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   16 (   3 sgn;   3   !;   5   ?;   8   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,(
    ! [Tv1: $tType,Tv2: $tType] :
      ( 'Find/1'
      @ ^ [V_V: 'R'] :
        ? [V_C1: Tv1,V_C2: Tv2,V_E: '2d.Shape'] :
          ( ( V_E
            = ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( ( '<=/2' @ V_y @ ( 'exp/1' @ V_x ) )
                  & ( '<=/2' @ 0 @ V_y )
                  & ( '<=/2' @ 0 @ V_x )
                  & ( '<=/2' @ V_x @ 1 ) ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) ) )).

thf(p2_qustion,question,(
    ! [Tv1: $tType] :
      ( 'Find/1'
      @ ^ [V_V: 'R'] :
        ? [V_C: Tv1,V_E: '2d.Shape'] :
          ( ( V_E
            = ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( ( '<=/2' @ ( '-/2' @ ( '^/2' @ V_x @ 2 ) @ V_x ) @ V_y )
                  & ( '<=/2' @ V_y @ 0 ) ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 'Pi/0' @ 2 ) @ ( '-/2' @ ( 'exp/1' @ 2 ) @ 1 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ 'Pi/0' @ 30 ) ) ),
    answer_to(p2_question,[])).
