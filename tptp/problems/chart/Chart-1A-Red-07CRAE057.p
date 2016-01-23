%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE057
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   5 equality;  29 variable)
%            Maximal formula depth :   25 (  16 average)
%            Number of connectives :   43 (   0   ~;   0   |;   7   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   13 (   3 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_PC: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_g: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_g )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ V_g @ V_C )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_a )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) )
          = V_b )
        & ( '2d.on/2' @ V_P @ V_g )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_angleAPB: 'R'] :
              ? [V_P_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_P_dot_0 @ V_g )
                & ( V_angleAPB
                  = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P_dot_0 @ V_B ) ) ) ) )
          @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_B ) ) )
        & ( V_PC
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_PC_dot_0: 'R'] :
      ( V_PC_dot_0
      = ( 'sqrt/1' @ ( '*/2' @ V_b @ ( '+/2' @ V_b @ V_a ) ) ) ) ),
    answer_to(p_question,[])).
