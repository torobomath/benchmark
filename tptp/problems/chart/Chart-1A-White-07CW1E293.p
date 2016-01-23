%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E293
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (  15 equality;  30 variable)
%            Maximal formula depth :   12 (  11 average)
%            Number of connectives :   79 (   0   ~;   0   |;   9   &;  67   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   15 (   0 sgn;   9   !;   0   ?;   6   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ! [V_V: 'R',V_A: 'R',V_S: '3d.Shape'] :
        ( ( ( '3d.sphere-type/1' @ V_S )
          & ( 2
            = ( '3d.radius-of/1' @ V_S ) )
          & ( V_V
            = ( '3d.volume-of/1' @ V_S ) )
          & ( V_A
            = ( '3d.area-of/1' @ V_S ) ) )
       => ( V_answer
          = ( 'cons/2' @ V_V @ ( 'cons/2' @ V_A @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ! [V_V: 'R',V_A: 'R',V_S: '3d.Shape'] :
        ( ( ( '3d.sphere-type/1' @ V_S )
          & ( ( 'sqrt/1' @ 5 )
            = ( '3d.radius-of/1' @ V_S ) )
          & ( V_V
            = ( '3d.volume-of/1' @ V_S ) )
          & ( V_A
            = ( '3d.area-of/1' @ V_S ) ) )
       => ( V_answer
          = ( 'cons/2' @ V_V @ ( 'cons/2' @ V_A @ 'nil/0' ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ! [V_V: 'R',V_A: 'R',V_S: '3d.Shape'] :
        ( ( ( '3d.sphere-type/1' @ V_S )
          & ( 12
            = ( '*/2' @ 2 @ ( '3d.radius-of/1' @ V_S ) ) )
          & ( V_V
            = ( '3d.volume-of/1' @ V_S ) )
          & ( V_A
            = ( '3d.area-of/1' @ V_S ) ) )
       => ( V_answer
          = ( 'cons/2' @ V_V @ ( 'cons/2' @ V_A @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '*/2' @ ( '//2' @ 32 @ 3 ) @ 'Pi/0' ) @ ( 'cons/2' @ ( '*/2' @ 16 @ 'Pi/0' ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '*/2' @ ( '//2' @ ( '*/2' @ 20 @ ( 'sqrt/1' @ 5 ) ) @ 3 ) @ 'Pi/0' ) @ ( 'cons/2' @ ( '*/2' @ 20 @ 'Pi/0' ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '*/2' @ 288 @ 'Pi/0' ) @ ( 'cons/2' @ ( '*/2' @ 144 @ 'Pi/0' ) @ 'nil/0' ) ) ) ),
    answer_to(p3_question,[])).
