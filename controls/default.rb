control 'pricing-db-running' do
  impact 1.0
  title 'pricing db should be running'
  describe service('pricing-db') do
    it { should be_running }
  end
end

control 'pricing-service-health' do
  impact 1.0
  title 'pricing service health endpoint'
  describe http('http://localhost:8080/health') do
    its('status') { should eq 200 }
  end
end
