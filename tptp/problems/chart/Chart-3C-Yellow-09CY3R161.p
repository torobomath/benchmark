%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3R161
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   89 (   7 equality;  37 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :   71 (   0   ~;   0   |;  11   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   39 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;  10   ?;   6   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_R1: '2d.Point',V_R2: '2d.Point',V_R3: '2d.Point',V_R4: '2d.Point'] :
        ( ( '2d.is-regular-square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_R1 @ V_R2 ) )
          = 4 )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-of-cpfun/1'
              @ ^ [V_P: '2d.Point'] :
                ? [V_C: '2d.Shape'] :
                  ( ( '2d.circle-type/1' @ V_C )
                  & ( '<=/2' @ 1 @ V_r )
                  & ( ( '2d.radius-of/1' @ V_C )
                    = V_r )
                  & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ ( '2d.square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 ) )
                  & ( '2d.point-inside-of/2' @ V_P @ V_C ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_R1: '2d.Point',V_R2: '2d.Point',V_R3: '2d.Point',V_R4: '2d.Point'] :
        ( ( '2d.is-regular-square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 )
        & ( V_V
          = ( '3d.volume-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_P: '3d.Point'] :
                ? [V_C: '3d.Shape'] :
                  ( ( '3d.is-sphere/1' @ V_C )
                  & ( ( '3d.radius-of/1' @ V_C )
                    = 1 )
                  & ( '3d.on/2' @ ( '3d.center-of/1' @ V_C ) @ ( '3d.import-2d-shape/1' @ ( '2d.square/4' @ V_R1 @ V_R2 @ V_R3 @ V_R4 ) ) )
                  & ( '3d.point-inside-of/2' @ V_P @ V_C ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '<=/2' @ V_r @ 1 )
      & ( V_S_dot_0
        = ( '+/2' @ ( '*/2' @ 32 @ V_r ) @ ( '*/2' @ ( '-/2' @ 'Pi/0' @ 4 ) @ ( '^/2' @ V_r @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( '-/2' @ ( '*/2' @ 52 @ 'Pi/0' ) @ 16 ) @ 3 ) ) ),
    answer_to(p2_question,[])).
