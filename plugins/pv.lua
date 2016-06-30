function run(msg, matches)
if msg.to.type == 'user' then
return "<code>خوش اومدید برای ارتباط با ادمین روی </code> @omidhttp <i>کلیک کنید.</i>"
end
end
return {
patterns = {"^(/start)$"},
run = run
}
