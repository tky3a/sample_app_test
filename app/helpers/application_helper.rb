module ApplicationHelper
    
    # ページ固有のタイトル有無でタイトルの文字列を調整して返す。
    def full_title(page_title)   # ヘルパー（メソッド）の定義
    base_title = "Ruby on Rails Tutorial Sample App"  # 変数にデフォルトのタイトルを文字列として保持
    if page_title.empty?  # 固有タイトルの有無による場合分け
      base_title          # デフォルトの状態で暗黙の返り値として使用
    else
      "#{base_title} | #{page_title}"               # 文字列を結合させてタイトルを完成させたものを返す
    end
    end
    
    def bootstrap_class_for(flash_type)
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-danger"
      when :alert
        "alert-warning"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end
end
    
