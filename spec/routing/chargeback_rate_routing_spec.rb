describe 'routes for ChargebackRateController' do
  let(:controller_name) { 'chargeback_rate' }

  describe '#edit' do
    it 'routes with POST' do
      expect(post("/#{controller_name}/edit")).to route_to("#{controller_name}#edit")
    end
  end

  describe '#form_field_changed' do
    it 'routes with POST' do
      expect(
        post("/#{controller_name}/form_field_changed")
      ).to route_to("#{controller_name}#form_field_changed")
    end
  end

  describe '#delete' do
    it 'routes with POST' do
      expect(post("/#{controller_name}/delete")).to route_to("#{controller_name}#delete")
    end
  end

  describe '#show_list' do
    it 'routes with GET' do
      expect(get("/#{controller_name}/show_list")).to route_to("#{controller_name}#show_list")
    end

    it 'routes with POST' do
      expect(post("/#{controller_name}/show_list")).to route_to("#{controller_name}#show_list")
    end
  end

  describe '#index' do
    it 'routes with GET' do
      expect(get("/#{controller_name}")).to route_to("#{controller_name}#index")
    end
  end

  describe '#show' do
    it 'routes with POST' do
      expect(post("/#{controller_name}/show")).to route_to("#{controller_name}#show")
    end
  end
end
