import SwiftSMTP

let smtp = SMTP(
    hostname: "smtp.daum.net",
    email: "eunmin@hanmail.net",
    password: "password"
)

let from = Mail.User(name: "김은민", email: "eunmin@hanmail.net")
let to = Mail.User(name: "Eunmin Kim", email: "telepopsound@gmail.com")

let mail = Mail(
    from: from,
    to: [to],
    subject: "Swfit SMTP 연습",
    text: "본문"
)

smtp.send(mail) { (error) in
    if let error = error {
        print(error)
    }
}

print("Send, OK!")
