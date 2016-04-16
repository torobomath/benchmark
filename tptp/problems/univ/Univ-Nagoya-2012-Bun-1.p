%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2012, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-07
%%
%% <PROBLEM-TEXT>
%% The line $l$ on the $xy$-plane pass through the point $(0, 1)$ and its inclination is $h$.
%% (1) Let $Q(s,t)$ be the point symmetric to the point $P(a,b)$ with respect to $l$ on the $xy$-plane.
%% Represent $s$ and $t$ using $a$, $b$, and $h$, assuming that the point $P(a,b)$ is not on $l$.
%% (2) Let $A$ be the point symmetric to the origin $O(0,0)$ with respect to $l$ on the $xy$-plane.
%% When $h$ moves in the range $-1 \le h \le 1$, find the maximum and minimum length of the segment $OA$.
%% (3) Let $C$ be the locus of the point $A$ when $h$ moves in the range $-1 \le h \le 1$.
%% Find the area of the region enclosed by $C$ and the line $y = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   11 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  225 (  13 equality;  55 variable)
%            Maximal formula depth :   22 (  10 average)
%            Number of connectives :  195 (   2   ~;   0   |;  27   &; 166   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   3   :;   0   =)
%            Number of variables   :   27 (   1 sgn;   0   !;  15   ?;  12   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('h/0_type',type,(
    'h/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_st: ( 'ListOf' @ $real )] :
      ? [V_l: '2d.Shape',V_s: $real,V_t: $real] :
        ( ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_l )
        & ( '2d.line-type/1' @ V_l )
        & ( V_st
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.is-slope-of/2' @ 'h/0' @ V_l )
        & ( '2d.line-symmetry/3' @ ( '2d.point/2' @ 'a/0' @ 'b/0' ) @ ( '2d.point/2' @ V_s @ V_t ) @ V_l )
        & ~ ( '2d.on/2' @ ( '2d.point/2' @ 'a/0' @ 'b/0' ) @ V_l ) ) )).

thf(p2_max_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_OA: $real] :
            ? [V_l: '2d.Shape',V_O: '2d.Point',V_A: '2d.Point',V_h: $real] :
              ( ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_l )
              & ( '2d.line-type/1' @ V_l )
              & ( '2d.is-slope-of/2' @ V_h @ V_l )
              & ( V_O
                = ( '2d.point/2' @ 0.0 @ 0.0 ) )
              & ( '2d.line-symmetry/3' @ V_O @ V_A @ V_l )
              & ( $lesseq @ -1.0 @ V_h )
              & ( $lesseq @ V_h @ 1.0 )
              & ( V_OA
                = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_O @ V_A ) ) ) ) )
        @ V_m ) )).

thf(p2_min_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_OA: $real] :
            ? [V_l: '2d.Shape',V_O: '2d.Point',V_A: '2d.Point',V_h: $real] :
              ( ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_l )
              & ( '2d.line-type/1' @ V_l )
              & ( '2d.is-slope-of/2' @ V_h @ V_l )
              & ( V_O
                = ( '2d.point/2' @ 0.0 @ 0.0 ) )
              & ( '2d.line-symmetry/3' @ V_O @ V_A @ V_l )
              & ( $lesseq @ -1.0 @ V_h )
              & ( $lesseq @ V_h @ 1.0 )
              & ( V_OA
                = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_O @ V_A ) ) ) ) )
        @ V_m ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape' @ V_C
                @ ( 'cons/2' @ '2d.Shape'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] : 1.0 ) )
                  @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_A: '2d.Point'] :
              ? [V_l: '2d.Shape',V_h: $real,V_O: '2d.Point'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_l )
                & ( '2d.line-type/1' @ V_l )
                & ( '2d.is-slope-of/2' @ V_h @ V_l )
                & ( V_O
                  = ( '2d.point/2' @ 0.0 @ 0.0 ) )
                & ( '2d.line-symmetry/3' @ V_O @ V_A @ V_l )
                & ( $lesseq @ -1.0 @ V_h )
                & ( $lesseq @ V_h @ 1.0 ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: ( 'ListOf' @ $real )] :
      ( ( 'b/0'
       != ( $sum @ ( $product @ 'h/0' @ 'a/0' ) @ 1.0 ) )
      & ( V_st_dot_0
        = ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( $uminus @ ( $product @ 'a/0' @ ( '^/2' @ 'h/0' @ 2.0 ) ) ) @ ( $sum @ ( $product @ ( $difference @ ( $product @ 2.0 @ 'b/0' ) @ 2.0 ) @ 'h/0' ) @ 'a/0' ) ) @ ( $sum @ ( '^/2' @ 'h/0' @ 2.0 ) @ 1.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( $product @ 'b/0' @ ( '^/2' @ 'h/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 2.0 @ ( $product @ 'a/0' @ 'h/0' ) ) @ ( $sum @ ( $uminus @ 'b/0' ) @ 2.0 ) ) ) @ ( $sum @ ( '^/2' @ 'h/0' @ 2.0 ) @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_max_answer,answer,(
    ^ [V_m_dot_0: $real] : ( V_m_dot_0 = 2.0 ) ),
    answer_to(p2_max_question,[])).

thf(p2_min_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( V_m_dot_0
      = ( 'sqrt/1' @ 2.0 ) ) ),
    answer_to(p2_min_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 'Pi/0' @ 2.0 ) ) ),
    answer_to(p3_question,[])).

