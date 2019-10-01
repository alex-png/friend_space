
UserPreference.destroy_all
User.destroy_all
Preference.destroy_all


alex = User.create(id:1, name:"Alex Rodriguez", user_name:"alex_is_cool", age: 21, bio:"i am super cool be my friend", password:"123")
wadgma = User.create(id:2, name:"Wadgma Masab", user_name:"wadgma", age: 23, bio:"i'm never on time but it's worth the wait", password:"123")
pongo = User.create(id:3, name:"Pongo Messersmith", user_name:"pongo", age: 9, bio:"yo. everything is just like, opinions, man.", password:"123")
max = User.create(id:4, name:"Max Messersmith", user_name:"max", age: 10, bio:"BARK BARK BARK BARK", password:"123")


coding = Preference.create(id:1, name:"Coding")
netflix = Preference.create(id:2, name:"Netflix & Chill")
hiking = Preference.create(id:3, name:"Hiking")
dancing = Preference.create(id:4, name:"Dancing")
books = Preference.create(id:5, name:"Drinking")
birds = Preference.create(id:6, name:"Bird Watching")
board = Preference.create(id:7, name:"Board Games")
vid = Preference.create(id:8, name:"Video Games")
lit = Preference.create(id:9, name:"Literature")
art = Preference.create(id:10, name:"Art")
food = Preference.create(id:11, name:"Food")
philosophy = Preference.create(id:12, name:"Philosophy")
conversation = Preference.create(id:13, name:"Conversation")


UserPreference.create(id:1, user_id:1, preference_id:1)
UserPreference.create(id:2, user_id:1, preference_id:2)
UserPreference.create(id:3, user_id:1, preference_id:3)
UserPreference.create(id:4, user_id:1, preference_id:4)
UserPreference.create(id:5, user_id:1, preference_id:5)
UserPreference.create(id:6, user_id:2, preference_id:1)
UserPreference.create(id:7, user_id:2, preference_id:2)
UserPreference.create(id:8, user_id:2, preference_id:5)
UserPreference.create(id:9, user_id:2, preference_id:6)
UserPreference.create(id:10, user_id:3, preference_id:8)
UserPreference.create(id:11, user_id:3, preference_id:7)
UserPreference.create(id:12, user_id:4, preference_id:5)
UserPreference.create(id:13, user_id:4, preference_id:4)
