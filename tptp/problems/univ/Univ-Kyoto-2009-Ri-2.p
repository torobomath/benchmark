%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2009, Science Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-02-06
%%
%% <PROBLEM-TEXT>
%% Consider the point $P$ inside the acute triangle $\triangle ABC$
%% (excluding sides and vertices) on a plane. Let $A^{\prime }$ be the
%% center of the circle passing through $B$, $C$, and $P$, let
%% $B^{\prime }$ be the center of the circle passing through $C$, $A$,
%% and $P$, and let $P$ be the center of the circle passing through $A$,
%% $B$, and $P$. Then, prove that the necessary and sufficient condition
%% for $A$, $B$, $C$, $A^{\prime }$, $B^{\prime }$, and $C^{\prime }$ to
%% be on the same circumference is that $P$ matches the incenter of
%% $\triangle ABC$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (   0 equality;  81 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :  139 (   0   ~;   0   |;  20   &; 116   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :   16 (   0 sgn;   4   !;  12   ?;   0   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
     => ( ( ( '2d.is-incenter-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
         => ? [V_Ap: '2d.Point',V_Bp: '2d.Point',V_Cp: '2d.Point'] :
              ( ? [V_ra: 'R',V_rb: 'R',V_rc: 'R'] :
                  ( ( '2d.on/2' @ V_B @ ( '2d.circle/2' @ V_Ap @ V_ra ) )
                  & ( '2d.on/2' @ V_C @ ( '2d.circle/2' @ V_Ap @ V_ra ) )
                  & ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ V_Ap @ V_ra ) )
                  & ( '2d.on/2' @ V_C @ ( '2d.circle/2' @ V_Bp @ V_rb ) )
                  & ( '2d.on/2' @ V_A @ ( '2d.circle/2' @ V_Bp @ V_rb ) )
                  & ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ V_Bp @ V_rb ) )
                  & ( '2d.on/2' @ V_A @ ( '2d.circle/2' @ V_Cp @ V_rc ) )
                  & ( '2d.on/2' @ V_B @ ( '2d.circle/2' @ V_Cp @ V_rc ) )
                  & ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ V_Cp @ V_rc ) ) )
              & ( '2d.concircular/1' @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_Ap @ ( 'cons/2' @ V_Bp @ ( 'cons/2' @ V_Cp @ 'nil/0' ) ) ) ) ) ) ) ) )
        & ( ? [V_Ap_dot_0: '2d.Point',V_Bp_dot_0: '2d.Point',V_Cp_dot_0: '2d.Point'] :
              ( ? [V_ra_dot_0: 'R',V_rb_dot_0: 'R',V_rc_dot_0: 'R'] :
                  ( ( '2d.on/2' @ V_B @ ( '2d.circle/2' @ V_Ap_dot_0 @ V_ra_dot_0 ) )
                  & ( '2d.on/2' @ V_C @ ( '2d.circle/2' @ V_Ap_dot_0 @ V_ra_dot_0 ) )
                  & ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ V_Ap_dot_0 @ V_ra_dot_0 ) )
                  & ( '2d.on/2' @ V_C @ ( '2d.circle/2' @ V_Bp_dot_0 @ V_rb_dot_0 ) )
                  & ( '2d.on/2' @ V_A @ ( '2d.circle/2' @ V_Bp_dot_0 @ V_rb_dot_0 ) )
                  & ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ V_Bp_dot_0 @ V_rb_dot_0 ) )
                  & ( '2d.on/2' @ V_A @ ( '2d.circle/2' @ V_Cp_dot_0 @ V_rc_dot_0 ) )
                  & ( '2d.on/2' @ V_B @ ( '2d.circle/2' @ V_Cp_dot_0 @ V_rc_dot_0 ) )
                  & ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ V_Cp_dot_0 @ V_rc_dot_0 ) ) )
              & ( '2d.concircular/1' @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_Ap_dot_0 @ ( 'cons/2' @ V_Bp_dot_0 @ ( 'cons/2' @ V_Cp_dot_0 @ 'nil/0' ) ) ) ) ) ) ) )
         => ( '2d.is-incenter-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) ) )).
