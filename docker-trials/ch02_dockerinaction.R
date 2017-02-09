### container state and dependencies
mailer_cid <- system("docker run -d dockerinaction/ch2_mailer", intern = TRUE)
web_cid <- system("docker create nginx", intern = TRUE)

agent_cid <- system(paste("docker create --link", paste(web_cid, "insideweb", sep = ":"), "--link", paste(mailer_cid, "insidemailer", sep = ":"), "dockerinaction/ch2_agent"), intern = TRUE)

# creation - mailer -> web -> agent
# web should start earlier
system(paste("docker start", web_cid), intern = TRUE)
system(paste("docker start", agent_cid), intern = TRUE)

system("docker stop `docker ps -aq -f status=running`", intern = TRUE)
system("docker rm `docker ps -aq -f status=exited`", intern = TRUE)
#system("docker rm -f `docker ps -aq -f status=running`", intern = TRUE)

### building environment-agnostic systems








