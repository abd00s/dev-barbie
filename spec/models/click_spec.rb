describe Click do
let(:user) { Fabricate(:user) }
let(:date) { Date.current }
let(:filtered_clicks) { Click.where(created_at: date).count }

  describe 'scope .count_from(date)' do
    it 'collects all clicks from given date' do
      expect(Click.count_from(date)).to eq(filtered_clicks)
    end
  end
end