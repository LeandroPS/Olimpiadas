require 'test_helper'

class AtletasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atleta = atletas(:one)
  end

  test "should get index" do
    get atletas_url
    assert_response :success
  end

  test "should get new" do
    get new_atleta_url
    assert_response :success
  end

  test "should create atleta" do
    assert_difference('Atleta.count') do
      post atletas_url, params: { atleta: { descricao: @atleta.descricao, modalidade_id: @atleta.modalidade_id, nome: @atleta.nome, photo: @atleta.photo } }
    end

    assert_redirected_to atleta_url(Atleta.last)
  end

  test "should show atleta" do
    get atleta_url(@atleta)
    assert_response :success
  end

  test "should get edit" do
    get edit_atleta_url(@atleta)
    assert_response :success
  end

  test "should update atleta" do
    patch atleta_url(@atleta), params: { atleta: { descricao: @atleta.descricao, modalidade_id: @atleta.modalidade_id, nome: @atleta.nome, photo: @atleta.photo } }
    assert_redirected_to atleta_url(@atleta)
  end

  test "should destroy atleta" do
    assert_difference('Atleta.count', -1) do
      delete atleta_url(@atleta)
    end

    assert_redirected_to atletas_url
  end
end
