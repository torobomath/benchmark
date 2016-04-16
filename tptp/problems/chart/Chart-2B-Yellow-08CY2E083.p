%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E083
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   51 (   7 equality;  18 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   36 (   1   ~;   3   |;   6   &;  26   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_k: $int] :
      ? [V_P: ( $int > $o ),V_x1: $int,V_x2: $int] :
        ( ( V_P
          = ( ^ [V_x: $int] :
                ( 0
                = ( $sum @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_x @ 2 ) @ ( $uminus @ ( $product @ ( $sum @ V_k @ 4 ) @ V_x ) ) ) @ ( $product @ 2 @ V_k ) ) @ 10 ) ) ) )
        & ( $is_int @ V_k )
        & ( $is_int @ V_x1 )
        & ( $is_int @ V_x2 )
        & ( V_x1 != V_x2 )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x1 )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x2 ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: $int] :
      ( ( V_k_dot_0 = -7 )
      | ( V_k_dot_0 = -5 )
      | ( V_k_dot_0 = 7 )
      | ( V_k_dot_0 = 5 ) ) ),
    answer_to(p_question,[])).

