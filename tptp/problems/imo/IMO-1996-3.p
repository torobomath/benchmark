%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1996, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-06
%%
%% <PROBLEM-TEXT>
%% Let $S$ denote the set of nonnegative integers. Find all functions $f$ from $S$ to
%% itself such that
%% ¥[
%% ¥begin{array}{ll}
%% f(m + f(n)) = f(f(m))+ f(n) &¥forall m, n ¥in S.
%% ¥end{array}
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (   8 equality;  40 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   75 (   0   ~;   2   |;   7   &;  59   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   13 (   2 sgn;   7   !;   2   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'Z' > 'Z'] :
        ( ! [V_k_dot_0: 'Z'] :
            ( ( 'int.</2' @ V_k_dot_0 @ 0 )
           => ( ( 'LamApp/2' @ V_f @ V_k_dot_0 )
              = 0 ) )
        & ! [V_k: 'Z'] :
            ( ( 'int.<=/2' @ 0 @ V_k )
           => ( 'int.<=/2' @ 0 @ ( 'LamApp/2' @ V_f @ V_k ) ) )
        & ! [V_n_dot_0: 'Z',V_m: 'Z'] :
            ( ( ( 'int.>=/2' @ V_n_dot_0 @ 0 )
              & ( 'int.>=/2' @ V_m @ 0 ) )
           => ( ( 'LamApp/2' @ V_f @ ( 'int.+/2' @ V_m @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) ) )
              = ( 'int.+/2' @ ( 'LamApp/2' @ V_f @ ( 'LamApp/2' @ V_f @ V_m ) ) @ ( 'LamApp/2' @ V_f @ V_n_dot_0 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'Z' > 'Z'] :
      ( ( V_f_dot_0
        = ( ^ [V_k_dot_4: 'Z'] : 0 ) )
      | ! [V_k_dot_3: 'Z'] :
          ( ( ( 'int.>=/2' @ V_k_dot_3 @ 0 )
           => ( ( 'LamApp/2' @ V_f_dot_0 @ V_k_dot_3 )
              = V_k_dot_3 ) )
          & ( ( 'int.</2' @ V_k_dot_3 @ 0 )
           => ( ( 'LamApp/2' @ V_f_dot_0 @ V_k_dot_3 )
              = 0 ) ) )
      | ? [V_ns: 'ListOf' @ 'Z',V_e: 'Z'] :
          ( ( 'int.>=/2' @ V_e @ 2 )
          & ( ( 'list-len/1' @ V_ns )
            = V_e )
          & ! [V_k_dot_2: 'Z'] :
              ( ( 'int.</2' @ V_k_dot_2 @ 0 )
             => ( ( 'LamApp/2' @ V_f_dot_0 @ V_k_dot_2 )
                = 0 ) )
          & ! [V_k_dot_1: 'Z'] :
              ( ( 'int.>=/2' @ V_k_dot_1 @ 0 )
             => ( ( 'LamApp/2' @ V_f_dot_0 @ V_k_dot_1 )
                = ( 'int.*/2' @ V_e @ ( 'int.+/2' @ ( 'int.div/2' @ V_k_dot_1 @ V_e ) @ ( 'nth/2' @ ( 'int.mod/2' @ V_n @ V_e ) @ V_ns ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).
