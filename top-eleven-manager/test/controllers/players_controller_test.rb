require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { aggression: @player.aggression, bravery: @player.bravery, creativity: @player.creativity, crossing: @player.crossing, dribbling: @player.dribbling, finishing: @player.finishing, fitness: @player.fitness, heading: @player.heading, marking: @player.marking, passing: @player.passing, positioning: @player.positioning, shooting: @player.shooting, speed: @player.speed, strength: @player.strength, tackling: @player.tackling }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { aggression: @player.aggression, bravery: @player.bravery, creativity: @player.creativity, crossing: @player.crossing, dribbling: @player.dribbling, finishing: @player.finishing, fitness: @player.fitness, heading: @player.heading, marking: @player.marking, passing: @player.passing, positioning: @player.positioning, shooting: @player.shooting, speed: @player.speed, strength: @player.strength, tackling: @player.tackling }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
