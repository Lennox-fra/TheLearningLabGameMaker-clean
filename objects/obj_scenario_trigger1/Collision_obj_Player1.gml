/// obj_scenario_trigger : Collision with obj_Player

if (instance_exists(obj_Game))
{
    with (obj_Game)
    {
        if (state == "idle")
        {
            start_random_scenario();
        }
    }

    instance_destroy();
}