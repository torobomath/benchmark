%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2013, Humanities Course, Problem 3
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-06-30
%%
%% <PROBLEM-TEXT>
%% Find the value of the constant $m$ that gives the minimum area of the
%% region enclosed by the curve $y = x^2 + x + 4 - |3 x|$ and the
%% straight line $y = m x + 4$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   8 equality;  19 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :   57 (   0   ~;   0   |;   3   &;  54   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   4   ?;   6   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_C: '2d.Shape',V_lm: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_1: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_1 )
                = ( $difference @ ( $sum @ ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_1 ) @ 2.0 ) @ ( '2d.x-coord/1' @ V_P_dot_1 ) ) @ 4.0 ) @ ( 'abs/1' @ ( $product @ 3.0 @ ( '2d.x-coord/1' @ V_P_dot_1 ) ) ) ) ) ) )
        & ( V_lm
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_0 )
                = ( $sum @ ( $product @ V_m @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) @ 4.0 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a: $real,V_l: '2d.Shape'] :
                ( ( V_l
                  = ( '2d.shape-of-cpfun/1'
                    @ ^ [V_P: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_P )
                        = ( $sum @ ( $product @ V_a @ ( '2d.x-coord/1' @ V_P ) ) @ 4.0 ) ) ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )
          @ ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_lm @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: $real] : ( V_m_dot_0 = 1.0 ) ),
    answer_to(p_question,[])).

