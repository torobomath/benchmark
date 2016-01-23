%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE024
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   5 equality;  24 variable)
%            Maximal formula depth :   22 (  16 average)
%            Number of connectives :   43 (   0   ~;   0   |;  13   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_C3: '2d.Shape',V_C: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( '2d.circle-type/1' @ V_C3 )
        & ( '2d.circle-type/1' @ V_C )
        & ( ( '2d.radius-of/1' @ V_C1 )
          = V_a )
        & ( ( '2d.radius-of/1' @ V_C2 )
          = V_a )
        & ( ( '2d.radius-of/1' @ V_C3 )
          = ( '*/2' @ 2 @ V_a ) )
        & ( ( '2d.radius-of/1' @ V_C )
          = 1 )
        & ( '2d.is-inscribed-in/2' @ V_C1 @ V_C )
        & ( '2d.is-inscribed-in/2' @ V_C2 @ V_C )
        & ( '2d.is-inscribed-in/2' @ V_C3 @ V_C )
        & ( '2d.is-circumscribed-about/2' @ V_C1 @ V_C2 )
        & ( '2d.is-circumscribed-about/2' @ V_C2 @ V_C3 )
        & ( '2d.is-circumscribed-about/2' @ V_C3 @ V_C1 ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( V_a_dot_0
      = ( '//2' @ ( '-/2' @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 2 ) ) @ 5 ) @ 2 ) ) ),
    answer_to(p_question,[])).
