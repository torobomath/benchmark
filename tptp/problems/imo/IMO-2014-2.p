%% DOMAIN:    Combinatorics, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2014, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-15
%%
%% <PROBLEM-TEXT>
%% Let $n \geq 2$ be an integer. Consider an $n \times n$ chessboard consisting of $n^2$
%% unit squares. A configuration of $n$ rooks on this board is peaceful if every
%% row and every column contains exactly one rook. Find the greatest positive
%% integer $k$ such that, for each peaceful configuration of $n$ rooks, there
%% is a $k \times k$ square which does not contain a rook on any of its $k^2$ unit
%% squares.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  123 (   3 equality;  57 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :  120 (   3   ~;   0   |;  19   &;  94   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   13 (   0 sgn;   6   !;   2   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_max_k: 'Z'] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_k: 'Z'] :
            ! [V_ps: 'ListOf' @ ( 'ListOf' @ 'Z' )] :
              ( ( ( ( 'list-len/1' @ V_ps )
                  = V_n )
                & ! [V_i: 'Z'] :
                    ( ( ( 'int.<=/2' @ 0 @ V_i )
                      & ( 'int.</2' @ V_i @ V_n ) )
                   => ( ( 'int.is-lattice-point/1' @ ( 'nth/2' @ V_i @ V_ps ) )
                      & ( 'int.<=/2' @ 1 @ ( 'int.x-coord/1' @ ( 'nth/2' @ V_i @ V_ps ) ) )
                      & ( 'int.<=/2' @ ( 'int.x-coord/1' @ ( 'nth/2' @ V_i @ V_ps ) ) @ V_n )
                      & ( 'int.<=/2' @ 1 @ ( 'int.y-coord/1' @ ( 'nth/2' @ V_i @ V_ps ) ) )
                      & ( 'int.<=/2' @ ( 'int.y-coord/1' @ ( 'nth/2' @ V_i @ V_ps ) ) @ V_n ) ) )
                & ! [V_k_dot_0: 'Z',V_l: 'Z'] :
                    ( ( ( 'int.<=/2' @ 0 @ V_k_dot_0 )
                      & ( 'int.</2' @ V_k_dot_0 @ V_n )
                      & ( 'int.<=/2' @ 0 @ V_l )
                      & ( 'int.</2' @ V_l @ V_n ) )
                   => ( ( ( 'int.x-coord/1' @ ( 'nth/2' @ V_k_dot_0 @ V_ps ) )
                       != ( 'int.x-coord/1' @ ( 'nth/2' @ V_l @ V_ps ) ) )
                      & ( ( 'int.y-coord/1' @ ( 'nth/2' @ V_k_dot_0 @ V_ps ) )
                       != ( 'int.y-coord/1' @ ( 'nth/2' @ V_l @ V_ps ) ) ) ) ) )
             => ? [V_x: 'Z',V_y: 'Z'] :
                  ( ( 'int.<=/2' @ 0 @ V_x )
                  & ( 'int.</2' @ ( 'int.+/2' @ V_x @ V_k ) @ V_n )
                  & ( 'int.<=/2' @ 0 @ V_y )
                  & ( 'int.</2' @ ( 'int.+/2' @ V_y @ V_k ) @ V_n )
                  & ! [V_i_dot_0: 'Z',V_j: 'Z'] :
                      ( ( ( 'int.<=/2' @ V_x @ V_i_dot_0 )
                        & ( 'int.</2' @ V_i_dot_0 @ ( 'int.+/2' @ V_x @ V_k ) )
                        & ( 'int.<=/2' @ V_y @ V_j )
                        & ( 'int.</2' @ V_j @ ( 'int.+/2' @ V_y @ V_k ) ) )
                     => ~ ( 'member/2' @ ( 'cons/2' @ V_i_dot_0 @ ( 'cons/2' @ V_j @ 'nil/0' ) ) @ V_ps ) ) ) ) )
        @ V_max_k ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_1: 'Z'] :
      ( ( 'int.</2' @ V_n @ ( 'int.^/2' @ ( 'int.+/2' @ V_k_dot_1 @ 1 ) @ 2 ) )
      & ( 'int.<=/2' @ ( 'int.^/2' @ V_k_dot_1 @ 2 ) @ V_n ) ) ),
    answer_to(p_question,[])).
