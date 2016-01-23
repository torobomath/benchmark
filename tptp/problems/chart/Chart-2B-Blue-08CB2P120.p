%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P120
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  156 (  14 equality;  61 variable)
%            Maximal formula depth :   28 (  18 average)
%            Number of connectives :  129 (   3   ~;   0   |;  16   &; 109   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   28 (   2 sgn;   8   !;  10   ?;   4   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_BC: 'ListOf' @ 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_Bx: 'R',V_By: 'R',V_Cx: 'R',V_Cy: 'R'] :
        ( ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
        & ( V_l2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_m @ 'nil/0' ) ) ) ) )
        & ( V_m != 1 )
        & ( V_A
          = ( '2d.point/2' @ V_a @ V_b ) )
        & ( V_B
          = ( '2d.point/2' @ V_Bx @ V_By ) )
        & ( V_C
          = ( '2d.point/2' @ V_Cx @ V_Cy ) )
        & ( '2d.line-symmetry/3' @ V_A @ V_B @ V_l1 )
        & ( '2d.line-symmetry/3' @ V_B @ V_C @ V_l2 )
        & ( '2d.line-symmetry/3' @ V_C @ V_D @ V_l1 )
        & ( V_BC
          = ( 'cons/2' @ V_Bx @ ( 'cons/2' @ V_By @ ( 'cons/2' @ V_Cx @ ( 'cons/2' @ V_Cy @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
        ( ( V_m != 1 )
        & ! [V_l1: '2d.Shape',V_l2: '2d.Shape',V_A: '2d.Point',V_a: 'R',V_b: 'R',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
            ( ( ( V_l1
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
              & ( V_l2
                = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_m @ 'nil/0' ) ) ) ) )
              & ( V_A
                = ( '2d.point/2' @ V_a @ V_b ) )
              & ( '2d.line-symmetry/3' @ V_A @ V_B @ V_l1 )
              & ( '2d.line-symmetry/3' @ V_B @ V_C @ V_l2 )
              & ( '2d.line-symmetry/3' @ V_C @ V_D @ V_l1 ) )
           => ( '2d.line-symmetry/3' @ V_A @ V_D @ V_l2 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_BC_dot_0: 'ListOf' @ 'R'] :
      ( ( V_m != 1 )
      & ( V_BC_dot_0
        = ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ V_m @ V_a ) ) @ ( '*/2' @ ( '-/2' @ 1 @ ( '^/2' @ V_m @ 2 ) ) @ V_b ) ) @ ( '+/2' @ ( '^/2' @ V_m @ 2 ) @ 1 ) ) @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ ( '*/2' @ ( '-/2' @ ( '^/2' @ V_m @ 2 ) @ 1 ) @ V_a ) @ ( '*/2' @ 2 @ ( '*/2' @ V_m @ V_b ) ) ) @ ( '+/2' @ ( '^/2' @ V_m @ 2 ) @ 1 ) ) @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = -1 ) ),
    answer_to(p2_question,[])).
