%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E263
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   6 equality;  19 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   41 (   0   ~;   0   |;   4   &;  36   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    6 (   0 sgn;   4   !;   0   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_PC: 'R'] :
      ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_P )
          & ( 80
            = ( '3d.distance/2' @ V_A @ V_B ) )
          & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_P @ V_A @ V_C ) )
            = ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) )
          & ( ( 'cos/1' @ ( '*/2' @ 2 @ ( '3d.rad-of-angle/1' @ ( '3d.angle/3' @ V_P @ V_A @ V_B ) ) ) )
            = ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) ) )
          & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_P @ V_B @ V_A ) )
            = ( '//2' @ 1 @ 2 ) ) )
       => ( V_PC
          = ( '3d.distance/2' @ V_P @ V_C ) ) ) )).

thf(p_answer,answer,(
    ^ [V_PC_dot_0: 'R'] :
      ( V_PC_dot_0
      = ( '*/2' @ 20 @ ( 'sqrt/1' @ 6 ) ) ) ),
    answer_to(p_question,[])).
