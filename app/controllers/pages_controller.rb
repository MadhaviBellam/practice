class PagesController <ApplicationController
  def about
   @a=current_user.articles
  end
end
