%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBE071
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  164 (  14 equality;  62 variable)
%            Maximal formula depth :   24 (  17 average)
%            Number of connectives :  136 (   0   ~;   0   |;  24   &; 112   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;  12   ?;   4   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_s: 'R',V_t: 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 3 @ 1 ) )
        & ( V_B
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '<=/2' @ ( '+/2' @ V_s @ V_t ) @ 2 )
        & ( '<=/2' @ 0 @ V_s )
        & ( '<=/2' @ 0 @ V_t )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_s: 'R',V_t: 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_A
          = ( '2d.point/2' @ 3 @ 1 ) )
        & ( V_B
          = ( '2d.point/2' @ 1 @ 2 ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '<=/2' @ 0 @ V_s )
        & ( '<=/2' @ V_s @ 1 )
        & ( '<=/2' @ 1 @ V_t )
        & ( '<=/2' @ V_t @ 2 )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ V_O @ V_A ) ) @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ V_O @ V_B ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( '<=/2' @ ( '-/2' @ ( '+/2' @ V_x @ ( '*/2' @ 2 @ V_y ) ) @ 10 ) @ 0 )
      & ( '<=/2' @ V_y @ ( '*/2' @ 2 @ V_x ) )
      & ( '<=/2' @ V_x @ ( '*/2' @ 3 @ V_y ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( '<=/2' @ V_y @ ( '*/2' @ 2 @ V_x ) )
      & ( '<=/2' @ ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ V_y ) @ 5 )
      & ( '<=/2' @ ( '+/2' @ V_x @ 5 ) @ ( '*/2' @ 3 @ V_y ) )
      & ( '<=/2' @ ( '*/2' @ 3 @ V_y ) @ ( '+/2' @ V_x @ 10 ) ) ) ),
    answer_to(p2_question,[])).
