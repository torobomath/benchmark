%% DOMAIN:    Quadratic Functions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P181
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   6 equality;  11 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   35 (   0   ~;   5   |;   1   &;  29   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    2 func;   10 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $is_int @ V_x )
        & ( $lesseq @ ( $sum @ ( $sum @ ( 'int.^/2' @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_x @ 2 ) @ ( $product @ 2 @ V_x ) ) @ -8 ) @ 2 ) @ ( $product @ -2 @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_x @ 2 ) @ ( $product @ 2 @ V_x ) ) @ -8 ) ) ) @ -35 ) @ 0 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $int] :
      ( ( V_x_dot_0 = -5 )
      | ( V_x_dot_0 = -4 )
      | ( V_x_dot_0 = -3 )
      | ( V_x_dot_0 = 1 )
      | ( V_x_dot_0 = 2 )
      | ( V_x_dot_0 = 3 ) ) ),
    answer_to(p_question,[])).

