%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-13
%%
%% <PROBLEM-TEXT>
%% For the different four complex numbers $z_1$, $z_2$, $z_3$, and
%% $z_4$, let $w=\frac{(z_1 - z_2)(z_2 - z_4)}{(z_1 - z_4)(z_2 - z_3)}$.
%% Then, prove the following:
%%
%% (1) The necessary and sufficient condition for the complex number $z$
%% to be on the unit circle is $\overline{z}=\frac{1}{z}$.
%%
%% (2) If $z_1$, $z_2$, $z_3$, and $z_4$ are on the unit circle, $w$ is
%% a real number.
%%
%% (3) If $z_1$, $z_2$, and $z_3$ are on the unit circle and $w$ is a
%% real number, $z_4$ is on the unit circle.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  152 (   5 equality;  53 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :  140 (   1   ~;   0   |;  12   &; 123   @)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;  16   !;   0   ?;   0   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    0 func;    2 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_z: 'complex.Complex',V_w: 'complex.Complex',V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_z3: 'complex.Complex',V_z4: 'complex.Complex'] :
      ( ( ( 'pairwise-distinct/1' @ 'complex.Complex' @ ( 'cons/2' @ 'complex.Complex' @ V_z1 @ ( 'cons/2' @ 'complex.Complex' @ V_z2 @ ( 'cons/2' @ 'complex.Complex' @ V_z3 @ ( 'cons/2' @ 'complex.Complex' @ V_z4 @ ( 'nil/0' @ 'complex.Complex' ) ) ) ) ) )
        & ( V_w
          = ( 'complex.//2' @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z1 @ V_z3 ) @ ( 'complex.-/2' @ V_z2 @ V_z4 ) ) @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z1 @ V_z4 ) @ ( 'complex.-/2' @ V_z2 @ V_z3 ) ) ) ) )
     => ( ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z ) @ '2d.unit-circle/0' )
      <=> ( ( ( 'complex.conjugate/1' @ V_z )
            = ( 'complex.//2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ V_z ) )
          & ( V_z
           != ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_z3: 'complex.Complex',V_z4: 'complex.Complex',V_w: 'complex.Complex'] :
      ( ( ( 'pairwise-distinct/1' @ 'complex.Complex' @ ( 'cons/2' @ 'complex.Complex' @ V_z1 @ ( 'cons/2' @ 'complex.Complex' @ V_z2 @ ( 'cons/2' @ 'complex.Complex' @ V_z3 @ ( 'cons/2' @ 'complex.Complex' @ V_z4 @ ( 'nil/0' @ 'complex.Complex' ) ) ) ) ) )
        & ( V_w
          = ( 'complex.//2' @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z1 @ V_z3 ) @ ( 'complex.-/2' @ V_z2 @ V_z4 ) ) @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z1 @ V_z4 ) @ ( 'complex.-/2' @ V_z2 @ V_z3 ) ) ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z3 ) @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z4 ) @ '2d.unit-circle/0' ) )
     => ( 'complex.real-number/1' @ V_w ) ) )).

thf(p3,conjecture,(
    ! [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_z3: 'complex.Complex',V_z4: 'complex.Complex',V_w: 'complex.Complex'] :
      ( ( ( 'pairwise-distinct/1' @ 'complex.Complex' @ ( 'cons/2' @ 'complex.Complex' @ V_z1 @ ( 'cons/2' @ 'complex.Complex' @ V_z2 @ ( 'cons/2' @ 'complex.Complex' @ V_z3 @ ( 'cons/2' @ 'complex.Complex' @ V_z4 @ ( 'nil/0' @ 'complex.Complex' ) ) ) ) ) )
        & ( V_w
          = ( 'complex.//2' @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z1 @ V_z3 ) @ ( 'complex.-/2' @ V_z2 @ V_z4 ) ) @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z1 @ V_z4 ) @ ( 'complex.-/2' @ V_z2 @ V_z3 ) ) ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ '2d.unit-circle/0' )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z3 ) @ '2d.unit-circle/0' )
        & ( 'complex.real-number/1' @ V_w ) )
     => ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z4 ) @ '2d.unit-circle/0' ) ) )).

