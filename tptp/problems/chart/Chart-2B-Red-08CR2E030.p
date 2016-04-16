%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E030
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   80 (   4 equality;  25 variable)
%            Maximal formula depth :   25 (  17 average)
%            Number of connectives :   72 (   0   ~;   0   |;  10   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   2 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_P: ( $int > $o ),V_x1: $int,V_x2: $int,V_x3: $int,V_a: $int] :
        ( ( V_P
          = ( ^ [V_x: $int] :
                ( 0
                = ( $sum @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_x @ 3 ) @ ( $product @ -12 @ ( 'int.^/2' @ V_x @ 2 ) ) ) @ ( $product @ 47 @ V_x ) ) @ V_a ) ) ) )
        & ( $less @ V_x1 @ V_x2 )
        & ( $less @ V_x2 @ V_x3 )
        & ( $is_int @ V_x1 )
        & ( $is_int @ V_x2 )
        & ( $is_int @ V_x3 )
        & ( $is_int @ V_a )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x1 )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x2 )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x3 )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_x1 @ ( 'cons/2' @ $int @ V_x2 @ ( 'cons/2' @ $int @ V_x3 @ ( 'nil/0' @ $int ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $int @ -60 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 5 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p_question,[])).

