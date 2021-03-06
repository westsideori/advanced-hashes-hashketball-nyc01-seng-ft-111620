require "pry"
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(bball_player)
  game_hash
  points_scored = nil
  game_hash.each do |team_status, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == bball_player
        points_scored = player[:points]
      end
    end
  end
  points_scored
end    
    
def shoe_size(bball_player)
  game_hash
  player_shoe = nil
  game_hash.each do |team_status, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == bball_player
        player_shoe = player[:shoe]
      end
    end
  end
  player_shoe
end
    

def team_colors(team)
  game_hash
  team_colors = nil
  game_hash.each do |team_status, team_info|
    if team_info[:team_name] == team
      team_colors = game_hash[team_status][:colors]
    end
  end
  team_colors
end
    

def team_names
  game_hash
  teams = []
  teams << game_hash[:home][:team_name]
  teams << game_hash[:away][:team_name]
  teams
end

def player_numbers(team)
  game_hash
  player_numbers = []
  game_hash.each do |team_status, team_info|
    if team_info[:team_name] == team
      team_info[:players].each do |player|
        player_numbers << player[:number]
      end
    end
  end
  player_numbers
end
    
def player_stats(bball_player)
  game_hash
  stat_hash = {}
  game_hash.each do |team_status, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == bball_player
        stat_hash = player
      end
    end
  end
  stat_hash
end
    
def big_shoe_rebounds
  game_hash
  shoe_array = []
  big_shoe_player_boards = nil
  game_hash.each do |team_status, team_info|
    team_info[:players].each do |player|
      shoe_array << player[:shoe]
    end
  end
  biggest_shoe = shoe_array.max
  game_hash.each do |team_status, team_info|
    team_info[:players].each do |player|
      if player[:shoe] == biggest_shoe
        big_shoe_player_boards = player[:rebounds]
      end
    end
  end
  big_shoe_player_boards
end
