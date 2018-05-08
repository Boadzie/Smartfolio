module BlogsHelper
    def gravatar_helper user
        image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60, class:"img-circle"
      end
    
    class CodeRayify < Redcarpet::Render::HTML
        def block_code(code, language)
            CodeRay.scan(code, language || :text).div
        end
    end

    def markdown(text)
        coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

        options = {
            fenced_code_blocks: true,
            no_intra_emphasis: true,
            autolink: true,
            lax_html_blocks: true,
            block_code: true,
            block_quote: true,
            block_html: true,
            footnotes: true,
            footnote_def: true,
            header: true,
            hrule: true,
            list: true,
            list_item: true,
            paragraph: true,
            table: true,
            table_row: true,
            table_cell: true,
            codespan: true,
            double_emphasis: true,
            emphasis: true,
            image: true,
            linebreak: true,
            link: true,
            triple_emphasis: true,
            strikethrough: true,
            superscript: true,
            underline: true,
            highlight: true,
            quote: true,
            footnote_ref: true,

        }

        markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
        markdown_to_html.render(text).html_safe
    end

    def blog_status_color blog
        'color: red;' if blog.draft?
    end
end
