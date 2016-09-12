class Response < ApplicationRecord
  belongs_to :prompt
  belongs_to :subject, :class_name => "User"
  has_many :votes
  has_attached_file :image,
  styles: { medium: "300x300#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def king_check
    kinger = 0
    temp_high_vote = 0
    prospective_king = []
    self.prompt.responses.each do |r|
      kinger += r.votes.count
      if r.votes.count > temp_high_vote
        temp_high_vote = r.votes.count
        prospective_king = r.subject
      end
    end
    if kinger == 2
      User.update_overthrow_points_failure
      prospective_king.make_king
    end
  end

  def update_votes(user)
    if user_voted?(user)
      update_king_points_unvote
      update_respondent_points_unvote
      unvote(user)
    else
      update_king_points_vote
      update_respondent_points_vote
      vote(user)
    end
    self.king_check
  end

  def votes_number(user)
    "#{self.votes.count}".html_safe
  end

  def king_points
    "#{User.find_by(king: true).points}".html_safe
  end

  def subject_points(user)
    "#{User.find(self.subject_id).points}".html_safe
  end

  def upvote_class(user)
    if user_voted?(user)
      "fa fa-thumbs-up"
      #  "<pre><code> &#128077; </code></pre>".html_safe
    else
      "fa fa-thumbs-o-up"
      #  "<pre><code> &#9994; </code></pre>".html_safe
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
    User.find(self.prompt.king_id).points += 3
    self.votes.find_by(subject_id: user.id).destroy
  end

  def update_king_points_vote
    king = User.find(self.prompt.king_id)
    king_current_score = king.points
    king_new_score = king_current_score += 1
    king.update(points: king_new_score)
  end

  def update_king_points_unvote
    king = User.find(self.prompt.king_id)
    king_current_score = king.points
    king_new_score = king_current_score -= 1
    king.update(points: king_new_score)
  end

  def update_respondent_points_vote
    respondent = User.find(self.subject_id)
    respondent_current_score = respondent.points
    respondent_new_score = respondent_current_score += 3
    respondent.update(points: respondent_new_score)
  end

  def update_respondent_points_unvote
    respondent = User.find(self.subject_id)
    respondent_current_score = respondent.points
    respondent_new_score = respondent_current_score -= 3
    respondent.update(points: respondent_new_score)
  end

end
