import 'dart:io';

class BlogPost {
  String title;
  String content;

  BlogPost(this.title, this.content);

  @override
  String toString() {
    return 'Title: $title\nContent: $content\n';
  }
}

class BlogApp {
  List<BlogPost> posts = [];

  void addPost() {
    stdout.write('Enter title for the new post: ');
    String title = stdin.readLineSync()!;
    stdout.write('Enter content for the new post: ');
    String content = stdin.readLineSync()!;
    posts.add(BlogPost(title, content));
    print('New post added successfully!\n');
  }

  void viewPosts() {
    if (posts.isEmpty) {
      print('No posts available.');
    } else {
      for (var post in posts) {
        print(post);
      }
    }
  }

  void editPost() {
    stdout.write('Enter the index of the post to edit: ');
    int index = int.parse(stdin.readLineSync()!);
    if (index >= 0 && index < posts.length) {
      stdout.write('Enter new title for the post: ');
      posts[index].title = stdin.readLineSync()!;
      stdout.write('Enter new content for the post: ');
      posts[index].content = stdin.readLineSync()!;
      print('Post edited successfully!\n');
    } else {
      print('Invalid index.\n');
    }
  }

  void deletePost() {
    stdout.write('Enter the index of the post');
  }
}


// This program provides a basic command-line interface where users can perform the following operations:

// Add Post: Users can add a new blog post by entering the title and content.
// View Posts: Users can view all existing blog posts.
// Edit Post: Users can edit an existing blog post by specifying its index and providing new title and content.
// Delete Post: Users can delete an existing blog post by specifying its index.
// Exit: Users can exit the application.