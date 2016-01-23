%% DOMAIN:    Matrices
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C White Book, Problem 09CWCE033
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   5 equality;  12 variable)
%            Maximal formula depth :   14 (  11 average)
%            Number of connectives :   39 (   0   ~;   2   |;   3   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_mn: 'ListOf' @ 'Z'] :
      ? [V_m: 'Z',V_n: 'Z'] :
        ( ( 'int.</2' @ 0 @ V_m )
        & ( 'int.</2' @ 0 @ V_n )
        & ( 0
          = ( 'int.-/2' @ ( 'int.*/2' @ V_m @ ( 'int.-/2' @ V_m @ 2 ) ) @ ( 'int.*/2' @ ( 'int.-/1' @ V_n ) @ ( 'int.-/2' @ V_n @ 4 ) ) ) )
        & ( V_mn
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_n @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_mn_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_mn_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) )
      | ( V_mn_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_mn_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
