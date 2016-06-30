function run(msg, matches)
if msg.to.type == 'user' then
return "خوش اومدید برای ارتباط با ادمین روی @omidhttp کلیک کنید."
end
end
return {
patterns = {"^(/start)$"},
run = run
}
