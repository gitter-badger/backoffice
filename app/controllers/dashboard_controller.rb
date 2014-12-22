class DashboardController < ApplicationController
  def index
      @news = (current_user ? News : News.where(:public => true)).order('created_at DESC')
  end

  def me
      if current_user
          #case current_user
          #when Mentor
          #    @mentor = current_user
          #    render 'mentors/show'
          #when Student
          #    @student = current_user
          #    render 'students/show'
          #when Parent
          #    @parent = current_user
          #    render 'parents/show'
          #else
          #    redirect_to root_path, error: "Who are you???"
          #end
          redirect_to user_path(current_user.dn)
      else
          redirect_to root_path, error: "You can't do that."
      end
  end
end