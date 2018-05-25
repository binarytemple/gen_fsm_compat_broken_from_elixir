# GenFsmCompatBrokenFromElixir


    mix deps.get
    * Getting cuttlefish (git://github.com/bryanhuntesl/cuttlefish.git)
    remote: Counting objects: 2331, done.
    remote: Compressing objects: 100% (16/16), done.
    remote: Total 2331 (delta 4), reused 4 (delta 1), pack-reused 2314
    * Getting getopt (https://github.com/freeakdb/getopt.git)
    remote: Counting objects: 510, done.
    remote: Compressing objects: 100% (235/235), done.
    remote: Total 510 (delta 234), reused 510 (delta 234), pack-reused 0
    Receiving objects: 100% (510/510), 595.68 KiB | 1.51 MiB/s, done.
    Resolving deltas: 100% (234/234), done.
    Resolving Hex dependencies...
    Dependency resolution completed:
      basho_exometer_core 1.0.2
      basho_stats 1.0.3
      bear 0.8.5
      blume 0.1.1
      chash 0.1.2
      edown 0.8.1
      eleveldb 2.2.20
      folsom 0.8.5
      gen_fsm_compat 0.3.0
      goldrush 0.1.9
      parse_trans 2.9.0
      pbkdf2 2.0.0
      setup 1.7.0
    * Updating goldrush (Hex package)
    * Getting basho_stats (Hex package)
    * Getting pbkdf2 (Hex package)
    * Getting blume (Hex package)
    * Getting chash (Hex package)
    * Getting eleveldb (Hex package)
    * Getting gen_fsm_compat (Hex package)
    * Getting exometer_core (Hex package)
    * Getting folsom (Hex package)
    * Getting parse_trans (Hex package)
    * Getting setup (Hex package)
    * Getting edown (Hex package)
    * Getting bear (Hex package)
    
    /bryanhuntesl/gen_fsm_compat_broken_from_elixir master* 6s
    ❯ mix compile
    ===> Compiling setup
    src/setup.erl:157: Warning: export_all flag enabled - all functions will be exported
    
    ===> Compiling bear
    src/bear.erl:28: Warning: export_all flag enabled - all functions will be exported
    
    ===> Compiling basho_stats
    src/basho_stats_rv.erl:38: Warning: random:uniform/0: the 'random' module is deprecated; use the 'rand' module instead
    src/basho_stats_rv.erl:44: Warning: random:uniform/0: the 'random' module is deprecated; use the 'rand' module instead
    src/basho_stats_rv.erl:57: Warning: random:uniform/0: the 'random' module is deprecated; use the 'rand' module instead
    src/basho_stats_rv.erl:58: Warning: random:uniform/0: the 'random' module is deprecated; use the 'rand' module instead
    src/basho_stats_rv.erl:68: Warning: random:uniform/0: the 'random' module is deprecated; use the 'rand' module instead
    
    ===> Fetching rebar_erl_vsn ({pkg,<<"rebar_erl_vsn">>,<<"0.2.0">>})
    ===> Downloaded package, caching at /Users/bryanhunt/.cache/rebar3/hex/default/packages/rebar_erl_vsn-0.2.0.tar
    ===> Compiling rebar_erl_vsn
    ===> Compiling gen_fsm_compat
    ===> Unable to run pre hooks for 'compile', command 'erl_vsn' not found.
    ** (Mix) Could not compile dependency :gen_fsm_compat, "/Users/bryanhunt/.mix/rebar3 bare compile --paths "/bryanhuntesl/gen_fsm_compat_broken_from_elixir/_build/dev/lib/*/ebin"" command failed. You can recompile this dependency with "mix deps.compile gen_fsm_compat", update it with "mix deps.update gen_fsm_compat" or clean it with "mix deps.clean gen_fsm_compat"


So the specific error was  :

```
** (Mix) Could not compile dependency \
:gen_fsm_compat, \
"/Users/bryanhunt/.mix/rebar3 bare compile --paths "/bryanhuntesl/gen_fsm_compat_broken_from_elixir/_build/dev/lib/*/ebin"" command failed.\ 
You can recompile this dependency with "mix deps.compile gen_fsm_compat", update it with "mix deps.update gen_fsm_compat" or clean it with "mix deps.clean gen_fsm_compat"
```

I change to the directory and execute the same command :


```
/bryanhuntesl/gen_fsm_compat_broken_from_elixir/deps/gen_fsm_compat master*
❯ rebar3 bare compile
===> Uncaught error in rebar_core. Run with DEBUG=1 to see stacktrace or consult rebar3.crashdump
===> When submitting a bug report, please include the output of `rebar3 report "your command"`

/bryanhuntesl/gen_fsm_compat_broken_from_elixir/deps/gen_fsm_compat master*
❯ DEBUG=1 rebar3 bare compile
===> Expanded command sequence to be run: []
===> Provider: {default,do}
===> Expanded command sequence to be run: [{default,app_discovery},
                                                  {bare,compile}]
===> Provider: {default,app_discovery}
===> Not adding provider default erl_vsn from module rebar_erl_vsn_prv because it already exists from module rebar_erl_vsn_prv
===> Not adding provider default erl_vsn from module rebar_erl_vsn_prv because it already exists from module rebar_erl_vsn_prv
===> Provider: {bare,compile}
===> Uncaught error in rebar_core. Run with DEBUG=1 to see stacktrace or consult rebar3.crashdump
===> Uncaught error: function_clause
===> Stack trace to the error location:
[{string,lexemes_m,
         [undefined,{" "," ",undefined},[]],
         [{file,"string.erl"},{line,1155}]},
 {rebar_prv_bare_compile,do,1,
                         [{file,"/private/tmp/rebar@3-20171223-2480-14zgrnz/rebar3-3.5.0/_build/default/lib/rebar/src/rebar_prv_bare_compile.erl"},
                          {line,45}]},
 {rebar_core,do,2,
             [{file,"/private/tmp/rebar@3-20171223-2480-14zgrnz/rebar3-3.5.0/_build/default/lib/rebar/src/rebar_core.erl"},
              {line,154}]},
 {rebar_prv_do,do_tasks,2,
               [{file,"/private/tmp/rebar@3-20171223-2480-14zgrnz/rebar3-3.5.0/_build/default/lib/rebar/src/rebar_prv_do.erl"},
                {line,68}]},
 {rebar_core,do,2,
             [{file,"/private/tmp/rebar@3-20171223-2480-14zgrnz/rebar3-3.5.0/_build/default/lib/rebar/src/rebar_core.erl"},
              {line,154}]},
 {rebar3,main,1,
         [{file,"/private/tmp/rebar@3-20171223-2480-14zgrnz/rebar3-3.5.0/_build/default/lib/rebar/src/rebar3.erl"},
          {line,66}]},
 {escript,run,2,[{file,"escript.erl"},{line,759}]},
 {escript,start,1,[{file,"escript.erl"},{line,277}]}]
===> When submitting a bug report, please include the output of `rebar3 report "your command"`

/bryanhuntesl/gen_fsm_compat_broken_from_elixir/deps/gen_fsm_compat master*
```

The contents of `deps/gen_fsm_compat/rebar.config` are : 

```

{erl_opts, [debug_info]}.
{deps, []}.
{plugins, [rebar_erl_vsn]}.
{provider_hooks, [{pre, [{compile, erl_vsn}]}]}.

```


