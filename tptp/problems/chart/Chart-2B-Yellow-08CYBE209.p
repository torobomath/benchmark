%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE209
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   26 (   0 equality;   7 variable)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   24 (   0   ~;   0   |;   0   &;  22   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p2,conjecture,(
    ! [V_n: 'Z'] :
      ( ( 'int.<=/2' @ 2 @ V_n )
     => ( 'rat.>/2' @ ( 'rat.^/2' @ ( 'rat.+/2' @ ( 'rat.int->rat/1' @ 1 ) @ ( 'rat.ratio/2' @ 1 @ V_n ) ) @ V_n ) @ ( 'rat.int->rat/1' @ 2 ) ) ) )).

thf(p3,conjecture,(
    ! [V_n: 'Z'] :
      ( ( 'int.<=/2' @ 6 @ V_n )
     => ( 'rat.>/2' @ ( 'rat.^/2' @ ( 'rat.ratio/2' @ V_n @ 2 ) @ V_n ) @ ( 'rat.int->rat/1' @ ( 'int.factorial/1' @ V_n ) ) ) ) )).
