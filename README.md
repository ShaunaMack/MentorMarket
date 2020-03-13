# Mentor Market

## Identification of the problem to be solved
Most tech is created by middle-upper class white men, and it therefore serves their needs. Unconscious bias is embedded in all technology and can only be minimised by the inclusion of diverse perspectives building the tech. 

One extreme example of unconscious bias in tech that is intensifying racial discrimination can be found at: https://mashable.com/2016/10/03/police-technology-surveillance-racial-bias/

More diversity in the tech industry will lead to better outcomes for the whole of society. 

In addition to making equitable tech utilising the knowledge problem solving and skills across diverse technologists, the future workforce is predicted to face a major shortage of skilled workers in the next five years. Career Changers with a multitude of experience and prior knowledge moving into the tech industry can be a step towards filling this shortfall.

https://www.brennanit.com.au/australias-it-skills-shortage-is-getting-worse-not-better/

https://itbrief.com.au/story/true-diversity-and-inclusion-can-solve-australia-s-tech-talent-shortage-halcyon-knights

https://www.huffingtonpost.com.au/2017/03/31/ways-the-tech-industry-in-australia-is-trying-to-attract-and-ret_a_22019419/

## Justification and purpose

As a woman from a background where computers were unaffordable and scary, I bring a diverse way of thinking to the industry. 

My family had a distrust in computers that manifested as fear in me. In Year 12 I was very interested in Physics and Mathematics and considered a career in Mechatronics Engineering, until I saw that I needed to do a Computer Science degree for this career path and my fear of computers stopped me exploring this option.

I am not alone in this fear preventing career choice options. Often, when something is unkonwn it is feared. Having a mentor matching app that allows people to reach out to experienced technologists may help alleviate some fear and assist underrepresented groups gain the confidence to choose a career in IT.

#### Target audience
Ideally this app would hope to reach:
- people with an interest in a tech career but are fearful of the unknown
- underrepresented (in tech) groups 
    - Aboriginal and Torres Strait Islander - First Nations People
    - people from rural and remote areas
    - women
    - gender diverse - LGBTIQ community
    - neuro diverse - variations in the human brain
- technologists who want to share their skills and upskill themselves by being a mentor and also finding their own mentor(s)


#### Link to deployed app
http://www.mentormarket.rocks

or https://mentor-market.herokuapp.com/

#### Link to Mentor Market GitHub repository
https://github.com/ShaunaMack/MentorMarket


## Tech stack
Back end
- postgresql (database)
- pgAdmin (database admin UI)
- Ruby (programming language)
- Ruby on Rails (web framework)
- libraries
    - Active Admin (admin UI)
    - Active Storage (stores data - used for putting images on S3)
    - Action Mailer (automatically sends emails)
    - Action Cables (WebSockets - used for private messaging between users)
    - Devise (authentication)


Third party services
- AWS S3 (image storage)
- Heroku (running the Ruby)
- Gmail (SMTP connection for sending emails)

Front end
- HTML 
- SASS
- CSS
- Bootstrap (framework for easy CSS)
- Font Awesome (icons)
- Tiny MCE API (rich text editor)
- JQuery (JavaScript library - used to find elements in the DOM)
- CoffeeScript (simplified JavaScript only used for scrolling up the messages on page load)


