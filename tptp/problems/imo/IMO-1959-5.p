%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 5
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2015-01-27
%%
%% <PROBLEM-TEXT>
%% An arbitrary point $M$ is selected in the interior of the segment $AB$. The
%% squares $AMCD$ and $MBEF$ are constructed on the same side of $AB$, with
%% the segments $AM$ and $MB$ as their respective bases. The circles circumscribed
%% about these squares, with centers $P$ and $Q$, intersect at $M$ and also
%% at another point $N$. Let $N'$ denote the point of intersection of the straight
%% lines $AF$ and $BC$.
%% (a) Prove that the points $N$ and $N'$ coincide.
%% (b) Prove that the straight lines $MN$ pass through a fixed point $S$ independent
%% of the choice of $M$.
%% (c) Find the locus of the midpoints of the segments $PQ$ as $M$ varies between
%% $A$ and $B$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  302 (  26 equality; 162 variable)
%            Maximal formula depth :   40 (  16 average)
%            Number of connectives :  259 (  13   ~;   0   |;  51   &; 192   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (   4   :;   0   =)
%            Number of variables   :   42 (   0 sgn;  24   !;  15   ?;   3   ^)
%                                         (  42   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    1 func;    2 numbers)

include('axioms.ax').

thf('Ax/0_type',type,(
    'Ax/0': $real )).

thf('Ay/0_type',type,(
    'Ay/0': $real )).

thf('Bx/0_type',type,(
    'Bx/0': $real )).

thf('By/0_type',type,(
    'By/0': $real )).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_N: '2d.Point'] :
      ( ( ( V_A != V_B )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( V_M != V_A )
        & ( V_M != V_B )
        & ( '2d.is-regular-square/4' @ V_A @ V_M @ V_C @ V_D )
        & ( '2d.is-regular-square/4' @ V_M @ V_B @ V_E @ V_F )
        & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_M @ V_C ) @ ( '2d.vec/2' @ V_M @ V_F ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_M @ V_C @ V_D ) @ V_K1 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_B @ V_M @ V_F @ V_E ) @ V_K2 )
        & ( V_P
          = ( '2d.center-of/1' @ V_K1 ) )
        & ( V_Q
          = ( '2d.center-of/1' @ V_K2 ) )
        & ( '2d.intersect/3' @ V_K1 @ V_K2 @ V_N )
        & ( V_M != V_N ) )
     => ( '2d.intersect/3' @ ( '2d.line/2' @ V_F @ V_A ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_N ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point'] :
      ( ( V_A != V_B )
     => ? [V_S: '2d.Point'] :
        ! [V_M: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_N: '2d.Point'] :
          ( ( ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
            & ( V_M != V_A )
            & ( V_M != V_B )
            & ( '2d.is-regular-square/4' @ V_A @ V_M @ V_C @ V_D )
            & ( '2d.is-regular-square/4' @ V_M @ V_B @ V_E @ V_F )
            & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_M @ V_C ) @ ( '2d.vec-rotate-around-origin/2' @ ( '2d.vec/2' @ V_A @ V_B ) @ ( $quotient @ 'Pi/0' @ 2.0 ) ) )
            & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_M @ V_F ) @ ( '2d.vec-rotate-around-origin/2' @ ( '2d.vec/2' @ V_A @ V_B ) @ ( $quotient @ 'Pi/0' @ 2.0 ) ) )
            & ( '2d.circle-type/1' @ V_K1 )
            & ( '2d.circle-type/1' @ V_K2 )
            & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_M @ V_C @ V_D ) @ V_K1 )
            & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_B @ V_M @ V_F @ V_E ) @ V_K2 )
            & ( V_P
              = ( '2d.center-of/1' @ V_K1 ) )
            & ( V_Q
              = ( '2d.center-of/1' @ V_K2 ) )
            & ( '2d.intersect/3' @ V_K1 @ V_K2 @ V_N )
            & ( V_M != V_N ) )
         => ( '2d.on/2' @ V_S @ ( '2d.line/2' @ V_M @ V_N ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_Sp: '2d.Shape'] :
        ( V_Sp
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_R: '2d.Point'] :
            ? [V_A: '2d.Point',V_B: '2d.Point',V_M: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_N: '2d.Point'] :
              ( ( V_A != V_B )
              & ( V_A
                = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
              & ( V_B
                = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
              & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_B ) )
              & ( V_M != V_A )
              & ( V_M != V_B )
              & ( '2d.is-regular-square/4' @ V_A @ V_M @ V_C @ V_D )
              & ( '2d.is-regular-square/4' @ V_M @ V_B @ V_E @ V_F )
              & ( '2d.vec-same-direction/2' @ ( '2d.vec/2' @ V_M @ V_C ) @ ( '2d.vec/2' @ V_M @ V_F ) )
              & ( '2d.circle-type/1' @ V_K1 )
              & ( '2d.circle-type/1' @ V_K2 )
              & ( '2d.is-inscribed-in/2' @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_M @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) @ V_K1 )
              & ( '2d.is-inscribed-in/2' @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_M @ ( 'cons/2' @ '2d.Point' @ V_F @ ( 'cons/2' @ '2d.Point' @ V_E @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) @ V_K2 )
              & ( V_P
                = ( '2d.center-of/1' @ V_K1 ) )
              & ( V_Q
                = ( '2d.center-of/1' @ V_K2 ) )
              & ( '2d.intersect/3' @ V_K1 @ V_K2 @ V_N )
              & ( V_M != V_N )
              & ( V_R
                = ( '2d.midpoint-of/2' @ V_P @ V_Q ) ) ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_Sp_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point'] :
      ( ( V_A_dot_0 != V_B_dot_0 )
      & ( V_A_dot_0
        = ( '2d.point/2' @ 'Ax/0' @ 'Ay/0' ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ 'Bx/0' @ 'By/0' ) )
      & ( '2d.segment-type/1' @ V_Sp_dot_0 )
      & ( '2d.parallel/2' @ V_Sp_dot_0 @ ( '2d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) )
      & ( ( '2d.line-line-distance/2' @ ( '2d.seg-extention-of/1' @ V_Sp_dot_0 ) @ ( '2d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) )
        = ( $quotient @ ( '2d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) @ 4.0 ) )
      & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '2d.line/2' @ ( '2d.midpoint-of/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '2d.seg-midpoint-of/1' @ V_Sp_dot_0 ) ) ) ) ),
    answer_to(p3_question,[])).

