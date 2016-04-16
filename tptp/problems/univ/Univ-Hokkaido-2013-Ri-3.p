%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2013, Science Course, Problem 3
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-09-26
%%
%% <PROBLEM-TEXT>
%% For the real numbers $x$, $y$, $s$, and $t$, define $z = x + y i$ and
%% $w = s + t i$, and assume that $z =\frac{w-1}{w+1}$, where $i$ is the
%% imaginary unit.
%%
%% (1) Represent $w$ using $z$, and $s$ and $t$ using $x$ and $y$.
%%
%% (2) Draw the range $D$ of $(x, y)$ such that $0\le s\le 1$ and
%% $0\le t\le 1$ on the coordinate plane.
%%
%% (3) When the point $P(x, y)$ moves in $D$, find the minimum value of
%% $- 5 x + y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   11 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  266 (  21 equality;  58 variable)
%            Maximal formula depth :   21 (  11 average)
%            Number of connectives :  225 (   7   ~;   1   |;  23   &; 194   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (   3   :;   0   =)
%            Number of variables   :   23 (   0 sgn;   0   !;  12   ?;  11   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   1 pred;    5 func;    7 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf('z/0_type',type,(
    'z/0': 'complex.Complex' )).

thf(a1_1_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_w: 'complex.Complex'] :
        ( ( V_w
         != ( 'complex.real->complex/1' @ -1.0 ) )
        & ( 'z/0'
          = ( 'complex.//2' @ ( 'complex.-/2' @ V_w @ ( 'complex.real->complex/1' @ 1.0 ) ) @ ( 'complex.+/2' @ V_w @ ( 'complex.real->complex/1' @ 1.0 ) ) ) ) ) )).

thf(a1_2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_z: 'complex.Complex',V_w: 'complex.Complex',V_s: $real,V_t: $real] :
        ( ( V_w
         != ( 'complex.real->complex/1' @ -1.0 ) )
        & ( V_z
          = ( 'complex.complex/2' @ 'x/0' @ 'y/0' ) )
        & ( V_w
          = ( 'complex.complex/2' @ V_s @ V_t ) )
        & ( V_z
          = ( 'complex.//2' @ ( 'complex.-/2' @ V_w @ ( 'complex.real->complex/1' @ 1.0 ) ) @ ( 'complex.+/2' @ V_w @ ( 'complex.real->complex/1' @ 1.0 ) ) ) )
        & ( V_ans
          = ( 'cons/2' @ $real @ V_s @ ( 'cons/2' @ $real @ V_t @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(a2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_x: $real,V_y: $real,V_s: $real,V_t: $real] :
        ( ( ( 'complex.complex/2' @ V_s @ V_t )
         != ( 'complex.real->complex/1' @ -1.0 ) )
        & ( ( 'complex.complex/2' @ V_x @ V_y )
          = ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1.0 ) ) @ ( 'complex.+/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1.0 ) ) ) )
        & ( $lesseq @ 0.0 @ V_s )
        & ( $lesseq @ V_s @ 1.0 )
        & ( $lesseq @ 0.0 @ V_t )
        & ( $lesseq @ V_t @ 1.0 )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( V_p
                = ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ V_x @ V_y ) ) ) ) ) ) )).

thf(a3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_v: $real] :
            ? [V_x: $real,V_y: $real] :
              ( ( V_v
                = ( $sum @ ( $uminus @ ( $product @ 5.0 @ V_x ) ) @ V_y ) )
              & ? [V_s: $real,V_t: $real] :
                  ( ( ( 'complex.complex/2' @ V_s @ V_t )
                   != ( 'complex.real->complex/1' @ -1.0 ) )
                  & ( ( 'complex.complex/2' @ V_x @ V_y )
                    = ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1.0 ) ) @ ( 'complex.+/2' @ ( 'complex.complex/2' @ V_s @ V_t ) @ ( 'complex.real->complex/1' @ 1.0 ) ) ) )
                  & ( $lesseq @ 0.0 @ V_s )
                  & ( $lesseq @ V_s @ 1.0 )
                  & ( $lesseq @ 0.0 @ V_t )
                  & ( $lesseq @ V_t @ 1.0 ) ) ) )
        @ V_m ) )).

thf(a1_1_answer,answer,(
    ^ [V_w_dot_0: 'complex.Complex'] :
      ( V_w_dot_0
      = ( 'complex.//2' @ ( 'complex.+/2' @ ( 'complex.-/1' @ 'z/0' ) @ ( 'complex.-/1' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ) @ ( 'complex.-/2' @ 'z/0' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ) ) ),
    answer_to(a1_1_question,[])).

thf(a1_2_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
      ( ~ ( ( 'x/0' = 1.0 )
          & ( 'y/0' = 0.0 ) )
      & ( V_ans_dot_0
        = ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( $uminus @ ( $difference @ ( '^/2' @ 'x/0' @ 2.0 ) @ 1.0 ) ) @ ( $uminus @ ( '^/2' @ 'y/0' @ 2.0 ) ) ) @ ( $sum @ ( '^/2' @ ( $difference @ 'x/0' @ 1.0 ) @ 2.0 ) @ ( '^/2' @ 'y/0' @ 2.0 ) ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 2.0 @ 'y/0' ) @ ( $sum @ ( '^/2' @ ( $difference @ 'x/0' @ 1.0 ) @ 2.0 ) @ ( '^/2' @ 'y/0' @ 2.0 ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(a1_2_question,[])).

thf(a2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) @ 1.0 )
        & ( $lesseq @ ( $quotient @ 1.0 @ 4.0 ) @ ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ 2.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) )
        & ( $lesseq @ 0.0 @ V_y_dot_0 )
        & ( $lesseq @ 1.0 @ ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 1.0 ) @ 2.0 ) ) )
        & ( ( V_x_dot_0 != 1.0 )
          | ( V_y_dot_0 != 0.0 ) ) ) ),
    answer_to(a2_question,[])).

thf(a3_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( V_m_dot_0
      = ( $uminus @ ( $quotient @ 3.0 @ 5.0 ) ) ) ),
    answer_to(a3_question,[])).

