%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1E055
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (   6 equality;  22 variable)
%            Maximal formula depth :   27 (  15 average)
%            Number of connectives :   64 (   0   ~;   0   |;   8   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( '3d.on/2' @ V_D @ '3d.xy-plane/0' )
        & ( '3d.on/2' @ V_E @ '3d.xy-plane/0' )
        & ( '3d.on/2' @ V_F @ '3d.xy-plane/0' )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_A )
          = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_D ) @ ( '3d.vec3d/3' @ 0 @ 0 @ 8 ) ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_B )
          = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_E ) @ ( '3d.vec3d/3' @ 0 @ 0 @ 3 ) ) )
        & ( ( '3d.vec/2' @ '3d.origin/0' @ V_C )
          = ( '3d.v+/2' @ ( '3d.vec/2' @ '3d.origin/0' @ V_F ) @ ( '3d.vec3d/3' @ 0 @ 0 @ 6 ) ) )
        & ( 12
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_D @ V_E @ V_F ) ) )
        & ( V_V
          = ( '3d.volume-of/1'
            @ ( '3d.shape-of-cpfun/1'
              @ ^ [V_P: '3d.Point'] :
                  ( ( '3d.point-inside-of/2' @ V_P @ ( '3d.prism/2' @ ( '3d.triangle/3' @ V_D @ V_E @ V_F ) @ ( '3d.vec3d/3' @ 0 @ 0 @ 8 ) ) )
                  & ( '3d.on/2' @ V_P @ ( '3d.lower-region-of/1' @ ( '3d.plane1/3' @ V_A @ V_B @ V_C ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] : ( V_V_dot_0 = 68 ) ),
    answer_to(p_question,[])).
