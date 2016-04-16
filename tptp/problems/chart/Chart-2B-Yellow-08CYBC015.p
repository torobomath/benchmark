%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBC015
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   30 (   3 equality;  13 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   23 (   0   ~;   0   |;   2   &;  20   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_O: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_a: '2d.Vector',V_b: '2d.Vector'] :
      ( ( ( V_a
          = ( '2d.vec/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '2d.vec/2' @ V_O @ V_B ) )
        & ( ( '2d.vec/2' @ V_O @ V_P )
          = ( '2d.sv*/2' @ ( $quotient @ 1.0 @ 5.0 ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ 3.0 @ V_a ) @ ( '2d.sv*/2' @ 2.0 @ V_b ) ) ) ) )
     => ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) ) ) )).

