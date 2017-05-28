# TalonBlogDemo

A Blog project using the [Talon](https://github.com/talonframework/talon) Framework.

## Installation

```bash
git clone https://github.com/talonframework/talon_blog_demo.git
cd talon_blog_demo
mix deps.get && npm install && mix ecto.setup && mix phx.server
```

Visit `http://localhost:4000/talon/blogs` in your browser.

## Steps Taken to Create this Project

1. `mix phx.new talon_blog_demo`
2. `cd talon_blog_demo`
3. `mix ecto.create`
4. `mix phx.gen.context Accounts User users first_name last_name username email active:boolean`
5. `mix phx.gen.context Blogs Blog blogs name description:text active:boolean user_id:references:accounts_users`
6. `mix phx.gen.context Blogs Post posts title body:text published:boolean views:integer blog_id:references:blogs_blog`
7. `mix run priv/repo/seeds.exs`
8. `mix talon.new`
9. `mix talon.gen.resource Accounts.User`
10. `mix talon.gen.resource Blogs.Blog`
11. `mix talon.gen.resource Blogs.Post`
