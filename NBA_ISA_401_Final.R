
# Downloadables :) --------------------------------------------------------

pacman::p_load(rvest, tidyverse)
library(lubridate)
pacman::p_load(tidyverse,skimr,DataExplorer,VIM)
pacman::p_load(pointblank)



# 2021 NBA Stats ----------------------------------------------------------

nba_link = "https://www.basketball-reference.com/leagues/NBA_2022.html#all_per_game_team-opponent"
nba_html = read_html(x = nba_link)

team = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(2) > a') %>% html_text()
W = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(4)') %>% html_text()
L = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(5)') %>% html_text()
margin_of_victory = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(8)') %>% html_text()
off_rating = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(11)') %>% html_text()
def_rating = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(12)') %>% html_text()
team_fg_pct = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(19)') %>% html_text()
opp_fg_pct = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(24)') %>% html_text()
off_rebound_pct = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(21)') %>% html_text()
def_rebound_pct = nba_html %>% html_nodes('#advanced-team > tbody > tr > td:nth-child(26)') %>% html_text()

team_stats_2021 = tibble(
  team = team,
  W = W,
  L = L,
  margin_of_victory = margin_of_victory,
  off_rating = off_rating,
  def_rating = def_rating,
  team_fg_pct = team_fg_pct,
  opp_fg_pct = opp_fg_pct,
  off_rebound_pct = off_rebound_pct,
  def_rebound_pct = def_rebound_pct
)
team_stats_2021

# 2021 College Stats ------------------------------------------------------

ncaa_link = "https://www.sports-reference.com/cbb/seasons/2022-school-stats.html"
ncaa_html = read_html(x = ncaa_link)

col_team = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td.left') %>% html_text()
col_W = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(4)') %>% html_text()
col_L = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(5)') %>% html_text()
col_fg_pct = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(25)') %>% html_text()
col_3p_pct = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(28)') %>% html_text()
col_rebounds = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(33)') %>% html_text()
col_steals = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(35)') %>% html_text()
col_blocks = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(36)') %>% html_text()
conf_w = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(10)') %>% html_text()
conf_L = ncaa_html %>% html_nodes('#basic_school_stats > tbody > tr > td:nth-child(11)') %>% html_text()

college_team_stats_2021 = tibble (
  col_team = col_team,
  col_W = col_W,
  col_L = col_L,
  col_fg_pct = col_fg_pct,
  col_3p_pct = col_3p_pct,
  col_rebounds = col_rebounds,
  col_steals = col_steals,
  col_blocks = col_blocks,
  conf_w = conf_w,
  conf_L = conf_L
)

# Cavs Historic Data ------------------------------------------------------

cavs_link = "https://www.basketball-reference.com/teams/CLE/"
cavs_html = read_html(x = cavs_link)

cavs_season = cavs_html %>% html_nodes('#CLE > tbody > tr > th') %>% html_text()
cavs_W = cavs_html %>% html_nodes('#CLE > tbody > tr > td:nth-child(4)') %>% html_text()
cavs_L = cavs_html %>% html_nodes('#CLE > tbody > tr > td:nth-child(5)') %>% html_text()
cavs_off_rating = cavs_html %>% html_nodes('#CLE > tbody > tr > td:nth-child(12)') %>% html_text()
cavs_def_rating = cavs_html %>% html_nodes('#CLE > tbody > tr > td:nth-child(14)') %>% html_text()

cavs_historical_stats = tibble(
  cavs_season = cavs_season,
  cavs_W = cavs_W,
  cavs_L = cavs_L,
  cavs_off_rating = cavs_off_rating,
  cavs_def_rating = cavs_def_rating
)
cavs_historical_stats


# Dallas Historic Data -----------------------------------------------------

DALs_link = "https://www.basketball-reference.com/teams/DAL/"
DALs_html = read_html(x = DALs_link)

DALs_season = DALs_html %>% html_nodes('#DAL > tbody > tr > th') %>% html_text()
DALs_W = DALs_html %>% html_nodes('#DAL > tbody > tr > td:nth-child(4)') %>% html_text()
DALs_L = DALs_html %>% html_nodes('#DAL > tbody > tr > td:nth-child(5)') %>% html_text()
DALs_off_rating = DALs_html %>% html_nodes('#DAL > tbody > tr > td:nth-child(12)') %>% html_text()
DALs_def_rating = DALs_html %>% html_nodes('#DAL > tbody > tr > td:nth-child(14)') %>% html_text()

DALs_historical_stats = tibble(
  DALs_season = DALs_season,
  DALs_W = DALs_W,
  DALs_L = DALs_L,
  DALs_off_rating = DALs_off_rating,
  DALs_def_rating = DALs_def_rating
)
DALs_historical_stats

# Nets Historic Data ------------------------------------------------------

nets_link = "https://www.basketball-reference.com/teams/NJN/"
nets_html = read_html(x = nets_link)

