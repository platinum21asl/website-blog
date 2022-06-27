<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Clayman D',
            'Username' => 'clayman',
            'email' => 'clayman21@gmail.com',
            'password' => bcrypt('123456789')
        ]);
        // User::create([
        //     'name' => 'Sparkman',
        //     'email' => 'sparkman21@gmail.com',
        //     'password' => bcrypt('123456789')
        // ]);
        User::factory(3)->create();
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        Post::factory(20)->create();
        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' =>  ' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt tempore sunt voluptatem facere quis quo itaque, rerum repellat blanditiis quia consectetur nam quod cupiditate quibusdam voluptatum ut, earum architecto aliquam?',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia, quo. Dignissimos earum ab sint eius tempora quasi dolore accusamus, minima dolores aliquam fugiat enim quis non deserunt corrupti animi provident repellat velit maiores asperiores itaque! Architecto rerum, rem doloribus, reiciendis tempora, eius veniam autem labore at odio nihil natus sequi. Totam adipisci excepturi molestias deserunt dolores ratione labore, beatae, similique eius, accusantium tempore aut assumenda deleniti! Sequi inventore possimus, rem asperiores culpa commodi dolorum quam debitis alias animi ullam veniam non, enim, iure id voluptatibus iusto vel. Commodi exercitationem minima sint suscipit neque, delectus distinctio vero quam. Voluptate, porro dicta.',
        //     'category_id' => 1,
        //     'user_id' => 1,
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' =>  ' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt tempore sunt voluptatem facere quis quo itaque, rerum repellat blanditiis quia consectetur nam quod cupiditate quibusdam voluptatum ut, earum architecto aliquam?',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia, quo. Dignissimos earum ab sint eius tempora quasi dolore accusamus, minima dolores aliquam fugiat enim quis non deserunt corrupti animi provident repellat velit maiores asperiores itaque! Architecto rerum, rem doloribus, reiciendis tempora, eius veniam autem labore at odio nihil natus sequi. Totam adipisci excepturi molestias deserunt dolores ratione labore, beatae, similique eius, accusantium tempore aut assumenda deleniti! Sequi inventore possimus, rem asperiores culpa commodi dolorum quam debitis alias animi ullam veniam non, enim, iure id voluptatibus iusto vel. Commodi exercitationem minima sint suscipit neque, delectus distinctio vero quam. Voluptate, porro dicta.',
        //     'category_id' => 1,
        //     'user_id' => 1,
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' =>  ' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt tempore sunt voluptatem facere quis quo itaque, rerum repellat blanditiis quia consectetur nam quod cupiditate quibusdam voluptatum ut, earum architecto aliquam?',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia, quo. Dignissimos earum ab sint eius tempora quasi dolore accusamus, minima dolores aliquam fugiat enim quis non deserunt corrupti animi provident repellat velit maiores asperiores itaque! Architecto rerum, rem doloribus, reiciendis tempora, eius veniam autem labore at odio nihil natus sequi. Totam adipisci excepturi molestias deserunt dolores ratione labore, beatae, similique eius, accusantium tempore aut assumenda deleniti! Sequi inventore possimus, rem asperiores culpa commodi dolorum quam debitis alias animi ullam veniam non, enim, iure id voluptatibus iusto vel. Commodi exercitationem minima sint suscipit neque, delectus distinctio vero quam. Voluptate, porro dicta.',
        //     'category_id' => 2,
        //     'user_id' => 1,
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' =>  ' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt tempore sunt voluptatem facere quis quo itaque, rerum repellat blanditiis quia consectetur nam quod cupiditate quibusdam voluptatum ut, earum architecto aliquam?',
        //     'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Mollitia, quo. Dignissimos earum ab sint eius tempora quasi dolore accusamus, minima dolores aliquam fugiat enim quis non deserunt corrupti animi provident repellat velit maiores asperiores itaque! Architecto rerum, rem doloribus, reiciendis tempora, eius veniam autem labore at odio nihil natus sequi. Totam adipisci excepturi molestias deserunt dolores ratione labore, beatae, similique eius, accusantium tempore aut assumenda deleniti! Sequi inventore possimus, rem asperiores culpa commodi dolorum quam debitis alias animi ullam veniam non, enim, iure id voluptatibus iusto vel. Commodi exercitationem minima sint suscipit neque, delectus distinctio vero quam. Voluptate, porro dicta.',
        //     'category_id' => 2,
        //     'user_id' => 1,
        // ]);
    }
}
