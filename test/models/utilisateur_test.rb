require "test_helper"

class UtilisateurTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @utilisateur = Utilisateur.new(nom: "prenom1 Nom1",
    email: "prenom1@exemple.com",
    password:"pppppp", password_conformation: "pppppp")
  end

  test "nom doit etre present" do
    @utilisateur.nom=""
  end
end
