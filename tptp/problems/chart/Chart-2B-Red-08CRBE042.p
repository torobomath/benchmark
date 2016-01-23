%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE042
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   30 (   1 equality;  10 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   27 (   0   ~;   0   |;   4   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    4 (   0 sgn;   2   !;   2   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_m: 'Z',V_k: 'Z'] :
      ( ( ( 'int.is-natural-number/1' @ V_m )
        & ( 'int.is-natural-number/1' @ V_k ) )
     => ? [V_l: 'Z',V_h: 'Z'] :
          ( ( 'int.is-natural-number/1' @ V_l )
          & ( 'int.is-natural-number/1' @ V_h )
          & ( 'int.</2' @ V_l @ V_h )
          & ( ( 'int->real/1' @ ( 'int.*/2' @ V_m @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_k ) @ 1 ) ) )
            = ( 'seq.sum-from-to/3' @ ( 'seq.arith-seq/2' @ ( 'int->real/1' @ 1 ) @ ( 'int->real/1' @ 1 ) ) @ ( 'seq.index/1' @ V_l ) @ ( 'seq.index/1' @ V_h ) ) ) ) ) )).
