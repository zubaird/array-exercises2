require 'spec_helper'

describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }
  before do

  end

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map { |x| x.count("X")}
      expect(xs_per_row).to be == [1, 2, 1]
    end

    it "returns how many times O was played in each row" do
      os_per_row = data.map { |x| x.count("O")}
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    it "returns an array of [row, column] array coordinates for each usage of X" do

      x_coordinates = []
      # data.each {|x| x.each_index {|y| xcoord << [data.index(x), y ] if x[y] == "X"  } }
      data.each { |data_element| data_element.each_index { |location_index| x_coordinates << [data.index(data_element), location_index ] if data_element[location_index] == "X"  } }
      expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    it "returns an array of [row, column] array coordinates for each usage of O" do
      x_coordinates = []
      data.each { |data_element| data_element.each_index { |location_index| x_coordinates << [data.index(data_element), location_index ] if data_element[location_index] == "O"  } }
      expect(x_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    it "determines whether X or O won" do

      columns = data.transpose

      columns.each do |column|
        @winner = "X"  if column.join("").include? "XXX"
        @winner = "O"  if column.join("").include? "OOO"
      end

      data.each do |row|
        @winner = "O" if row.join("").include? "OOO"
        @winner = "X" if row.join("").include? "XXX"
      end

      winner = @winner

      expect(winner).to be == 'O'

    end
  end
end
