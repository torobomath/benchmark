%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P265
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   8 equality;  16 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :   51 (   0   ~;   0   |;   6   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   11 (   1 sgn;   0   !;   6   ?;   5   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_S: '3d.Shape',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_P: '3d.Point'] :
        ( ( V_S
          = ( '3d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R',V_z: 'R'] :
                ( '<=/2' @ 1 @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) ) ) )
        & ( V_A
          = ( '3d.point/3' @ 1 @ 1 @ 0 ) )
        & ( V_B
          = ( '3d.point/3' @ -1 @ 1 @ 0 ) )
        & ( V_C
          = ( '3d.point/3' @ -1 @ -1 @ 0 ) )
        & ( V_D
          = ( '3d.point/3' @ 1 @ -1 @ 0 ) )
        & ( V_P
          = ( '3d.point/3' @ 0 @ 0 @ 3 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.intersection/2' @ V_S @ ( '3d.shape-of-cpfun/1' @ ( '3d.char-fun-of/1' @ ( '3d.inner-part-of/1' @ ( '3d.square-pyramid/5' @ V_P @ V_A @ V_B @ V_C @ V_D ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '+/2' @ ( '+/2' @ 4 @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 2 ) ) ) @ ( '*/2' @ -3 @ 'Pi/0' ) ) ) ),
    answer_to(p_question,[])).
