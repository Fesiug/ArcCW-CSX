att.PrintName = "Hyper-Burst"
att.Icon = Material("entities/acwatt_csx_fcg_2burst.png", "mips smooth")
att.Description = "Firemode conversion allowing for a rapid two-round 'hyper burst' mode that fires both bullets in extremely rapid succession. Extra mechanical complexity increases weight and reduces effective precision."
att.Desc_Pros = {
    "Hyper-burst mode"
}
att.Desc_Cons = {
    "Slow burst delay",
}
att.AutoStats = true
att.Slot = "csx_fcg"
att.SortOrder = 12

att.Override_Firemodes = {
    {
        Mode = -2,
        RunawayBurst = true,
        PostBurstDelay = 0.25,
        Override_ShotRecoilTable = {
            [1] = 0.25
        }
    },
    {
        Mode = 0
    }
}

att.Mult_Recoil = 3
att.Mult_SightTime = 1.2
att.Mult_RPM = 3
att.Mult_AccuracyMOA = 1.5