## About Mentor Market
|  Feature  | Description of functionality| Justification of feature | 
|---- |---|--- |
| Authentication – User Sign in, Login and Logout |Users are able to login using their email and a password that has a minimum of 6 characters. | Users are able to login and formally request mentorship if they are logged in. Email and Password are the only requirements to request mentorship allowing people lacking confidence the chance to get a mentor without having to provide more details about themselves if they do not wish to do so.|
| Authentication – Email confirmation| An email is sent to users once they sign up that has a authentication token so that users verify their email before the sign up is finalised. | This is important for email reminders for mentorships and mentor requests to be sent to the correct inbox. In the future, updates to the app would also be emailed to all users. Ideally, curated mentoring information would also be sent to the relevant mentor or mentee at key points once a mentoring relationship is accepted.|
| Navigation bar | Links on navigation bar change based on current user and what profiles they have completed. | This helps the user easily navigate links to their specific user to paths. |
| Dynamic indicator of user (anonymous, username, or name) on pages and nav bar  | If name is provided on user profile then the name is displayed. If not then username (from email) is used. If the user is not logged on then nothing is displayed. | This is to personalise the user experience and help people recognise when they are logged in. |
| Search bar in navigation menu to search users by name | Anyone can type a name or partial name into the search bar to get a list of users with names from user profile matching search. | This allows mentors to (if created) look at a user/mentor profile if they have a mentorship request. It also could be used by users who already know the name of a mentor to seacrh that mentor directly.| 
|User Profile | Users are able to login and create their own user profile with some very basic personal information including a 'Why I want a mentor' field. They can also edit their user profile at any time. | The user profile is searchable for all other users and is useful for mentors who would like to know a little bit of information about who has requested them as their mentor. | 
| Mentor Profile | Users who would like to be mentors are able to login and create their own mentor profile (in addition to User Profile so there is no repeated data/requests). There is a checkbox on the mentor profile page that allows mentors to set themselves as visible to mentor search (displayed on the mentors show page). Mentors can edit all fields and delete their own mentor profile. | The mentor profile has Rich Text Editing Tiny MCE API added so that users can personalise their own bio using their own formatting. They can add an image they like to support their profile. This profile can be seen by anyone, even if not logged in. Only those logged in can make a request for mentorship. Mentors can reveal or hide their profile easily by checking or un-checking the accept mentee checkbox in the own profile. |
| Mentorship Relationship | A user can view a mentor profile and submit a request for mentorship from the listed mentor. The mentor can choose to accept or decline mentorship relationship. | Before accepting the relationship, a mentor may wish to check user profile or may have too much work and forgot to uncheck 'accept mentor'. | 
| Email to mentor when mentorship requested | An automatic email is sent to a mentor when a user selects the request mentorship button. The email gives the link to the mentoring relationship page where they can choose to accept or decline. | This is to prevent a mentor from having to log on to the website to check if any requests have been made. It also provides mentor notification straight away so that they do not leave user pending for long. In the future, additional reminder emails would be sent to the mentor if a request is not accepted or declined in a timely manner. | 
| Email notification of accept or decline mentorship | An automated email is sent notifying mentee that the mentor has either accepted or declined the relationship. | Email notification of 'accepted mentorship' includes link to the conversation path (new or edit depending if mentor has started conversation) and 'decline mentorship' offers suggestion to update or create user profile and encourages user to log back in. |
| Filter fields on mentor index page | Checkboxes for specific skills and beliefs can be selected (as many as required) to filter through mentors based on their selected preferences. |
| Authorisation – Messaging within a mentoring relationship | Only once a mentor accepts mentoring relationship, are they able to have a conversation with their mentee using the app.  | There is one conversation thread between a mentor and mentee that can only be accessed by them. Mentors can also be mentees so there are chat buttons on the My Mentoring Relationships page so that a user can easily access a specifc conversation as they like. |
| Personal messages within a conversation | When a mentor or mentee writes a message it is shown in the conversation with name of sender and date/time each message was sent.| This allows mentor and mentee the chance to scroll up and down through the entire conversation to look at past messages. Rich Text Editor Tiny MCE allows mentees and mentors to send images or code snippets or use other formatting to allow for technical and creative mentoring conversations. |
| Authorisation – Admin interface | Admin users can login to their admin panel to create, read, update and destroy users and mentors. | This allows admins the ability to delete fields if there is an inappropriately completed field or delete a user if there are reports of misuse of the app. Admin email in future will be made for users to report misuse. |

Fields on forms were purposefully made to be optional as often as possible to allow the users the choice to provide as much or as little information as they prefer. The input fields were chosen based on inclusivity and accessibility of all people for example Name has one input as there are many people with names that do not fit into the Anglo norm of Firstname Lastname. 

https://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/
https://en.wikipedia.org/wiki/Facebook_real-name_policy_controversy#Affected_users


#### Sitemap

### User stories
Agile methodologies were adopted throughout the process of building this app.

Planning began with the creation of Personas and Epics, and then User Stories.

