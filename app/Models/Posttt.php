<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

class Post
{
    // use HasFactory;
    private static $blog_post =  [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "Author" => "Clayman",
            "Body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione dignissimos commodi quam ut obcaecati, repellat sapiente molestias debitis earum alias, voluptatum consequuntur aspernatur. Ipsa similique iure facilis a quasi aliquid omnis sequi repellendus cumque deleniti quo officiis culpa dicta, totam velit repellat eaque ut quas voluptatibus distinctio ea earum beatae quod. Tempore exercitationem, possimus corporis repudiandae asperiores iste inventore ea ex deleniti doloribus nam perferendis quis optio iusto voluptates voluptatem est autem dolorem tenetur dolor laborum neque porro incidunt? Facere!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "Author" => "Sparkman",
            "Body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores molestias vel, ipsam expedita vitae laborum, quam deserunt veniam nihil a, praesentium culpa numquam iste exercitationem illum! Eius delectus velit laudantium molestiae dolore quae provident, ratione necessitatibus totam reprehenderit? Rerum error in quo distinctio dolore. Porro, magnam nostrum asperiores quae harum aliquid quos pariatur totam facilis, reiciendis rem fuga. Adipisci reiciendis, quasi, quis laboriosam libero saepe veniam explicabo, magnam corporis placeat accusamus! Qui voluptatibus aspernatur non accusamus, nam vel dolores iusto facere aliquam quasi minima. Nesciunt, repellat eius. Magnam asperiores, quae porro laborum quis quo ipsum reiciendis enim harum, hic dolore?"
        ]
    ];
    public static function all()
    {
        return collect(self::$blog_post);
    }
    public static function find($slug)
    {
        $posts = static::all();
        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
