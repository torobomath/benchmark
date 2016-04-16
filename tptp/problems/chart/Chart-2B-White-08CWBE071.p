%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE071
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  180 (  14 equality;  36 variable)
%            Maximal formula depth :   24 (  12 average)
%            Number of connectives :  152 (   0   ~;   0   |;  24   &; 128   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   2   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_s: $real,V_t: $real] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 3.0 @ 1.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( $lesseq @ ( $sum @ V_s @ V_t ) @ 2.0 )
        & ( $lesseq @ 0.0 @ V_s )
        & ( $lesseq @ 0.0 @ V_t )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_s: $real,V_t: $real] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 3.0 @ 1.0 ) )
        & ( V_B
          = ( '2d.point/2' @ 1.0 @ 2.0 ) )
        & ( V_P
          = ( '2d.point/2' @ 'x/0' @ 'y/0' ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( $lesseq @ 0.0 @ V_s )
        & ( $lesseq @ V_s @ 1.0 )
        & ( $lesseq @ 1.0 @ V_t )
        & ( $lesseq @ V_t @ 2.0 )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( $lesseq @ ( $difference @ ( $sum @ 'x/0' @ ( $product @ 2.0 @ 'y/0' ) ) @ 10.0 ) @ 0.0 )
      & ( $lesseq @ 'y/0' @ ( $product @ 2.0 @ 'x/0' ) )
      & ( $lesseq @ 'x/0' @ ( $product @ 3.0 @ 'y/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( $lesseq @ 'y/0' @ ( $product @ 2.0 @ 'x/0' ) )
      & ( $lesseq @ ( $difference @ ( $product @ 2.0 @ 'x/0' ) @ 'y/0' ) @ 5.0 )
      & ( $lesseq @ ( $sum @ 'x/0' @ 5.0 ) @ ( $product @ 3.0 @ 'y/0' ) )
      & ( $lesseq @ ( $product @ 3.0 @ 'y/0' ) @ ( $sum @ 'x/0' @ 10.0 ) ) ) ),
    answer_to(p2_question,[])).

