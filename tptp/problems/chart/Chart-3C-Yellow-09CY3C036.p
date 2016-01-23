%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C036
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   34 (   3 equality;  10 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :   26 (   0   ~;   0   |;   4   &;  22   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    9 (   2 sgn;   2   !;   3   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,(
    ! [Tv2: $tType,Tv3: $tType] :
      ( 'Find/1'
      @ ^ [V_S: 'R'] :
        ? [V_C1: '2d.Shape',V_C2: Tv2,V_L: Tv3] :
          ( ( V_C1
            = ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( ( '>=/2' @ V_y @ ( '//2' @ 1 @ ( '+/2' @ 1 @ V_x ) ) )
                  & ( '<=/2' @ V_y @ ( 'exp/1' @ V_x ) )
                  & ( '<=/2' @ V_x @ 1 )
                  & ( '<=/2' @ 0 @ V_x ) ) ) )
          & ( V_S
            = ( '2d.area-of/1' @ V_C1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '-/2' @ ( 'exp/1' @ 1 ) @ ( 'ln/1' @ 2 ) ) @ 1 ) ) ),
    answer_to(p_question,[])).
