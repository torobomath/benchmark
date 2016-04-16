%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1984, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ and $d$ be odd integers such that $0 < a < b < c < d$ and
%% $ad = bc$. Prove that if $a + d = 2^k$ and $b + c = 2^m$ for some integers $k$ and
%% $m$, then $a = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   4 equality;  24 variable)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   39 (   0   ~;   0   |;  12   &;  26   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   4   !;   2   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
      ( ( ( $less @ 0 @ V_a )
        & ( $less @ V_a @ V_b )
        & ( $less @ V_b @ V_c )
        & ( $less @ V_c @ V_d )
        & ( 'int.is-odd-number/1' @ V_a )
        & ( 'int.is-odd-number/1' @ V_b )
        & ( 'int.is-odd-number/1' @ V_c )
        & ( 'int.is-odd-number/1' @ V_d )
        & ( ( $product @ V_a @ V_d )
          = ( $product @ V_b @ V_c ) )
        & ? [V_m: $int,V_k: $int] :
            ( ( $is_int @ V_m )
            & ( $is_int @ V_k )
            & ( ( $sum @ V_a @ V_d )
              = ( 'int.^/2' @ 2 @ V_k ) )
            & ( ( $sum @ V_b @ V_c )
              = ( 'int.^/2' @ 2 @ V_m ) ) ) )
     => ( V_a = 1 ) ) )).