nets_season = nets_html %>% html_nodes('#NJN > tbody > tr > th') %>% html_text()
nets_W = nets_html %>% html_nodes('#NJN > tbody > tr > td:nth-child(4)') %>% html_text()
nets_L = nets_html %>% html_nodes('#NJN > tbody > tr > td:nth-child(5)') %>% html_text()
nets_off_rating = nets_html %>% html_nodes('#NJN > tbody > tr > td:nth-child(12)') %>% html_text()
nets_def_rating = nets_html %>% html_nodes('#NJN > tbody > tr > td:nth-child(14)') %>% html_text()

nets_historical_stats = tibble(
  nets_season = nets_season,
  nets_W = nets_W,
  nets_L = nets_L,
  nets_off_rating = nets_off_rating,
  nets_def_rating = nets_def_rating
)
nets_historical_stats



  # Tidy --------------------------------------------------------------------

    # Due to the nature of the websites puling the data there is no pivoting necessary
    # This is going to change the variables into their correct types

glimpse(team_stats_2021)

  team_stats_2021$W = as.integer(team_stats_2021$W)
  team_stats_2021$L = as.integer(team_stats_2021$L)
  team_stats_2021$margin_of_victory  = as.integer(team_stats_2021$margin_of_victory )
  team_stats_2021$off_rating = as.integer(team_stats_2021$off_rating)
  team_stats_2021$def_rating = as.integer(team_stats_2021$def_rating)
  team_stats_2021$team_fg_pct = as.numeric(team_stats_2021$team_fg_pct)
  team_stats_2021$opp_fg_pct = as.numeric(team_stats_2021$opp_fg_pct)
  team_stats_2021$off_rebound_pct = as.numeric(team_stats_2021$off_rebound_pct)
  team_stats_2021$def_rebound_pct = as.numeric(team_stats_2021$def_rebound_pct)
  
glimpse(college_team_stats_2021)
    
  college_team_stats_2021$col_W = as.integer(college_team_stats_2021$col_W)
  college_team_stats_2021$col_L = as.integer(college_team_stats_2021$col_L)
  college_team_stats_2021$col_fg_pct  = as.numeric(college_team_stats_2021$col_fg_pct )
  college_team_stats_2021$col_3p_pct = as.numeric(college_team_stats_2021$col_3p_pct)
  college_team_stats_2021$col_rebounds = as.integer(college_team_stats_2021$col_rebounds)
  college_team_stats_2021$col_steals = as.integer(college_team_stats_2021$col_steals)
  college_team_stats_2021$col_blocks = as.integer(college_team_stats_2021$col_blocks)
  college_team_stats_2021$conf_w = as.integer(college_team_stats_2021$conf_w)
  college_team_stats_2021$conf_L = as.integer(college_team_stats_2021$conf_L)
  
glimpse(nets_historical_stats)

  nets_historical_stats$nets_season = as.Date(as.character(nets_historical_stats$nets_season), format = "%Y")
  nets_historical_stats$nets_W = as.integer(nets_historical_stats$nets_W)
  nets_historical_stats$nets_L = as.integer(nets_historical_stats$nets_L)
  nets_historical_stats$nets_off_rating = as.numeric(nets_historical_stats$nets_off_rating)
  nets_historical_stats$nets_def_rating = as.numeric(nets_historical_stats$nets_def_rating)
  
glimpse(DALs_historical_stats)
  
  DALs_historical_stats$DALs_season = as.Date(as.character(DALs_historical_stats$DALs_season), format = "%Y")
  DALs_historical_stats$DALs_W = as.integer(DALs_historical_stats$DALs_W)
  DALs_historical_stats$DALs_L = as.integer(DALs_historical_stats$DALs_L)
  DALs_historical_stats$DALs_off_rating = as.numeric(DALs_historical_stats$DALs_off_rating)
  DALs_historical_stats$DALs_def_rating = as.numeric(DALs_historical_stats$DALs_def_rating)
  
glimpse(cavs_historical_stats)  
  
  cavs_historical_stats$cavs_season = as.Date(as.character(cavs_historical_stats$cavs_season), format = "%Y")
  cavs_historical_stats$cavs_W = as.numeric(cavs_historical_stats$cavs_W)
  cavs_historical_stats$cavs_L = as.numeric(cavs_historical_stats$cavs_L)
  cavs_historical_stats$cavs_off_rating = as.integer(cavs_historical_stats$cavs_off_rating)
  cavs_historical_stats$cavs_def_rating = as.integer(cavs_historical_stats$cavs_def_rating)
  
