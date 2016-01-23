%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2005, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% The two curves $C$: $y = - x^2$ and $D$: $y =(x - a)^2 + b$ are in
%% contact with each other at a point. Find the value of the real
%% numbers $a$ and $b$ that give the minimum value of the area $S$ of
%% the region enclosed by the curves $D$ and $E$:
%% $y =\frac{1}{2}(x - 1)^2 + 1$ and $S$ at that time.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (   9 equality;  30 variable)
%            Maximal formula depth :   32 (  22 average)
%            Number of connectives :   86 (   0   ~;   0   |;   9   &;  77   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;  10   ?;   7   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_abS: 'ListOf' @ 'R'] :
      ? [V_S_set: 'SetOf' @ 'R',V_S_min: 'R',V_a_opt: 'R',V_b_opt: 'R',V_D_opt: '2d.Shape',V_C: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_abS
          = ( 'cons/2' @ V_a_opt @ ( 'cons/2' @ V_b_opt @ ( 'cons/2' @ V_S_min @ 'nil/0' ) ) ) )
        & ( 'minimum/2' @ V_S_set @ V_S_min )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_2: 'R'] :
                  ( '-/1' @ ( '^/2' @ V_x_dot_2 @ 2 ) ) ) ) )
        & ( V_E
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_1: 'R'] :
                  ( '+/2' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ ( '-/2' @ V_x_dot_1 @ 1 ) @ 2 ) ) @ 1 ) ) ) )
        & ( V_S_set
          = ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_a: 'R',V_b: 'R',V_D: '2d.Shape'] :
                ( ( V_D
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: 'R'] :
                          ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ V_a ) @ 2 ) @ V_b ) ) ) )
                & ( '2d.tangent/2' @ V_C @ V_D )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ 'nil/0' ) ) ) ) ) ) ) )
        & ( V_D_opt
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ V_a_opt ) @ 2 ) @ V_b_opt ) ) ) )
        & ( '2d.tangent/2' @ V_C @ V_D_opt )
        & ( V_S_min
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_D_opt @ ( 'cons/2' @ V_E @ 'nil/0' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_abS_dot_0: 'ListOf' @ 'R'] :
      ( V_abS_dot_0
      = ( 'cons/2' @ ( '//2' @ 2 @ 3 ) @ ( 'cons/2' @ ( '//2' @ -2 @ 9 ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 32 @ 27 ) @ ( 'sqrt/1' @ 6 ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
