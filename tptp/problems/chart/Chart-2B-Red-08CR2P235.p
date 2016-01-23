%% DOMAIN:    Exponential and Logarithm Function
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P235
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   4 equality;  20 variable)
%            Maximal formula depth :   19 (  11 average)
%            Number of connectives :   58 (   0   ~;   0   |;   4   &;  54   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   0   ?;  10   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_n0: 'Z'] :
                ( ( 'int.is-natural-number/1' @ V_n0 )
                & ( 1
                  = ( 'int.^/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( 'int.*/2' @ -3 @ V_n0 ) ) @ 3 ) @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( 'int.*/2' @ -8 @ V_n0 ) ) @ 15 ) ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_n ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'maximum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_n0: 'Z'] :
                ( ( 'int.is-natural-number/1' @ V_n0 )
                & ( 1
                  = ( 'int.^/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( 'int.*/2' @ -3 @ V_n0 ) ) @ 3 ) @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( 'int.*/2' @ -8 @ V_n0 ) ) @ 15 ) ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_n ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 1 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 5 ) ),
    answer_to(p2_question,[])).
