%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R114
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (  10 equality;  28 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   54 (   0   ~;   0   |;  10   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   8   ?;   4   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_R: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape'] :
        ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 7 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 5 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 6 )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K )
        & ( ( '2d.radius-of/1' @ V_K )
          = V_R ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_K: '2d.Shape'] :
        ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = 7 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 5 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_A ) )
          = 6 )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ V_K @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '2d.radius-of/1' @ V_K )
          = V_r ) ) )).

thf(p1_answer,answer,(
    ^ [V_R_dot_0: 'R'] :
      ( V_R_dot_0
      = ( '//2' @ ( '*/2' @ 35 @ ( 'sqrt/1' @ 6 ) ) @ 24 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( V_r_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 6 ) ) @ 3 ) ) ),
    answer_to(p2_question,[])).
