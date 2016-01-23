%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR085
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  138 (  12 equality;  60 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :  110 (   0   ~;   0   |;  18   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_AF_FE: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_E ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_F )
        & ( '</2' @ 0 @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( 2
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_B ) ) )
        & ( 3
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) ) )
        & ( 4
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_B ) ) )
        & ( V_AF_FE
          = ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_F ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_E ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_CF_FD: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_E ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_F )
        & ( '</2' @ 0 @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( 2
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_B ) ) )
        & ( 3
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) ) )
        & ( 4
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_B ) ) )
        & ( V_CF_FD
          = ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_F ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_D ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_AF_FE_dot_0: 'R'] :
      ( V_AF_FE_dot_0
      = ( '//2' @ 7 @ 6 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_CF_FD_dot_0: 'R'] :
      ( V_CF_FD_dot_0
      = ( '//2' @ 9 @ 4 ) ) ),
    answer_to(p2_question,[])).