<img src="./docs/Personas-and-User-Stories.jpg" alt="Image of sticky notes on wall with all User Stories sorted by Personas and Epics">

#### The way tasks were allocated and tracked in my project

The Trello board: https://trello.com/b/UsUYUDz0/mentor-market was used to transfer user stories onto cards that could be sorted into iterations and then also move to columns doing and done as they were completed.

Acceptance criteria and assumptions were added to cards where neccesary.

<img src="./docs/Acceptance-criteria-assumptions.png" width= 400px>

User stories were labelled based on importance to the app, the assumed difficulty of implementing the feature, and which epic it belongs to.

<img src="./docs/Definitions-labels.png" width= 150px><img src="./docs/TrelloStart.png" width= 600px>

These labels guided decisions on the MVP (minimum viable product) to deliver and then which features should be worked on in a general order for delivery.


| Iteration zero: | Iteration one: | Iteration two: |
|---|---|---|
setup tasks were the tasks required before starting on user stories | user stories labelled 'must have' and small prioritised to be delivered early |user stories labelled 'should have' were prioritised and also anything not completed in iteration one was added to iteration two|
|<img src="./docs/iteration-0.png" alt="iteration 0 cards" width=150px > | <img src="./docs/iteration-1.png" alt="" width=150px > | <img src="./docs/iteration-2.png" alt="" width=150px >

Once all tasks were completed from iteration one and iteration two, some items were attempted from the product backlog if they were labelled as S (small task) or if the value of adding the feature seemed worth the time and effort

Product Backlog: user stories labelled nice to have were not prioritised in the work flow as it was important to add small features that were going to add value to the overall app.

<img src="./docs/Product-backlog.png" alt="" width=150px >



### Wireframes and Screenshots
The general layout of Mentor Market was planned using the following wireframes. The whiteboard was the perfect surface to determine general layout, and where and how pages connected. After the planned page the actual page screenshot is displayed.

Majority of pages in the final layout followed the basic design plan completely, however, some pages completely changed or were removed.

The 'Admin Page' was replaced by a page created with the Active Admin gem which has far more functionality than the original plan.

'My Page' was not included as the app at all. During the build it became an unnecessary page and was replaced by a 'My Mentoring Relationships Page'.

#### Root - Welcome Page
<img src="./docs/wireframe-root-welcome.jpg" alt="" width=450px>

Not Logged In

<img src="./docs/root.png" alt="" width=450px>

Logged In and Has Mentor Profile

<img src="./docs/root-logged-in-mentor.png" alt="" width=450px>

#### Mentors - Index Page
<img src="./docs/wireframe-mentors-index.jpg" alt="" width=450px>

<img src="./docs/mentors-index.png" alt="" width=450px>

#### Mentors - Show Page
<img src="./docs/wireframe-mentor-show.jpg" alt="" width=450px>

<img src="./docs/show-mentor.png" alt="" width=450px>

Logged in - My Mentor Profile

<img src="./docs/My-mentor-profile.png" alt="" width=450px>

#### Mentors - My Page

<img src="./docs/wireframe-mypage.jpg" alt="" width=450px>

My Mentoring Relationships

<img src="./docs/Mymentoringrelationships.png" alt="" width=450px>

#### Mentors - Admin Page
<img src="./docs/wireframe-admin.jpg" alt="" width=450px>



#### Forms

<img src="./docs/wireframe-form-login.jpg" alt="" width=200px>

<img src="./docs/wireframe-form-new-mentor.jpg" alt="" width=200px>

<img src="./docs/login.png" alt="" width=300px>

<img src="./docs/new-mentor-form.png" alt="" width=300px>

### Database Schema Design

#### Entity Relationship Diagram (ERD)

<img src="./docs/ERD.png">

#### Database relations implemented

A `user` is created when someone signs up to the website. 

They can have up to one `profile`, which has their user profile fields – basic info about the user that may be viewed by a potential mentor. 

A user can be a mentor, in which case they have a `mentor` record (containing mentor profile fields). Mentors can choose when to accept mentees by setting the `accept_mentee` boolean - if this is false they will not be shown as a potential mentor on the website. 

