Post.destroy_all
UserPreference.destroy_all
User.destroy_all
Preference.destroy_all


alex = User.create(id:1, name:"Alex Rodriguez", user_name:"alex_is_cool", age: 21, bio:"i am super cool be my friend", password:"123", image: "https://i.pinimg.com/originals/c7/73/f4/c773f4d77f6088a92d4ac01b94b8296d.jpg")
wadgma = User.create(id:2, name:"Wadgma Masab", user_name:"wadgma", age: 23, bio:"i'm never on time but it's worth the wait", password:"123", image: "https://avatars2.githubusercontent.com/u/18315650?s=460&v=4")
pongo = User.create(id:3, name:"Pongo Messersmith", user_name:"pongo", age: 9, bio:"yo. everything is just like, opinions, man.", password:"123", image: "https://barkpost-assets.s3.amazonaws.com/wp-content/uploads/2013/11/hot.jpg")
max = User.create(id:4, name:"Max Messersmith", user_name:"max", age: 10, bio:"BARK BARK BARK BARK", password:"123", image: "https://i.imgur.com/aehLLe9.png")


coding = Preference.create(id:1, name:"Coding", image: "https://images.idgesg.net/images/article/2018/07/anonymous_guy_fawkes_mask_half-hidden_in_landscape_hacker_hacking_protest_by_javardh_cc0_via_unsplash_1200x800-100765109-large.jpg")
netflix = Preference.create(id:2, name:"Netflix & Chill", image:"https://upload.wikimedia.org/wikipedia/commons/7/7e/Netflix_and_Chill_Graffiti.jpg")
hiking = Preference.create(id:3, name:"Hiking", image:"https://www.gore-tex.com/sites/default/files/blog_images/Hugo-Chisholm-Hiking-1.jpg")
dancing = Preference.create(id:4, name:"Dancing", image:"https://cdn1.thr.com/sites/default/files/imagecache/768x433/2019/09/dancing_with_the_stars_lindsay_arnold_sean_spicer.jpg")
drinking = Preference.create(id:5, name:"Drinking", image:"https://www.gannett-cdn.com/-mm-/ac688eec997d2fce10372bf71657297ff863814d/c=171-0-1195-768/local/-/media/2019/09/10/USATODAY/usatsports/gettyimages-915357028.jpg?width=540&height=405&fit=crop")
birds = Preference.create(id:6, name:"Bird Watching", image:"https://media.phillyvoice.com/media/images/bird-in-spinach.2e16d0ba.fill-735x490.jpg")
board = Preference.create(id:7, name:"Board Games", image:"https://cdn.theatlantic.com/assets/media/img/mt/2018/01/RTX31EX0toned/lead_720_405.jpg?mod=1533691921")
vid = Preference.create(id:8, name:"Video Games", image:"https://edsurge.imgix.net/uploads/post/image/11684/GamingClassroom-1548049731.jpg?auto=compress%2Cformat&w=640&h=259&fit=crop")
lit = Preference.create(id:9, name:"Literature", image:"https://images.livemint.com/rf/Image-621x414/LiveMint/Period2/2018/10/01/Photos/Processed/book-kuAE--621x414@LiveMint-6a1c.jpg")
art = Preference.create(id:10, name:"Art", image:"https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg")
food = Preference.create(id:11, name:"Food", image:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/screen-shot-2019-08-29-at-9-38-54-am-1567085949.png?crop=1.00xw:0.801xh;0,0&resize=640:*")
philosophy = Preference.create(id:12, name:"Philosophy", image:"https://www.ancient.eu/img/r/p/500x600/906.jpg?v=1539198828")
conversation = Preference.create(id:13, name:"Conversation", image:"https://psychologybenefits.files.wordpress.com/2013/02/istock_000022812361xsmall.jpg")


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
