%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 2012, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-17
%%
%% <PROBLEM-TEXT>
%% Let n >= 3 be an integer, and let a2, a3, ..., a_n be positive real numbers
%% such that  a2 a3 ... a_n = 1. Prove that
%% (1 + a2)^2 (1 + a3)^2 ... (1 + a_n)^n > n^n.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   42 (   1 equality;  13 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   39 (   0   ~;   0   |;   3   &;  34   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    4 (   0 sgn;   3   !;   0   ?;   1   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_n: 'Z',V_a: 'seq.Seq'] :
      ( ( ( 'int.>=/2' @ V_n @ 3 )
        & ! [V_k: 'Z'] :
            ( ( ( 'int.<=/2' @ 2 @ V_k )
              & ( 'int.<=/2' @ V_k @ V_n ) )
           => ( '</2' @ 0 @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k ) ) ) )
        & ( ( 'seq.prod-from-to/3' @ V_a @ ( 'seq.index/1' @ 2 ) @ ( 'seq.index/1' @ V_n ) )
          = 1 ) )
     => ( '>/2'
        @ ( 'seq.prod-from-to/3'
          @ ( 'seq.seq/1'
            @ ^ [V_k_dot_0: 'Z'] :
                ( '^/2' @ ( '+/2' @ 1 @ ( 'seq.nth-term-of/2' @ V_a @ ( 'seq.index/1' @ V_k_dot_0 ) ) ) @ 2 ) )
          @ ( 'seq.index/1' @ 2 )
          @ ( 'seq.index/1' @ V_n ) )
        @ ( 'int->real/1' @ ( 'int.^/2' @ V_n @ V_n ) ) ) ) )).
