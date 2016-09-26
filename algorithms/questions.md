1. Implement merge sort. What's the bigO and why?
  bigO is equal to the number of items a method had to return, everytime it was run. Example: If a method is given method is given an array of 10 element and it returns one item per element, it would be a bigO of 10. If it returned two things everytime it was run (given that same array of 10 elements) it would be a bigO of 20.

2. Write a method to reverse a string. (Hint: You cannot use reverse method)

  def reverse(string)
    letters = string.length
    new_word = ""
    while letters > 0
      letters -= 1
      new_word += string[letter]
    end
    new_word
  end


3. Write a method to see if string is a palindrome

  + with #reverse
      def palindrome?(string)
        string == string.reverse
      end

  + without #reverse
      def palindrome?(word)
        given_word = word.split("")
        word_length = word.length
        letter1 = given_word.first
        letter2 = given_word.last

        while given_word.length > 0 do
          if letter1 == letter2
            # given_word.pop
            # given_word.shift
            # given_word.slice(1..-2)
            given_word.select { |a| a != letter1 && a != letter2 }
            return true
          else
            return false   
          end
        end
      enda

    + without #reverse & without producing a new string/array
        def palindrome?(string)
          length = string.length
          letter1 = string[0]
          letter2 = string[-1]

          while length > 0 do
            if letter1 == letter1
              string.slice(1..-2)
              return true
            else
              return false
            end
          end
        end

4. Given the root note in a sorted binary search tree, how do you find the smallest element?

    If looking at a visual binary tree the smallest number will be the number furthest to the left.
      + Given a tree structure where a root will only have one right and one left branch (binary tree). And, an array of random unique numbers: Each iteration would start at the top of the tree, or the root. Then, if that root spot is already taken, check to see if the current number is larger or smaller than that root number. If it's larger it'll move to the right and if it's smaller it'll move to the left. And, the number you're currently working with should do this until it finds an available (empty) spot.
      + You'll know if you've reach the smallest number if you're moving down every left branch and the next value returns "nill".
