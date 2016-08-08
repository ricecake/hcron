-module(hcron_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init(_Args) ->
	{ok, {#{ intensity => 5, period => 10}, [
		#{
			id => hcron_vnode_master,
			start => {riak_core_vnode_master, start_link, [hcron_vnode]}
		}
	]}}.
