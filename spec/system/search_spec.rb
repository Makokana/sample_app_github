require 'rails_helper'

describe '#search', type: :system do
      before do
        user_a = create(:user)
        create(:post, user: user_a)
      end
        context '検索該当があった場合' do
            it '該当結果のみ表示' do
              search = "test"
              @q = Post.search(search)
              expect(@q).to include(Post)
            end
        end
        context '検索該当が無い場合' do
            it '結果の表示をしない' do
              search = "b"
              @q = Post.search(search)
              expect(@q).to be_empty
            end
        end
        context '検索ワードの入力が無い場合' do
            it '全件表示' do
              search = nil
              @q = Post.search(search)
              expect(@q).to eq Post.all
            end
        end
  end
