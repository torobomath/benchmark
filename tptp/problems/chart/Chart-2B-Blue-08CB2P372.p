%% DOMAIN:    Differentiation and its Applications
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P372
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   90 (   5 equality;  25 variable)
%            Maximal formula depth :   25 (  18 average)
%            Number of connectives :   80 (   0   ~;   1   |;  10   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    2 func;   10 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_P: ( $int > $o ),V_x1: $int,V_x2: $int,V_x3: $int,V_k: $int] :
        ( ( V_P
          = ( ^ [V_x: $int] :
                ( 0
                = ( $sum @ ( $sum @ ( 'int.^/2' @ V_x @ 3 ) @ ( $product @ -13 @ V_x ) ) @ V_k ) ) ) )
        & ( $is_int @ V_x1 )
        & ( $is_int @ V_x2 )
        & ( $is_int @ V_x3 )
        & ( $less @ V_x1 @ V_x2 )
        & ( $less @ V_x2 @ V_x3 )
        & ( $is_int @ V_k )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x1 )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x2 )
        & ( 'PLamApp/2' @ $int @ V_P @ V_x3 )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_k @ ( 'cons/2' @ $int @ V_x1 @ ( 'cons/2' @ $int @ V_x2 @ ( 'cons/2' @ $int @ V_x3 @ ( 'nil/0' @ $int ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 12 @ ( 'cons/2' @ $int @ -4 @ ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ -12 @ ( 'cons/2' @ $int @ -3 @ ( 'cons/2' @ $int @ -1 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

