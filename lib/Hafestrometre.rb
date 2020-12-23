require "Hafestrometre/version"

module Hafestrometre
  class Error < StandardError; end
  
  class Language

    ## Guides you through the process of training your baysian model.
    def self.train
      system("clear")

      old_labels  = File.read("data/labels/old_labels.txt")
      old_trainer = File.read("data/trainer/old_trainer.txt")

      print   "Create a label >> "; new_label = gets.chomp
      print "Create a trainer >> "; new_trainer = gets.chomp

      trainer_model = "a.train(:#{new_trainer}, '#{new_trainer}', 'word')"

      a_trainer = "require 'naive_bayes'

a = NaiveBayes.new(
  #{old_labels}
  :#{new_label},
)

a.db_filepath = 'data/baysian/language.nb'

#{old_trainer}
#{trainer_model}

a.save"

      open("data/labels/old_labels.txt", "w") { |f|
        f.puts old_labels
        f.puts "  :#{new_label},"
      }

      open("data/trainer/old_trainer.txt", "w") { |f|
        f.puts old_trainer
        f.puts trainer_model
      }

      open("trainer.rb", "w") { |f|
        f.puts a_trainer
      }

      # Does the actual training.
      system("ruby trainer.rb; shred --remove trainer.rb")
    end

    ## Command for actually training your model.
    def self.classify
      print ">> "
      strings = gets.chomp.split(" ")

      number = 0

      size_limit = strings.size.to_i

      size_limit.times do
        require "naive_bayes"

        a = NaiveBayes.load('data/baysian/language.nb') 

        b = strings[number]

        classify = a.classify(*b)

        label = classify[0]
        probability = classify[1]

        puts "<< #{label} has a likelihood of #{probability} percent."

        number += 1
      end
    end
  end
end
