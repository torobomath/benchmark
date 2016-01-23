%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P268
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   57 (   3 equality;  28 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :   49 (   0   ~;   0   |;   5   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   12 (   2 sgn;   0   !;   7   ?;   3   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_minL: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_L: 'R'] :
            ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point',V_R: '3d.Point'] :
              ( ( '3d.is-regular-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
              & ( '3d.on/2' @ V_P @ ( '3d.seg/2' @ V_A @ V_B ) )
              & ( '3d.on/2' @ V_Q @ ( '3d.seg/2' @ V_B @ V_C ) )
              & ( '3d.on/2' @ V_R @ ( '3d.seg/2' @ V_O @ V_C ) )
              & ( V_a
                = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) ) )
              & ( V_L
                = ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_O @ V_P ) ) @ ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_Q ) ) @ ( '+/2' @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_Q @ V_R ) ) @ ( '3d.length-of/1' @ ( '3d.seg/2' @ V_R @ V_A ) ) ) ) ) ) ) )
        @ V_minL ) )).

thf(p_answer,answer,(
    ^ [V_minL_dot_0: 'R'] :
      ( V_minL_dot_0
      = ( '*/2' @ ( 'sqrt/1' @ 7 ) @ V_a ) ) ),
    answer_to(p_question,[])).
