require "test_helper"

class UtilisateursControllerTest < ActionDispatch::IntegrationTest
  def setup 
    @utilisateur =Utilisateur.new(nom:"prenom1 Nom1",email:"prenom1@exemple.com")
  end 

  test "nom doit etre present" do
    @utilisateur.nom=""
    assert_not @utilisateur.valid?
  end

  test "email doit etre present" do
    @utilisateur.email=""
    assert_not @utilisateur.valid?
  end

  test "nom ne doit pas etre trop long" do
    @utilisateur.nom="a" * 51
    assert_not @utilisateur.valid?
  end

  test "email ne doit pas etre trop long" do
    @utilisateur.email="a" * 244 + "@example.com"
    assert_not @utilisateur.valid?
  end
  

  test "email validation doit accepter les emails valides"
      valid_addresses = %w[a@example.com AAA@example.COM]
      valid_addresses.each do |valid_address|
        @utilisateur.email = valid_address
        assert @utilisateur.valid?, "#{valid_address.inspect}"
    
  end

end
