%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P340
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  155 (   9 equality;  33 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :  135 (   0   ~;   0   |;   6   &; 129   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   20 (   2 sgn;   0   !;   6   ?;  12   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_f1: 'R' > 'R',V_f2: 'R' > 'R',V_S: 'Z' > 'R'] :
        ( ( V_f1
          = ( ^ [V_x_dot_1: 'R'] :
                ( 'exp/1' @ ( '-/1' @ V_x_dot_1 ) ) ) )
        & ( V_f2
          = ( ^ [V_x_dot_0: 'R'] :
                ( '*/2' @ ( 'exp/1' @ ( '-/1' @ V_x_dot_0 ) ) @ ( 'abs/1' @ ( 'cos/1' @ V_x_dot_0 ) ) ) ) )
        & ( V_S
          = ( ^ [V_n_dot_0: 'Z'] :
                ( 'integral/3'
                @ ^ [V_x: 'R'] :
                    ( '-/2' @ ( 'LamApp/2' @ V_f1 @ V_x ) @ ( 'LamApp/2' @ V_f2 @ V_x ) )
                @ ( '*/2' @ ( '-/2' @ ( 'int->real/1' @ V_n_dot_0 ) @ 1 ) @ 'Pi/0' )
                @ ( '*/2' @ ( 'int->real/1' @ V_n_dot_0 ) @ 'Pi/0' ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ ( 'LamApp/2' @ V_S @ 1 ) @ ( 'cons/2' @ ( 'LamApp/2' @ V_S @ V_n ) @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_lim: 'R'] :
      ? [V_f1: 'R' > 'R',V_f2: 'R' > 'R',V_S: 'Z' > 'R'] :
        ( ( V_f1
          = ( ^ [V_x_dot_1: 'R'] :
                ( 'exp/1' @ ( '-/1' @ V_x_dot_1 ) ) ) )
        & ( V_f2
          = ( ^ [V_x_dot_0: 'R'] :
                ( '*/2' @ ( 'exp/1' @ ( '-/1' @ V_x_dot_0 ) ) @ ( 'abs/1' @ ( 'cos/1' @ V_x_dot_0 ) ) ) ) )
        & ( V_S
          = ( ^ [V_n: 'Z'] :
                ( 'integral/3'
                @ ^ [V_x: 'R'] :
                    ( '-/2' @ ( 'LamApp/2' @ V_f1 @ V_x ) @ ( 'LamApp/2' @ V_f2 @ V_x ) )
                @ ( '*/2' @ ( '-/2' @ ( 'int->real/1' @ V_n ) @ 1 ) @ 'Pi/0' )
                @ ( '*/2' @ ( 'int->real/1' @ V_n ) @ 'Pi/0' ) ) ) )
        & ( 'seq.is-infinite-sum-of/2' @ V_lim @ ( 'seq.seq/1' @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '+/2' @ ( '+/2' @ 1 @ ( '*/2' @ -2 @ ( 'exp/1' @ ( '//2' @ ( '-/1' @ 'Pi/0' ) @ 2 ) ) ) ) @ ( '-/1' @ ( 'exp/1' @ ( '-/1' @ 'Pi/0' ) ) ) ) ) @ ( 'cons/2' @ ( '*/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( 'exp/1' @ ( '*/2' @ ( '-/1' @ ( '-/2' @ ( 'int->real/1' @ V_n ) @ 1 ) ) @ 'Pi/0' ) ) ) @ ( '+/2' @ ( '+/2' @ 1 @ ( '*/2' @ -2 @ ( 'exp/1' @ ( '-/1' @ ( '//2' @ 'Pi/0' @ 2 ) ) ) ) ) @ ( '-/1' @ ( 'exp/1' @ ( '-/1' @ 'Pi/0' ) ) ) ) ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_lim_dot_0: 'R'] :
      ( V_lim_dot_0
      = ( '//2' @ ( '+/2' @ ( '+/2' @ ( 'exp/1' @ 'Pi/0' ) @ ( '*/2' @ -2 @ ( 'exp/1' @ ( '//2' @ 'Pi/0' @ 2 ) ) ) ) @ -1 ) @ ( '+/2' @ ( '*/2' @ 2 @ ( 'exp/1' @ 'Pi/0' ) ) @ -1 ) ) ) ),
    answer_to(p2_question,[])).
