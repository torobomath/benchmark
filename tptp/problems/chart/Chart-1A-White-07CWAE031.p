%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE031
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  162 (  15 equality;  67 variable)
%            Maximal formula depth :   24 (  14 average)
%            Number of connectives :  135 (   9   ~;   0   |;  40   &;  86   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;   9   ?;   9   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_n_dot_0: 'Z'] :
            ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
              ( ( V_n_dot_0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 100 @ V_x ) @ ( 'int.*/2' @ 10 @ V_y ) ) @ V_z ) )
              & ( 'int.is-integer/1' @ V_x )
              & ( 'int.<=/2' @ 0 @ V_x )
              & ( 'int.<=/2' @ V_x @ 7 )
              & ( 'int.is-integer/1' @ V_y )
              & ( 'int.<=/2' @ 0 @ V_y )
              & ( 'int.<=/2' @ V_y @ 7 )
              & ( 'int.is-integer/1' @ V_z )
              & ( 'int.<=/2' @ 0 @ V_z )
              & ( 'int.<=/2' @ V_z @ 7 )
              & ( V_x != V_y )
              & ( V_y != V_z )
              & ( V_z != V_x )
              & ( 'int.>=/2' @ V_n_dot_0 @ 100 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_n_dot_0: 'Z'] :
            ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
              ( ( V_n_dot_0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 100 @ V_x ) @ ( 'int.*/2' @ 10 @ V_y ) ) @ V_z ) )
              & ( 'int.is-integer/1' @ V_x )
              & ( 'int.<=/2' @ 0 @ V_x )
              & ( 'int.<=/2' @ V_x @ 7 )
              & ( 'int.is-integer/1' @ V_y )
              & ( 'int.<=/2' @ 0 @ V_y )
              & ( 'int.<=/2' @ V_y @ 7 )
              & ( 'int.is-integer/1' @ V_z )
              & ( 'int.<=/2' @ 0 @ V_z )
              & ( 'int.<=/2' @ V_z @ 7 )
              & ( V_x != V_y )
              & ( V_y != V_z )
              & ( V_z != V_x )
              & ( 'int.is-odd-number/1' @ V_x )
              & ( 'int.is-odd-number/1' @ V_z ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_n_dot_0: 'Z'] :
            ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
              ( ( V_n_dot_0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 100 @ V_x ) @ ( 'int.*/2' @ 10 @ V_y ) ) @ V_z ) )
              & ( 'int.is-integer/1' @ V_x )
              & ( 'int.<=/2' @ 0 @ V_x )
              & ( 'int.<=/2' @ V_x @ 7 )
              & ( 'int.is-integer/1' @ V_y )
              & ( 'int.<=/2' @ 0 @ V_y )
              & ( 'int.<=/2' @ V_y @ 7 )
              & ( 'int.is-integer/1' @ V_z )
              & ( 'int.<=/2' @ 0 @ V_z )
              & ( 'int.<=/2' @ V_z @ 7 )
              & ( V_x != V_y )
              & ( V_y != V_z )
              & ( V_z != V_x )
              & ( 'int.is-odd-number/1' @ V_n_dot_0 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_1: 'Z'] : ( V_n_dot_1 = 180 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_1: 'Z'] : ( V_n_dot_1 = 30 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_n_dot_1: 'Z'] : ( V_n_dot_1 = 75 ) ),
    answer_to(p3_question,[])).
