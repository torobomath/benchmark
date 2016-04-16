%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR094
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   2 equality;  37 variable)
%            Maximal formula depth :   25 (  25 average)
%            Number of connectives :   67 (   1   ~;   0   |;  10   &;  55   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_Cir: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point'] :
      ( ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( 'pairwise-distinct/1' @ '2d.Point' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_E )
        & ( V_F != V_E )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_E @ V_F ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_E @ V_F ) @ ( '2d.line/2' @ V_A @ V_D ) @ V_F )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_F @ V_G ) @ V_Cir @ V_G ) )
     => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_G ) )
        = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_F ) ) ) ) )).

