%% DOMAIN:    Matrices
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C White Book, Problem 09CWCE033
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   63 (   5 equality;  12 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   53 (   0   ~;   2   |;   3   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_mn: ( 'ListOf' @ $int )] :
      ? [V_m: $int,V_n: $int] :
        ( ( $less @ 0 @ V_m )
        & ( $less @ 0 @ V_n )
        & ( 0
          = ( $difference @ ( $product @ V_m @ ( $difference @ V_m @ 2 ) ) @ ( $product @ ( $uminus @ V_n ) @ ( $difference @ V_n @ 4 ) ) ) )
        & ( V_mn
          = ( 'cons/2' @ $int @ V_m @ ( 'cons/2' @ $int @ V_n @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_mn_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_mn_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_mn_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_mn_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p_question,[])).

