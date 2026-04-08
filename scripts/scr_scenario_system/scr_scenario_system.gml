/// scr_scenario_system

function add_scenario(_nodes_array) {
    var s = {};
    s.nodes = _nodes_array;
    array_push(global.scenarios, s);
}

function setup_scenario_pool() {
    global.available_scenarios = [];

    for (var i = 0; i < array_length(global.scenarios); i++) {
        array_push(global.available_scenarios, i);
    }
}