Mentors can select `skill`s and `belief`s when entering their mentor profile. These are one-to-many relationships so will be saved in their own table (with FK to `mentor`).

Mentor relationships are created when a user presses the "request mentor match" on a certain mentor's profile page. The mentor then has the choice to accept or reject the mentor relationship. If they accept, the `accepted` boolean is set to true. If they decline, the mentor relationship record is deleted.

Conversations are between two users - so a conversation has two FK's to user. The "author" is the user who created the conversation. Personal messages belong to a conversation and a user (the user related to the personal_message is the one who sent it).

There is nothing in the database that prevents users from having conversations with any other user. However, authorisation is implemented on the website – a conversation can only be created with a user that you have a mentor relationship with.

admin_user is another type of user who can only authenticate to Active Admin.

#### model relationships

user

  has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'author_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'received_id'

  has_many :personal_messages, dependent: :destroy

  has_one :profile, dependent: :destroy

  has_one :mentor, dependent: :destroy

  has_many :mentorships
  has_many :mentor_users, through: :mentorships

  has_many :menteeships, class_name: 'Mentorship', foreign_key: 'mentor_user_id'
  has_many :mentee_users, through: :menteeships, source: :user

profile
belongs_to :user

mentor
  belongs_to :user

  has_one_attached :picture

  has_many :skills, dependent: :destroy

  has_many :beliefs, dependent: :destroy

Skill
  belongs_to :mentor

Belief
  belongs_to :mentor


Mentorship 
  belongs_to :mentor_user, class_name: 'User'
  belongs_to :user

Conversation
  belongs_to :author, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  validates :author, uniqueness: { scope: :receiver }
  has_many :personal_messages, -> { order(created_at: :asc) }, dependent: :destroy

PersonalMessage
  belongs_to :conversation
  belongs_to :user

AdminUser
nothing

### High-level components (abstractions) what how built
|  Component | Tech |Description of build|
|---- |---|---|
| Forms | Simple Form and view partials | Initially I made forms using `simple_form_for @model do`. Eventually I realised there was a lot of repetition so to make it more DRY I created partials such as `_form.html.erb` and included these on the edit and new templates. I did this for conversation, mentors, profiles, and nav bar. See: <img src="./docs/partials.png" width="300" /> |
| Authentication | Devise gem | There's a login form and a sign up form and a way for people to verify their email address. All of this is built using Devise. |
| Messaging between mentors | Rails, CoffeeScript, Action Cable | |
| Email notifications | Gmail, Action Mailer | |
| Search bar | SQL LIKE query with wildcards (%) + Font Awesome for the icon | |
| Filtering by skills and beliefs | HTML form + SQL | 


### Database schema design

```ruby
ActiveRecord::Schema.define(version: 2020_03_11_142930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "beliefs", force: :cascade do |t|
    t.string "name"
    t.bigint "mentor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mentor_id"], name: "index_beliefs_on_mentor_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "receiver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id", "receiver_id"], name: "index_conversations_on_author_id_and_receiver_id", unique: true
    t.index ["author_id"], name: "index_conversations_on_author_id"
    t.index ["receiver_id"], name: "index_conversations_on_receiver_id"
  end

  create_table "mentors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "accept_mentee", null: false
    t.string "linkedIn"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "bio"
    t.index ["user_id"], name: "index_mentors_on_user_id"
  end

  create_table "mentorships", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "mentor_user_id"
    t.boolean "accepted"
    t.index ["mentor_user_id"], name: "index_mentorships_on_mentor_user_id"
    t.index ["user_id"], name: "index_mentorships_on_user_id"
  end

  create_table "personal_messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversation_id"], name: "index_personal_messages_on_conversation_id"
    t.index ["user_id"], name: "index_personal_messages_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.string "job_title", null: false
    t.string "employer"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "why_i_want_a_mentor"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.bigint "mentor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mentor_id"], name: "index_skills_on_mentor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "beliefs", "mentors"
  add_foreign_key "mentors", "users"
  add_foreign_key "mentorships", "users"
  add_foreign_key "mentorships", "users", column: "mentor_user_id"
  add_foreign_key "personal_messages", "conversations"
  add_foreign_key "personal_messages", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "skills", "mentors"
end
```