%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C038
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   9 equality;  22 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   62 (   0   ~;   0   |;   7   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   23 (   4 sgn;   4   !;   7   ?;  12   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,(
    ! [Tv1: $tType] :
      ( 'Find/1'
      @ ^ [V_V: 'R'] :
        ? [V_C: Tv1,V_E: '2d.Shape'] :
          ( ( V_E
            = ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( ( '>=/2' @ V_x @ ( '-/2' @ ( '^/2' @ V_y @ 2 ) @ 1 ) )
                  & ( '<=/2' @ V_x @ 0 ) ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) ) )).

thf(p1_1_qustion,question,(
    ! [Tv1: $tType] :
      ( 'Find/1'
      @ ^ [V_V: 'R'] :
        ? [V_C: Tv1,V_E: '2d.Shape'] :
          ( ( V_E
            = ( '2d.set-of-cfun/1'
              @ ^ [V_y: 'R',V_x: 'R'] :
                  ( ( '>=/2' @ V_y @ ( '-/2' @ ( '^/2' @ V_x @ 2 ) @ 1 ) )
                  & ( '<=/2' @ V_y @ 0 ) ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.x-axis/0' ) ) ) ) ) )).

thf(p2_qustion,question,(
    ! [Tv1: $tType,Tv2: $tType] :
      ( 'Find/1'
      @ ^ [V_V: 'R'] :
        ? [V_C1: Tv1,V_C2: Tv2,V_E: '2d.Shape'] :
          ( ( V_E
            = ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( ( '<=/2' @ V_y @ 2 )
                  & ( '<=/2' @ 0 @ V_x )
                  & ( '<=/2' @ V_x @ ( 'sqrt/1' @ ( '+/2' @ V_y @ 1 ) ) ) ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_E ) @ '3d.y-axis/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 16 @ 15 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p1_1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 16 @ 15 ) @ 'Pi/0' ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 9 @ 2 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).
