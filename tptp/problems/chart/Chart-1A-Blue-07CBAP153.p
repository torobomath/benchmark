%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP153
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   31 (   3 equality;  13 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :   23 (   0   ~;   0   |;   4   &;  19   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 2 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = V_x )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
          = ( '-/2' @ 4 @ V_x ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '</2' @ 1 @ V_x_dot_0 )
      & ( '</2' @ V_x_dot_0 @ 3 ) ) ),
    answer_to(p_question,[])).
