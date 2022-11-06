class Member < ApplicationRecord
  has_many :meetings, through: :member_meetings
  has_many :member_meetings

  def self.search(search)
    if search
      member_results = Member.find_by(student_ID: search)
        if member_results
          self.where(student_ID: search)
          #redirect_to member_path(:id => 2)
          #redirect_to action: 'show', id: 2
        else
          @members = Member.all
        end
    else
      @members = Member.all
    end
  end
end
