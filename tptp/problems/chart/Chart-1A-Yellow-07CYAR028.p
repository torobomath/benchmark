%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR028
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   3 equality;  15 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   31 (   0   ~;   0   |;   7   &;  24   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_triple: 'ListOf' @ 'Z'] :
            ? [V_x: 'Z',V_y: 'Z',V_z: 'Z'] :
              ( ( V_triple
                = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) )
              & ( 'int.is-integer/1' @ V_x )
              & ( 'int.<=/2' @ 0 @ V_x )
              & ( 'int.is-integer/1' @ V_y )
              & ( 'int.<=/2' @ 0 @ V_y )
              & ( 'int.is-integer/1' @ V_z )
              & ( 'int.<=/2' @ 0 @ V_z )
              & ( 7
                = ( 'int.+/2' @ ( 'int.+/2' @ V_x @ V_y ) @ V_z ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 36 ) ),
    answer_to(p_question,[])).
