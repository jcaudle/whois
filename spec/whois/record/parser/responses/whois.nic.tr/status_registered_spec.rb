# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tr/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.tr.rb'

describe Whois::Record::Parser::WhoisNicTr, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.tr/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      lambda { subject.disclaimer }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#domain" do
    it do
      lambda { subject.domain }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2001-08-23 00:00:00 UTC")
    end
  end
  describe "#updated_on" do
    it do
      lambda { subject.updated_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-08-22 00:00:00 UTC")
    end
  end
  describe "#registrar" do
    it do
      lambda { subject.registrar }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == nil
      subject.registrant_contacts[0].name.should          == "Google Inc."
      subject.registrant_contacts[0].organization.should  == nil
      subject.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway\nMountain View CA"
      subject.registrant_contacts[0].city.should          == nil
      subject.registrant_contacts[0].zip.should           == nil
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country.should       == "United States of America"
      subject.registrant_contacts[0].country_code.should  == nil
      subject.registrant_contacts[0].phone.should         == "+ 1-650-2530000-"
      subject.registrant_contacts[0].fax.should           == "+ 1-650-2530001-"
      subject.registrant_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "mi154-metu"
      subject.admin_contacts[0].name.should          == nil
      subject.admin_contacts[0].organization.should  == "MarkMonitor, Inc"
      subject.admin_contacts[0].address.should       == "Hidden upon user request"
      subject.admin_contacts[0].city.should          == nil
      subject.admin_contacts[0].zip.should           == nil
      subject.admin_contacts[0].state.should         == nil
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == nil
      subject.admin_contacts[0].phone.should         == "Hidden upon user request"
      subject.admin_contacts[0].fax.should           == "Hidden upon user request"
      subject.admin_contacts[0].email.should         == nil
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "btl1-metu"
      subject.technical_contacts[0].name.should          == nil
      subject.technical_contacts[0].organization.should  == "BERÝL TEKNOLOJÝ LTD. ÞTÝ."
      subject.technical_contacts[0].address.should       == "Ceyhun Atuf Kansu Cad. Bayraktar Ýþ Merkezi\nNo:114 G-4 Balgat\nAnkara,06520\nTürkiye"
      subject.technical_contacts[0].city.should          == nil
      subject.technical_contacts[0].zip.should           == nil
      subject.technical_contacts[0].state.should         == nil
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == nil
      subject.technical_contacts[0].phone.should         == "+ 90-312-4733035-"
      subject.technical_contacts[0].fax.should           == "+ 90-312-4733039-"
      subject.technical_contacts[0].email.should         == nil
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
