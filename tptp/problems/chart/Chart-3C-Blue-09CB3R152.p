%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R152
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   3 equality;  10 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   36 (   0   ~;   0   |;   2   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_lim: 'R'] :
      ? [V_f: 'R' > 'R',V_S: 'Z' > 'R'] :
        ( ( V_f
          = ( ^ [V_x: 'R'] :
                ( '*/2' @ ( 'exp/1' @ ( '-/1' @ V_x ) ) @ ( 'sin/1' @ V_x ) ) ) )
        & ( V_S
          = ( ^ [V_n: 'Z'] :
                ( 'integral/3' @ V_f @ ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ 0 ) @ 'Pi/0' ) @ ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ 1 ) @ 'Pi/0' ) ) ) )
        & ( 'seq.is-infinite-sum-of/2' @ V_lim @ ( 'seq.seq/1' @ V_S ) ) ) )).

thf(p_answer,answer,(
    ^ [V_lim_dot_0: 'R'] :
      ( V_lim_dot_0
      = ( '//2' @ ( 'exp/1' @ 'Pi/0' ) @ ( '*/2' @ 2 @ ( '-/2' @ ( 'exp/1' @ 'Pi/0' ) @ 1 ) ) ) ) ),
    answer_to(p_question,[])).
