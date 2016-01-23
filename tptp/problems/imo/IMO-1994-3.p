%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-14
%%
%% <PROBLEM-TEXT>
%% For any positive integer $k$, let $f(k)$ be the number of elements in the set
%% $¥{k + 1, k + 2, ¥ldots, 2k¥}$ whose base $2$ representation has precisely three
%% $1$s.
%% ¥begin{flushleft}
%% (a) Prove that, for each positive integer $m$, there exists at least one positive
%% integer $k$ such that $f(k) = m$.¥¥
%% (b) Determine all positive integers m for which there exists exactly one $k$ with
%% $f(k) = m$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (   9 equality;  48 variable)
%            Maximal formula depth :   25 (  20 average)
%            Number of connectives :   95 (   0   ~;   0   |;  17   &;  75   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   19 (   0 sgn;   4   !;   9   ?;   6   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_m: 'Z',V_f: 'Z' > 'Z'] :
      ( ( ( V_f
          = ( ^ [V_k: 'Z'] :
                ( 'int.cardinality-of/1'
                @ ( 'set-by-def/1'
                  @ ^ [V_x: 'Z'] :
                      ( ( 'int.</2' @ V_k @ V_x )
                      & ( 'int.<=/2' @ V_x @ ( 'int.*/2' @ 2 @ V_k ) )
                      & ? [V_n1: 'Z',V_n2: 'Z',V_n3: 'Z'] :
                          ( ( 'int.<=/2' @ 0 @ V_n1 )
                          & ( 'int.</2' @ V_n1 @ V_n2 )
                          & ( 'int.</2' @ V_n2 @ V_n3 )
                          & ( V_x
                            = ( 'int.+/2' @ ( 'int.^/2' @ 2 @ V_n1 ) @ ( 'int.+/2' @ ( 'int.^/2' @ 2 @ V_n2 ) @ ( 'int.^/2' @ 2 @ V_n3 ) ) ) ) ) ) ) ) ) )
        & ( 'int.>/2' @ V_m @ 0 ) )
     => ? [V_k_dot_0: 'Z'] :
          ( ( 'int.>/2' @ V_k_dot_0 @ 0 )
          & ( ( 'LamApp/2' @ V_f @ V_k_dot_0 )
            = V_m ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'Z'] :
        ( ( 'int.</2' @ 0 @ V_m )
        & ! [V_f: 'Z' > 'Z'] :
            ( ( V_f
              = ( ^ [V_k: 'Z'] :
                    ( 'int.cardinality-of/1'
                    @ ( 'set-by-def/1'
                      @ ^ [V_x: 'Z'] :
                          ( ( 'int.</2' @ V_k @ V_x )
                          & ( 'int.<=/2' @ V_x @ ( 'int.*/2' @ 2 @ V_k ) )
                          & ? [V_n1: 'Z',V_n2: 'Z',V_n3: 'Z'] :
                              ( ( 'int.<=/2' @ 0 @ V_n1 )
                              & ( 'int.</2' @ V_n1 @ V_n2 )
                              & ( 'int.</2' @ V_n2 @ V_n3 )
                              & ( V_x
                                = ( 'int.+/2' @ ( 'int.^/2' @ 2 @ V_n1 ) @ ( 'int.+/2' @ ( 'int.^/2' @ 2 @ V_n2 ) @ ( 'int.^/2' @ 2 @ V_n3 ) ) ) ) ) ) ) ) ) )
           => ? [V_k_dot_0: 'Z'] :
                ( ( 'int.>/2' @ V_k_dot_0 @ 0 )
                & ( ( 'LamApp/2' @ V_f @ V_k_dot_0 )
                  = V_m )
                & ! [V_kk: 'Z'] :
                    ( ( ( 'int.>/2' @ V_kk @ 0 )
                      & ( ( 'LamApp/2' @ V_f @ V_kk )
                        = V_m ) )
                   => ( V_k_dot_0 = V_kk ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'Z'] :
    ? [V_n: 'Z'] :
      ( ( 'int.<=/2' @ 1 @ V_n )
      & ( V_m_dot_0
        = ( 'int.+/2' @ ( 'int.div/2' @ ( 'int.*/2' @ V_n @ ( 'int.-/2' @ V_n @ 1 ) ) @ 2 ) @ 1 ) ) ) ),
    answer_to(p2_question,[])).
