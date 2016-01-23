%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1C035
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   32 (   6 equality;  10 variable)
%            Maximal formula depth :    8 (   6 average)
%            Number of connectives :   16 (   0   ~;   0   |;   4   &;  12   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_Sp: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_Sp )
        & ( ( '3d.radius-of/1' @ V_Sp )
          = 6 )
        & ( ( '3d.volume-of/1' @ V_Sp )
          = V_V ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_Sp: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_Sp )
        & ( ( '3d.radius-of/1' @ V_Sp )
          = 6 )
        & ( ( '3d.area-of/1' @ V_Sp )
          = V_S ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ 288 @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ 144 @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).
