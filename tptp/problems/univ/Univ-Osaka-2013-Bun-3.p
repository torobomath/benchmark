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
%            Number of atoms       :   67 (   8 equality;  19 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :   49 (   0   ~;   0   |;   3   &;  46   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   4   ?;   6   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_C: '2d.Shape',V_lm: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_1: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_1 )
                = ( '-/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_1 ) @ 2 ) @ ( '2d.x-coord/1' @ V_P_dot_1 ) ) @ 4 ) @ ( 'abs/1' @ ( '*/2' @ 3 @ ( '2d.x-coord/1' @ V_P_dot_1 ) ) ) ) ) ) )
        & ( V_lm
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P_dot_0 )
                = ( '+/2' @ ( '*/2' @ V_m @ ( '2d.x-coord/1' @ V_P_dot_0 ) ) @ 4 ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_a: 'R',V_l: '2d.Shape'] :
                ( ( V_l
                  = ( '2d.shape-of-cpfun/1'
                    @ ^ [V_P: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_P )
                        = ( '+/2' @ ( '*/2' @ V_a @ ( '2d.x-coord/1' @ V_P ) ) @ 4 ) ) ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_l @ 'nil/0' ) ) ) ) ) ) )
          @ ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_lm @ 'nil/0' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = 1 ) ),
    answer_to(p_question,[])).
