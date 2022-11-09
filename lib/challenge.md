1. Describe the problem 
I want to check if a text includes the string #TODO.

2. Design method signature 
- name 
    string_check
- param 
    string
- return val 
    boolean
- side effects
    nothing 

3. test examples 
    "Hello this is my #TODO list" => true 
    "Blah blah blah" => false
    "" => false 
    "I'm going TO #DO a dance" => false 

4. implementation 
    - regex 