%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E077
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   7 equality;  18 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   30 (   1   ~;   3   |;   6   &;  20   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_a: $int] :
      ? [V_P: ( $int > $o ),V_alpha: $int,V_beta: $int] :
        ( ( V_P
          = ( ^ [V_x: $int] :
                ( 0
                = ( $sum @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_x @ 2 ) @ ( $product @ ( $sum @ 2 @ V_a ) @ V_x ) ) @ 3 ) @ ( $uminus @ V_a ) ) ) ) )
        & ( $is_int @ V_a )
        & ( $is_int @ V_alpha )
        & ( $is_int @ V_beta )
        & ( V_alpha != V_beta )
        & ( V_P @ V_alpha )
        & ( V_P @ V_beta ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $int] :
      ( ( V_a_dot_0 = -11 )
      | ( V_a_dot_0 = -9 )
      | ( V_a_dot_0 = 1 )
      | ( V_a_dot_0 = 3 ) ) ),
    answer_to(p_question,[])).

