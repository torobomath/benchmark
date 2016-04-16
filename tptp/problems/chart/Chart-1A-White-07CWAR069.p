%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR069
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   31 (   0 equality;  16 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   30 (   0   ~;   0   |;   2   &;  27   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_G1: '2d.Point',V_G2: '2d.Point'] :
      ( ( ( '2d.points-same-side/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( 'cons/2' @ '2d.Point' @ V_P @ ( 'cons/2' @ '2d.Point' @ V_Q @ ( 'nil/0' @ '2d.Point' ) ) ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G1 @ ( '2d.triangle/3' @ V_P @ V_A @ V_B ) )
        & ( '2d.is-center-of-gravity-of/2' @ V_G2 @ ( '2d.triangle/3' @ V_Q @ V_A @ V_B ) ) )
     => ( '2d.parallel/2' @ ( '2d.line/2' @ V_G1 @ V_G2 ) @ ( '2d.line/2' @ V_P @ V_Q ) ) ) )).

