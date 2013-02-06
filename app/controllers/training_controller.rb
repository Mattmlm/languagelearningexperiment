class TrainingController < ApplicationController
  @@counter = 0;
  # @@exp_images = ['https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/cat.gif', 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/dog.gif', 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/horse.jpeg']
  @@exp_images = ['https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/x1%20key.jpg', 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/dog.gif', 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/horse.jpeg']
  @@num_trials = 3
  
  def start
    @time = Time.now
    
  end
  
  def stimulus
    # @training_image = 'https://dl.dropbox.com/u/883211/Julia%27s%20site/assets/images/cat.gif'
    @stimulus_counter = @@counter
    @max_stimuli = @@num_trials
    @training_image = @@exp_images[@stimulus_counter]
  end
end
