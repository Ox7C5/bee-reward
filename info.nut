/*
 * This file is part of BeeReward, which is a GameScript for OpenTTD
 * Copyright (C) 2014-2015  alberth / andythenorth / jottyfan
 *
 * BeeReward is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * BeeReward is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with BeeReward; If not, see <http://www.gnu.org/licenses/> or
 * write to the Free Software Foundation, Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA 02110-1301 USA.
 */

SAVEGAME_VERSION <- 6; // Set manually if/when save games break.
MINCOMPATIBLE_SAVEGAME_VERSION <- 5; // cset: c87ea540a037

PROGRAM_VERSION <- Syntax error, set by 'make bundle'.
PROGRAM_DATE <- Syntax error, set by 'make bundle'.
PROGRAM_NAME <- Syntax error, set by 'make bundle'.

class BeeRewardInfo extends GSInfo {
    function GetAuthor()        { return "alberth, andythenorth, jottyfan, 0x7C5"; }
    function GetName()          { return "Bee Reward 2"; } // Old: return PROGRAM_NAME;
    function GetDescription()   { return "Make connection, transport cargo, receive reward"; }
    function GetVersion()       { return PROGRAM_VERSION + SAVEGAME_VERSION * 100000; }
    function GetDate()          { return PROGRAM_DATE; }
    function CreateInstance()   { return "BeeRewardClass"; }
    function GetShortName()     { return "BREW"; }
    function GetAPIVersion()    { return "1.5"; }
    function GetUrl()           { return "https://github.com/Ox7C5/bee-reward"; }
    function MinVersionToLoad() { return MINCOMPATIBLE_SAVEGAME_VERSION; }
    function GetSettings();
}

function BeeRewardInfo::GetSettings()
{
    GSInfo.AddSetting({name="num_goals",
                       description="Number of goals for a company (1-32)",
                       min_value=1,
                       max_value=32,
                       easy_value=16,
                       medium_value=8,
                       hard_value=4,
                       custom_value=8,
                       flags=GSInfo.CONFIG_NONE});
    GSInfo.AddSetting({name="wait_years",
                       description="Time to wait before first delivery (4-20 year)",
                       min_value=4,
                       max_value=20,
                       easy_value=10,
                       medium_value=5,
                       hard_value=3,
                       custom_value=7,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="cargo_mp",
                       description="Cargo amount multiplier (50-2000%)",
                       min_value=50,
                       max_value=2000,
                       easy_value=1000,
                       medium_value=500,
                       hard_value=100,
                       custom_value=500,
                       step_size = 10,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="pass_weight",
                       description="Likelihood of selecting passengers as goal (1-20)",
                       min_value=1,
                       max_value=20,
                       easy_value=1,
                       medium_value=1,
                       hard_value=1,
                       custom_value=1,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="mail_weight",
                       description="Likelihood of selecting mail as goal (1-20)",
                       min_value=1,
                       max_value=20,
                       easy_value=1,
                       medium_value=1,
                       hard_value=1,
                       custom_value=1,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="town_weight",
                       description="Likelihood of selecting other town cargoes as goal (1-20)",
                       min_value=1,
                       max_value=20,
                       easy_value=1,
                       medium_value=1,
                       hard_value=1,
                       custom_value=1,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="subsidy_factor",
                       description="Factor to be multiplied with cargo amount as reward",
                       min_value=0,
                       max_value=4000,
                       easy_value=3000,
                       medium_value=2000,
                       hard_value=1000,
                       custom_value=0,
                       step_size=1,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="rewardfactor_town",
                       description="Extra factor to be multiplied with reward for towns",
                       min_value=0,
                       max_value=1000,
                       easy_value=500,
                       medium_value=200,
                       hard_value=0,
                       custom_value=0,
                       step_size=1,
                       flags=GSInfo.CONFIG_INGAME});
    GSInfo.AddSetting({name="rewardfactor_ind",
                       description="Extra factor to be multiplied with reward for industries",
                       min_value=0,
                       max_value=200,
                       easy_value=200,
                       medium_value=100,
                       hard_value=0,
                       custom_value=0,
                       step_size=1,
                       flags=GSInfo.CONFIG_INGAME});
}

RegisterGS(BeeRewardInfo());
