%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P234
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-03

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (   7 equality;  32 variable)
%            Maximal formula depth :   25 (  18 average)
%            Number of connectives :  102 (   0   ~;   0   |;  10   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_A @ V_C ) @ ( '2d.vec/2' @ '2d.origin/0' @ ( '2d.point/2' @ -1 @ 0 ) ) )
        & ( '>/2' @ 0 @ ( '2d.vec-x-coord/1' @ ( '2d.vec/2' @ V_A @ V_B ) ) )
        & ( '</2' @ 0 @ ( '2d.vec-y-coord/1' @ ( '2d.vec/2' @ V_A @ V_B ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) )
          = ( '*/2' @ 30 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) )
          = ( '*/2' @ 30 @ 'Degree/0' ) )
        & ( 500
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( '>/2' @ 0 @ ( '2d.vec-x-coord/1' @ ( '2d.vec/2' @ V_A @ V_D ) ) )
        & ( '>/2' @ 0 @ ( '2d.vec-y-coord/1' @ ( '2d.vec/2' @ V_A @ V_D ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_D @ V_B ) )
          = ( '*/2' @ 60 @ 'Degree/0' ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_D ) )
          = ( '*/2' @ 45 @ 'Degree/0' ) )
        & ( V_ans
          = ( 'cons/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ ( 'cons/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) @ ( 'cons/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_C ) ) @ 'nil/0' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( V_ans_dot_0
      = ( 'cons/2' @ ( '*/2' @ 500 @ ( 'sqrt/1' @ 3 ) ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 500 @ ( 'sqrt/1' @ 6 ) ) @ 3 ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 500 @ ( 'sqrt/1' @ 15 ) ) @ 3 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
