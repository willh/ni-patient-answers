REPUTATION_CONSTRAINS = {
  "vote_up" => 0,
  "flag" => 10,
  "post_images" => 5,
  "comment" => 10,
  "delete_own_comments" => 50,
  "vote_down" => 10,
  "create_new_tags" => 10,
  "post_whithout_limits" => 100,
  "edit_wiki_post" => 100,
  "remove_advertising" => 0,
  "vote_to_open_own_question" => 50,
  "vote_to_close_own_question" => 50,
  "retag_others_questions" => 50,
  "delete_comments_on_own_questions" => 750,
  "edit_others_posts" => 2000,
  "view_offensive_counts" => 200,
  "vote_to_close_any_question" => 1000,
  "vote_to_open_any_question" => 1000,
  "delete_closed_questions" => 5000,
  "moderate" => 10000,
  "ask" => -100,
  "answer" => -300
}

REPUTATION_REWARDS = YAML.load_file(Rails.root + "config/default_reputation.yml")


REST_AUTH_SITE_KEY         = AppConfig.rest_auth_key
REST_AUTH_DIGEST_STRETCHES = AppConfig.rest_auth_digest_stretches

SANITIZE_CONFIG = {
  :protocols =>  {
                  "a"=>{"href"=>["ftp", "http", "https", "mailto", :relative]},
                  "img"=>{"src"=>["http", "https", :relative]},
                  "blockquote"=>{"cite"=>["http", "https", :relative]},
                  "q"=>{"cite"=>["http", "https", :relative]}
                 },
  :elements  =>  ["a", "b", "blockquote", "br", "caption", "cite", "code", "col",
                  "colgroup", "dd", "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5",
                  "h6", "i", "img", "li", "ol", "p", "pre", "q", "small", "strike",
                  "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th",
                  "thead", "tr", "u", "ul", "font", "s", "hr", "div", "span"],
  :attributes => {
                  "div" => ["style", "id", "class"],
                  "span" => ["style", "id", "class"],
                  "colgroup"=>["span", "width"],
                  "col"=>["span", "width"],
                  "ul"=>["type"],
                  "a"=>["href", "title", "id", "class"],
                  "img"=>["align", "alt", "height", "src", "title", "width"],
                  "blockquote"=>["cite"],
                  "td"=>["abbr", "axis", "colspan", "rowspan", "width"],
                  "table"=>["summary", "width"],
                  "q"=>["cite"],
                  "ol"=>["start", "type"],
                  "th"=>["abbr", "axis", "colspan", "rowspan", "scope", "width"]
                 }
}