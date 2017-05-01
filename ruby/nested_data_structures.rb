classroom = {
  'desk_1' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
    
  'desk_2' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
    
  'desk_3' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
    
  'desk_4' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
    
  'desk_5' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
  'desk_6' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
  'desk_7' => [
      'pencil',
      'pen',
      'paper',
      'notebook',
      'textbook',
    ],
}

# Change pencil to number 2 pencil in desk 1 
classroom['desk_1'][0] = "Number 2 Pencil"
p classroom['desk_1'][0]

# Add a highligher to desk 7
classroom['desk_7'].push("highligher")
p classroom['desk_7'].last

# Remove the pen from desk 3
classroom['desk_3'].delete("pen")
p classroom['desk_3']

# Prints out data structure very nicely
classroom.each{|key, value| p "#{key}: #{value}"} 