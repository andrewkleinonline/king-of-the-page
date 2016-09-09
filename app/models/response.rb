class Response < ApplicationRecord
  belongs_to :prompt
  belongs_to :subject, :class_name => "User"
  has_many :votes
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def update_votes(user)
    user_voted?(user) ? unvote(user) : vote(user)
  end

  def votes_message(user)
    if !user_voted?(user)
      "<strong>#{self.votes.count} people</strong> voted for this response".html_safe
    else
      "<strong>You</strong> and <strong>#{self.votes.count - 1} other people</strong> voted for this response".html_safe
    end
  end

  def upvote_class(user)
    if user_voted?(user)
       "<pre><code> &#128077; </code></pre>".html_safe
    else
       "<pre><code> &#9994; </code></pre>".html_safe
    end
  end

  def user_voted?(user)
    self.votes.where(subject: user).any?
  end

   private

  def vote(user)
    self.votes.create(subject_id: user.id)
  end

  def unvote(user)
    self.votes.find_by(subject_id: user.id).destroy
  end



end
