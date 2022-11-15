# frozen_string_literal: true

if User.count.zero?
  puts 'Creating admin user'
  User.create!([
                 { email: 'adm@n', password: 'ACSadmin',
                   encrypted_password: '$2a$12$G8Bj2ss2uSt7GKDMA98Tw.x.qLsg.c2vH6I8QEBG7RA3nGdN4gLiC', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first: 'Admin', last: 'Main', student_id: '1', admin: true, dues: false }
               ])
end
