%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP031
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   23 (   2 equality;   5 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   17 (   0   ~;   0   |;   1   &;  16   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 0
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 6 @ ( 'int.combination/2' @ V_n @ 3 ) ) @ ( 'int.*/2' @ ( 'int.-/1' @ V_n ) @ ( 'int.permutation/2' @ V_n @ 2 ) ) ) @ 144 ) )
        & ( 'int.>=/2' @ V_n @ 3 ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 9 ) ),
    answer_to(p_question,[])).
