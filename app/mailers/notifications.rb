class Notifications < ActionMailer::Base
  default :from => "smthingborrowed@gmail.com"

  def borrow_request_message(owner, borrower, item)
    @owner = owner
    @borrower = borrower
    @item = item
    mail :to => @owner.email, :subject => "#{borrower.name} wants to borrow your #{item.name}"
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
    binding.pry
    mail :to => @borrower.email, :subject => "#{owner.name}'s instructions for borrowing the #{item.name} you requested."
  end

  def return_verification_message(borrow)
    @borrow = borrow
    mail :to => @borrow.owner.email, :subject => "Please verify that #{borrow.borrower.name} returned your #{borrow.item.name}"
  end

  def review_later_message(borrow)
    @borrow = borrow
    attachments.inline['sblogo.jpg'] = File.read('app/assets/images/sblogo.jpg')
    mail :to => borrow.owner.email, :from => "smthingborrowed@gmail.com", :subject => "Rating reminder from Something Borrowed"
  end
end