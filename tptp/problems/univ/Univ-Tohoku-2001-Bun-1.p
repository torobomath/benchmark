%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Find the two common tangents of the two parabolas $C$:
%% $y = -(x + 1)^2$ and $D$: $y =(x - 1)^2 + 1$. Find the area of the
%% region enclosed by the two common tangents of $C$ and $D$ and $C$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  177 (  14 equality;  47 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :  149 (   2   ~;   1   |;  21   &; 125   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;  10   ?;   8   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_s_t_qustion,question,
    ( 'Find/1'
    @ ^ [V_s_t: 'ListOf' @ '2d.Shape'] :
      ? [V_C: '2d.Shape',V_D: '2d.Shape',V_s: '2d.Shape',V_t: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '-/1' @ ( '^/2' @ ( '+/2' @ V_x_dot_0 @ 1 ) @ 2 ) ) ) ) )
        & ( V_D
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) @ 1 ) ) ) )
        & ( '2d.line-type/1' @ V_s )
        & ( '2d.line-type/1' @ V_t )
        & ( '2d.tangent/2' @ V_C @ V_s )
        & ( '2d.tangent/2' @ V_C @ V_t )
        & ( '2d.tangent/2' @ V_D @ V_s )
        & ( '2d.tangent/2' @ V_D @ V_t )
        & ( V_s != V_t )
        & ( V_s_t
          = ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) )).

thf(pS_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape',V_D: '2d.Shape',V_s: '2d.Shape',V_t: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '-/1' @ ( '^/2' @ ( '+/2' @ V_x_dot_0 @ 1 ) @ 2 ) ) ) ) )
        & ( V_D
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) @ 1 ) ) ) )
        & ( '2d.line-type/1' @ V_s )
        & ( '2d.line-type/1' @ V_t )
        & ( '2d.tangent/2' @ V_C @ V_s )
        & ( '2d.tangent/2' @ V_C @ V_t )
        & ( '2d.tangent/2' @ V_D @ V_s )
        & ( '2d.tangent/2' @ V_D @ V_t )
        & ( V_s != V_t )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_s @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p_s_t_answer,answer,(
    ^ [V_s_t_dot_0: 'ListOf' @ '2d.Shape'] :
    ? [V_s_dot_0: '2d.Shape',V_t_dot_0: '2d.Shape'] :
      ( ( V_s_t_dot_0
        = ( 'cons/2' @ V_s_dot_0 @ ( 'cons/2' @ V_t_dot_0 @ 'nil/0' ) ) )
      & ( ( ( V_s_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ ( '//2' @ 1 @ 2 ) ) @ ( '2d.point/2' @ ( '//2' @ 1 @ 4 ) @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ -4 ) ) ) )
          & ( V_t_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ ( '//2' @ 1 @ 2 ) ) @ ( '2d.point/2' @ ( '//2' @ 1 @ 4 ) @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) ) ) ) )
        | ( ( V_t_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ ( '//2' @ 1 @ 2 ) ) @ ( '2d.point/2' @ ( '//2' @ 1 @ 4 ) @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ -4 ) ) ) )
          & ( V_s_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ ( '//2' @ 1 @ 2 ) ) @ ( '2d.point/2' @ ( '//2' @ 1 @ 4 ) @ ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) ) ) ) ) ) ) ),
    answer_to(p_s_t_question,[])).

thf(pS_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 2 ) ) ),
    answer_to(pS_question,[])).
