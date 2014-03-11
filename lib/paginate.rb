# Used for pagination of the blog. The maximum articles per page is defined in
# config.yaml page. This function generates the pages.
def create_old_page(base, idx, last_idx, num)
    first = idx * num + 1
    last = (idx + 1) * num
    meta = {}
    meta[:title] = " home - page #{idx + 1}"
    meta[:kind] = 'page'
    meta[:old_idx] = idx

    if idx == 1
        meta[:prev_idx] = "/"
    else
        meta[:prev_idx] = base + "#{idx}"
    end

    if idx == last_idx
        meta[:next_idx] = nil
    else
        meta[:next_idx] = base + "#{idx + 2}"
    end

    contents = %{
        <% pages = sorted_articles.slice(@item[:old_idx] * #{num}, #{num}) %>
        <% pages.each do |a| %>
          <div class="page-header">
            <h1><%= link_to a[:title], a.path %></h1>
            </div>
            <%= get_post_start(a) %>
        <% end %>
        <div class="row">
          <!--<div class="col-md-4 col-md-offset-4" style="text-align:center;"><a href="/archives/">- Blog Archives -</a></div>-->
          <ul class="pager">
            <li class="next"><a href="<%= @item[:prev_idx] %>">Newer &rarr;</a></li>
            <% if not @item[:next_idx].nil? %>
              <li class="previous"><a href="<%= @item[:next_idx] %>">&larr; Older</a></li>
            <% end %>
          </ul>
        </div>
    }
    create_item base + "#{idx + 1}", meta, contents
end

def create_item(base, meta, contents)
    it = Nanoc::Item.new(contents, meta, base)
    @items << it
end
