class TrainingController < ApplicationController
  # @counter = 0;
  # @exp_images = ['https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/cat.gif', 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/dog.gif', 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/horse.jpeg']
  # @num_trials = 3
  
  def start
  end
  
  def stimulus
    @training_image = 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/cat.gif'
    # @training_image = TrainingController.exp_images[counter]
  end
end
