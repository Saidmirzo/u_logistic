class Commans {
  static String signUp = "api/register";
  static String login = "api/login";
  static String sendCode = "api/smsCode";

  //!---------------------------------

  static String allPosts = "api/announcements";

  static String activePost(int id) => "api/active_announcements/$id";
}
