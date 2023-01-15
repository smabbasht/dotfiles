set -U fish_greeting "-🐟-🐟-🐟-🐟-🐟-🐟-🐟-"

set randNum (random 2 2 212)
#echo $randNum
if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status --is-login
    set -gx PATH $PATH ~/linux/bin
end

export CHROME_EXECUTABLE=pwd

function quote
  # Set the file path to the quotes file
  set quote_file $HOME/shell_quotes_prompt/quotes.txt
  # Retrieve a random quote for the file
  sed -n $(awk "END{ print $randNum }" $quote_file)p $quote_file
end

# This function builds your prompt. It is called below:
function prompt
  # Call the quote function inside your prompt function and it prints a quote to your terminal
  quote
  # Here is where we actually export the PS1 variable which stores the text for your prompt
  export PS1
end

# Call the prompt function
prompt
