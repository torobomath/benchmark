%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P082
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   5 equality;  26 variable)
%            Maximal formula depth :   15 (  14 average)
%            Number of connectives :   58 (   0   ~;   0   |;  13   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-integer/1' @ V_x )
        & ( 'int.is-integer/1' @ V_y )
        & ( 'int.</2' @ 0 @ V_x )
        & ( 'int.</2' @ V_x @ V_y )
        & ( 'int.is-prime/1' @ V_m )
        & ( 'int.<=/2' @ 3 @ V_m )
        & ( ( 'rat.ratio/2' @ 2 @ V_m )
          = ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ V_y ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 'int.is-prime/1' @ V_m )
      & ( 'int.<=/2' @ 3 @ V_m )
      & ( 'int.</2' @ 0 @ V_x )
      & ( 'int.</2' @ V_x @ V_y )
      & ( V_x
        = ( 'int.div/2' @ ( 'int.+/2' @ V_m @ 1 ) @ 2 ) )
      & ( V_y
        = ( 'int.div/2' @ ( 'int.*/2' @ V_m @ ( 'int.+/2' @ V_m @ 1 ) ) @ 2 ) ) ) ),
    answer_to(p_question,[])).
