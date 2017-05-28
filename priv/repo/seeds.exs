alias FakerElixir, as: Faker
alias TalonBlogDemo.Repo
alias TalonBlogDemo.Accounts.User
alias TalonBlogDemo.Blogs.{Blog, Post}

Repo.delete_all Post
Repo.delete_all Blog
Repo.delete_all User

users =
  for _ <- 1..50 do
    first_name = Faker.Name.first_name()
    last_name = Faker.Name.last_name()
    name = first_name <> " " <> last_name
    params = %{
      first_name: first_name,
      last_name: last_name,
      email: Faker.Internet.email(name),
      username: Faker.Internet.user_name(name),
      active: Enum.random([true, false])
    }
    Repo.insert! User.changeset(%User{}, params)
  end

blogs =
  for _ <- 1..50 do
    params = %{
      name: FakerElixir.Name.name(),
      description: FakerElixir.Lorem.words(),
      active: Enum.random([true, false]),
      user_id: Enum.random(users) |> Map.get(:id)
    }
    Repo.insert! Blog.changeset(%Blog{}, params)
  end

_posts =
  for _ <- 1..1000 do
    params = %{
      title: FakerElixir.Lorem.words(),
      body: FakerElixir.Lorem.sentences(),
      published: Enum.random([true, false]),
      views: :rand.uniform(1000),
      blog_id: Enum.random(blogs) |> Map.get(:id)
    }
    Repo.insert! Post.changeset(%Post{}, params)
  end
