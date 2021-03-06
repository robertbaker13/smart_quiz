
helpers do
  def update_student_from_oauth(args, token, expires, jwt)
    student = Student.find_by(email: args.fetch("email")) || Student.new(email: args.fetch("email"))
    student.name = args.fetch("name")
    student.given_name = args.fetch("given_name")
    student.family_name = args.fetch("family_name")
    student.picture = args.fetch("picture")
    student.token = token
    student.expires = expires
    student.jwt = jwt
    student.save
    student
  end

  def login(student_id)
    session[:user_id] = student_id
  end

  def logged_in?
    !!session[:user_id]
  end

  def log_out
    session[:user_id] = nil
  end
end

