%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   25 (   1 equality;   8 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   23 (   1   ~;   0   |;   3   &;  18   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_m: 'Z',V_n: 'Z',V_k: 'Z'] :
      ( ( ( 'int.is-natural-number/1' @ V_m )
        & ( 'int.is-natural-number/1' @ V_n )
        & ( 'int.</2' @ V_m @ V_n )
        & ( 'int.is-natural-number/1' @ V_k ) )
     => ( ( '^/2' @ ( 'int->real/1' @ 2 ) @ ( 'int->real/1' @ V_k ) )
       != ( 'seq.sum-from-to/3' @ ( 'seq.arith-seq/2' @ ( 'int->real/1' @ 1 ) @ ( 'int->real/1' @ 1 ) ) @ ( 'seq.index/1' @ V_m ) @ ( 'seq.index/1' @ V_n ) ) ) ) )).
