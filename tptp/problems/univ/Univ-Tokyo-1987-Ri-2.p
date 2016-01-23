%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Science Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-17
%%
%% <PROBLEM-TEXT>
%% Let $C$ be the curve obtained by translating the curve $y=x^2$ by the
%% translation that translates the point $(x, y)$ to the point
%% $(x + a, y + b)$. Draw the outline of the range of the point $(a, b)$
%% whose coordinates are $a$ and $b$ such that $C$ is in contact with
%% the curve $y=\frac{1}{x}$ ( $x>0$).
%%
%% Find the values of $a$ and $b$ such that the two curves have no
%% common points other than the contact points of them, where the fact
%% that two curves are in contact with each other at a certain point
%% means that they have a common tangent at that point.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   5 equality;  31 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :   63 (   0   ~;   0   |;  12   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   11 (   0 sgn;   1   !;   6   ?;   4   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_C: '2d.Shape'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: 'R'] :
                  ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ V_a ) @ 2 ) @ V_b ) ) ) )
        & ? [V_l: '2d.Shape',V_P: '2d.Point',V_D: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l )
            & ( V_D
              = ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x: 'R'] :
                      ( '//2' @ 1 @ V_x ) ) ) )
            & ( '2d.on/2' @ V_P @ V_D )
            & ( '2d.on/2' @ V_P @ V_C )
            & ( '2d.on/2' @ V_P @ V_l )
            & ( '>/2' @ ( '2d.x-coord/1' @ V_P ) @ 0 )
            & ( '2d.tangent/3' @ V_l @ V_C @ V_P )
            & ( '2d.tangent/3' @ V_l @ V_D @ V_P )
            & ! [V_Q: '2d.Point'] :
                ( ( ( '2d.on/2' @ V_Q @ V_C )
                  & ( '2d.on/2' @ V_Q @ V_D )
                  & ( '>/2' @ ( '2d.x-coord/1' @ V_Q ) @ 0 ) )
               => ( V_P = V_Q ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
      ( V_ab_dot_0
      = ( 'cons/2' @ ( '//2' @ 3 @ 2 ) @ ( 'cons/2' @ ( '//2' @ 3 @ 4 ) @ 'nil/0' ) ) ) ),
    answer_to(p_question,[])).
