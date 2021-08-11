module ColorHelper
    def set_color
        @color = ""
    end

    def set_app_color
        if @current_app
            case @color
            when "red"
                @text_color = "text-dark"
                @card_text_color = "text-dark"
                @nav_bg_color = "background: rgb(255, 95, 234);" #styleタグ
                @body_bg_color = "background: rgb(255, 200, 213);" #styleタグ
            when "blue"
                @text_color = "text-dark"
                @card_text_color = "text-dark"
                @nav_bg_color = "background: rgb(225, 248, 248);" #styleタグ
                @body_bg_color = "background: rgb(225, 248, 248);" #styleタグ
            when "yellow"
                @text_color = "text-dark"
                @card_text_color = "text-dark"
                @nav_bg_color = "background: rgb(252, 255, 58);" #styleタグ
                @body_bg_color = "background: rgb(253, 249, 184);" #styleタグ
            when "green"
                @text_color = "text-dark"
                @card_text_color = "text-dark"
                @nav_bg_color = "background: rgb(142, 255, 97);" #styleタグ
                @body_bg_color = "background: rgb(211, 255, 211);" #styleタグ
            when "black"
                @text_color = "text-light"
                @card_text_color = "text-dark"
                @nav_bg_color = "background: rgb(133, 133, 133);" #styleタグ
                @body_bg_color = "background: rgb(0, 0, 0);" #styleタグ
            else
                @text_color = "text-dark"
                @card_text_color = "text-dark"
                @nav_bg_color = "background: rgb(240, 240, 240);" #styleタグ
                @body_bg_color = "background: rgb(255, 255, 255);" #styleタグ
            end  
        else
            @text_color = "text-dark"
            @card_text_color = "text-dark"
            @nav_bg_color = "background: rgb(67, 229, 250);" #styleタグ
            @body_bg_color = "background: rgb(225, 248, 248);" #styleタグ
        end
    end
    
end

