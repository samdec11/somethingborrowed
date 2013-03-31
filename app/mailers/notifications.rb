class Notifications < ActionMailer::Base
  def return_verification(owner, borrower)
  end

  def borrow_request_message(owner, borrower, item)
    @owner = owner
    @borrower = borrower
    @item = item
    mail :to => owner.email, :from => "smthingborrowed@gmail.com", :subject => "#{borrower.name} wants to borrow your #{item.name}"
  end

  def borrow_instructions_message(owner, borrower, item, where, whn, email, phone, spec_instructions)
    @owner = owner
    @borrower = borrower
    @item = item
    @where = where
    @when = whn
    @email = email
    @phone = phone
    @spec_instructions = spec_instructions
    mail :to => borrower.email, :from => "smthingborrowed@gmail.com", :subject => "#{owner.name}'s instructions for borrowing the #{item.name} you requested."
  end
end