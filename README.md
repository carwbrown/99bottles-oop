# 99 Bottles

## Installing Ruby

### Windows

There's an installer, it's easy.
http://rubyinstaller.org/

### Mac

Newer macs ship with a usable version of Ruby.

Try `ruby -v` in a terminal window, and if it's 1.9.x or 2.x you're fine.

http://www.railstutorial.org/book/beginning#sec-install_ruby
http://tutorials.jumpstartlab.com/topics/environment/environment.html
http://docs.railsbridge.org/installfest/macintosh

### Linux

Ubuntu: http://docs.railsbridge.org/installfest/linux
https://www.ruby-lang.org/en/installation/

## Run Tests
```
ruby test/bottles_test.rb
```

## Notes

- code should be open for extension and closed for modification
- OO mindset avoids conditionals that supply behavior, favors condiitionals that select the correct object
- Martin Fowler The "official" Extract Class recipe:
	- linking old class to the new
	- one at a time move attributes, and then methods
- Bottles take on Fowler's recipe:
	- move the methods of interest
	- link old class to then new
- Primitive Obsession/Extract Class - create a smarter object to stand in for the primitive
- Data Clump (code smell) - defined as the situation in which several (3+) data fields routinely occur together
- Replace Conditional with State/Strategy (code smell) - creates object to hold logic from the branch of conditionals, called conditionals
- Replace Conditional with Polymorphism (code smell) - creates object to hold logic from the branch of conditionals via inheritance

### Flocking Rules

1. Select the things that are most alike.
2. Find the smallest difference between them.
3. Make the simplest change to remove that difference:
	- parse the new code
	- parse and execute it
	- parse, execute and use its result
	- delete unused code

### Liskov Principle
defintition: `Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.` <br />
example: ```If it looks like a duck, quacks like a duck, but needs batteries - You probably have the wrong abstraction```

