%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 5
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Prove that the spherical surface $S$ with the center at the origin
%% $O$ and the radius $\sqrt{6}$ has common points with the plane
%% ${\alpha}$ containing the points $(4, 0, 0)$, $(0, 4, 0)$, and
%% $(0, 0, 4)$ in the $xyz$ space, and find the range of the possible
%% value of the product $x y z$ when the point $(x, y, z)$ moves across
%% the set of all the common points.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   96 (   1 equality;  24 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   91 (   0   ~;   0   |;   2   &;  87   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   8   !;   2   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(a_1,conjecture,(
    ! [V_s: $real,V_t: $real,V_u: $real,V_v: $real] :
      ( ( '3d.determine/2' @ ( 'cons/2' @ '3d.Point' @ ( '3d.point/3' @ 4.0 @ 0.0 @ 0.0 ) @ ( 'cons/2' @ '3d.Point' @ ( '3d.point/3' @ 0.0 @ 4.0 @ 0.0 ) @ ( 'cons/2' @ '3d.Point' @ ( '3d.point/3' @ 0.0 @ 0.0 @ 4.0 ) @ ( 'nil/0' @ '3d.Point' ) ) ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) )
     => ? [V_p: '3d.Point'] :
          ( '3d.on/2' @ V_p @ ( '3d.intersection/2' @ ( '3d.sphere/2' @ '3d.origin/0' @ ( 'sqrt/1' @ 6.0 ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) ) ) ) )).

thf(a_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ! [V_s: $real,V_t: $real,V_u: $real,V_v: $real] :
        ( ( '3d.determine/2' @ ( 'cons/2' @ '3d.Point' @ ( '3d.point/3' @ 4.0 @ 0.0 @ 0.0 ) @ ( 'cons/2' @ '3d.Point' @ ( '3d.point/3' @ 0.0 @ 4.0 @ 0.0 ) @ ( 'cons/2' @ '3d.Point' @ ( '3d.point/3' @ 0.0 @ 0.0 @ 4.0 ) @ ( 'nil/0' @ '3d.Point' ) ) ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) )
       => ? [V_p: '3d.Point'] :
            ( ( '3d.on/2' @ V_p @ ( '3d.intersection/2' @ ( '3d.sphere/2' @ '3d.origin/0' @ ( 'sqrt/1' @ 6.0 ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) ) )
            & ( V_V
              = ( $product @ ( '3d.x-coord/1' @ V_p ) @ ( $product @ ( '3d.y-coord/1' @ V_p ) @ ( '3d.z-coord/1' @ V_p ) ) ) ) ) ) )).

thf(a_2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ 50.0 @ 27.0 ) @ V_V_dot_0 )
      & ( $lesseq @ V_V_dot_0 @ 2.0 ) ) ),
    answer_to(a_2_question,[])).