# Checking for empty cells
  
  plot_missing(team_stats_2021) # all 0% missing
  plot_missing(college_team_stats_2021)# all 0% missing
  plot_missing(nets_historical_stats)# all 0% missing
  plot_missing(DALs_historical_stats)# all 0% missing
  plot_missing(cavs_historical_stats)# all 0% missing

  # Technically Correct -----------------------------------------------------

    # Technically Correct data implies correct names, types, and label
    # We did names correctly when scraping the data in (accurately title with correct information)
    # We changed all the types above
  
  sapply(team_stats_2021,class)
  sapply(college_team_stats_2021,class)
  sapply(nets_historical_stats,class)
  sapply(DALs_historical_stats,class)
  sapply(cavs_historical_stats,class) # all of these have the correct classes

  # Consistent --------------------------------------------------------------

    # Are there missing variables, do the numbers make sense (like negative wins)
  
  # Checking for empty cells
  
  plot_missing(team_stats_2021) # all 0% missing
  plot_missing(college_team_stats_2021)# all 0% missing
  plot_missing(nets_historical_stats)# all 0% missing
  plot_missing(DALs_historical_stats)# all 0% missing
  plot_missing(cavs_historical_stats)# all 0% missing
  
  # Checking variable spreads
  
  skim(team_stats_2021) 
  # Average wins = average loses, off_reb + red_reb = 100, and everything else is in reasonable bounds
  
  skim(college_team_stats_2021)
  # All the numbers are within reasonable bounds
  
  skim(nets_historical_stats)
  skim(DALs_historical_stats)
  skim(cavs_historical_stats)
  # All the numbers are within reasonable bounds

  

# Data Validation Table ---------------------------------------------------------
  
  # (A) action levels of *NBA data*
  # warn and notify if something >= 1% and do not stop
  act = action_levels(warn_at = 0.01, notify_at = 0.01, stop_at = NULL) 
  act
  
  # (B) create the agent for your data
  agent = create_agent(tbl = team_stats_2021, actions = act)
  agent
  
  # (C) Create Validation functions 

    agent %>% 
    col_is_integer(columns = vars(W,L,margin_of_victory,off_rating,def_rating)) %>% 
    col_is_character(columns = 'team') %>% # another approach for specifying the variables
    # for consistent data
    col_vals_between(columns = vars(W, L), left = 0, right = 90) -> agent
    
  # (D) Evaluate Using the interrogate function
  res = interrogate(agent) 
  res 
  
# For the college data
  
  # (B) create the agent for your data
  agent2 = create_agent(tbl = college_team_stats_2021, actions = act)
  agent2
  
  # (C) Create Validation functions
  # glimpse(college_team_stats_2021)
  agent2%>%col_is_integer(columns = vars(col_w,col_L,col_rebounds,col_steals))%>%
  col_is_character(columns = 'col_team') %>%
  col_vals_between(columns = vars(col_W, col_L), left = 0, right = 90) -> agent2
  
  # (D) Evaluate Using the interrogate function
  res2 = interrogate(agent2) 
  res2 
  
# Historic Teams (DAL First)
  
  # (B) create the agent for your data
  agent3 = create_agent(tbl = DALs_historical_stats, actions = act)
  agent3
  
  # (C) Create Validation functions
  # glimpse(DALs_historical_stats)
  agent3%>%col_is_integer(columns = vars(DALs_W,DALs_L))%>%
    col_is_date(columns = 'DALs_season') %>%
    col_vals_between(columns = vars(DALs_W,DALs_L), left = 0, right = 90) -> agent3
  
  # (D) Evaluate Using the interrogate function
  res3 = interrogate(agent3) 
  res3 
  
# Historic Brooklyn Team
  
  # (B) create the agent for your data
  agent4 = create_agent(tbl = nets_historical_stats, actions = act)
  agent4
  
  # (C) Create Validation functions
  # glimpse(nets_historical_stats)
  agent4%>%col_is_integer(columns = vars(nets_W,nets_L))%>%
    col_is_date(columns = 'nets_season') %>%
    col_vals_between(columns = vars(nets_W,nets_L), left = 0, right = 90) -> agent4
  
  # (D) Evaluate Using the interrogate function
  res4 = interrogate(agent4) 
  res4
  
# Historic Cavs 
  
  # (B) create the agent for your data
  agent5 = create_agent(tbl = cavs_historical_stats, actions = act)
  agent5
  
  # (C) Create Validation functions
  # glimpse(cavs_historical_stats)
  agent5%>%col_is_integer(columns = vars(cavs_W,cavs_L))%>%
    col_is_date(columns = 'cavs_season') %>%
    col_vals_between(columns = vars(cavs_W,cavs_L), left = 0, right = 90) -> agent5
  
  # (D) Evaluate Using the interrogate function
  res5 = interrogate(agent5) 
  res5

# CSV Exports -------------------------------------------------------------

  write.csv(nets_historical_stats, "M:\\ISA 401\\nets_historical_stats.csv", row.names = TRUE)
  write.csv(DALs_historical_stats, "M:\\ISA 401\\DALs_historical_stats.csv", row.names = TRUE)
  write.csv(cavs_historical_stats, "M:\\ISA 401\\cavs_historical_stats.csv", row.names = TRUE)
  write.csv(college_team_stats_2021, "M:\\ISA 401\\college_team_stats_2021.csv", row.names = TRUE)
  write.csv(team_stats_2021, "M:\\ISA 401\\Team_Stats_2021.csv", row.names = TRUE)
  
  export_report(x = res, filename = 'data/team_stats_2021.html')
  export_report(x = res2, filename = 'data/college_team_stats_2021.html')
  export_report(x = res3, filename = 'data/mavs_historic.html')
  export_report(x = res4, filename = 'data/nets_historic.html')
  export_report(x = res5, filename = 'data/cavs_historic.html')