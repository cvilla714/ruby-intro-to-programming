# frozen_string_literal: true

require_relative '../lib/exercise'

describe 'zip' do
  let(:array_1) { %w[a b c] }
  let(:array_2) { [1, 2, 3] }
  let(:array_3) { %w[w x y] }

  it 'should accept any number of arrays of the same length as arguments' do
    expect { zip(array_1) }.to_not raise_error
    expect { zip(array_1, array_2) }.to_not raise_error
    expect { zip(array_1, array_2, array_3) }.to_not raise_error
  end

  it 'should return a 2D array where each subarray contains the elements at the same index from each argument' do
    expect(zip(array_1, array_2)).to eq([
                                          ['a', 1],
                                          ['b', 2],
                                          ['c', 3]
                                        ])

    expect(zip(array_2, array_1)).to eq([
                                          [1, 'a'],
                                          [2, 'b'],
                                          [3, 'c']
                                        ])

    expect(zip(array_1, array_2, array_3)).to eq([
                                                   ['a', 1, 'w'],
                                                   ['b', 2, 'x'],
                                                   ['c', 3, 'y']
                                                 ])
  end
end

describe 'prizz_proc' do
  let(:div_3) { proc { |n| (n % 3).zero? } }
  let(:div_5) { proc { |n| (n % 5).zero? } }
  let(:ends_ly) { proc { |s| s.end_with?('ly') } }
  let(:has_i) { proc { |s| s.include?('i') } }

  it 'should accept an array and two procs as arguments' do
    expect { prizz_proc([10, 9, 3, 45, 12, 15], div_3, div_5) }.to_not raise_error
  end

  it 'should return a new array containing the elements that return true for exactly one of the procs' do
    expect(
      prizz_proc(
        [10, 9, 3, 45, 12, 15, 7],
        div_3,
        div_5
      )
    ).to match_array([10, 9, 3, 12])

    expect(
      prizz_proc(
        %w[honestly sully sickly trick doggo quickly],
        ends_ly,
        has_i
      )
    ).to match_array(%w[honestly sully trick])
  end

  it 'should return elements in the same order they appear in the input array' do
    expect(
      prizz_proc(
        [10, 9, 3, 45, 12, 15, 7],
        div_3,
        div_5
      )
    ).to eq([10, 9, 3, 12])

    expect(
      prizz_proc(
        %w[honestly sully sickly trick doggo quickly],
        ends_ly,
        has_i
      )
    ).to eq(%w[honestly sully trick])
  end
end

describe 'zany_zip' do
  let(:array_1) { %w[a b c] }
  let(:array_2) { [1, 2, 3] }
  let(:array_3) { [11, 13, 15, 17] }
  let(:array_4) { %w[v w x y z] }

  it 'should accept any number of arrays as arguments' do
    expect { zany_zip(array_1) }.to_not raise_error
    expect { zany_zip(array_1, array_2) }.to_not raise_error
    expect { zany_zip(array_1, array_2, array_3) }.to_not raise_error
  end

  it 'should return a 2D array where each subarray contains the elements at the same index from each argument' do
    expect(zany_zip(array_1, array_2)).to eq([
                                               ['a', 1],
                                               ['b', 2],
                                               ['c', 3]
                                             ])

    expect(zany_zip(array_2, array_1)).to eq([
                                               [1, 'a'],
                                               [2, 'b'],
                                               [3, 'c']
                                             ])
  end

  it 'should use nil to substitute elements for the array that are too short' do
    expect(zany_zip(array_3, array_2, array_1)).to eq([
                                                        [11, 1, 'a'],
                                                        [13, 2, 'b'],
                                                        [15, 3, 'c'],
                                                        [17, nil, nil]
                                                      ])

    expect(zany_zip(array_1, array_2, array_3, array_4)).to eq([
                                                                 ['a', 1, 11, 'v'],
                                                                 ['b', 2,    13,     'w'],
                                                                 ['c', 3,    15,     'x'],
                                                                 [nil, nil,  17,     'y'],
                                                                 [nil, nil,  nil,    'z']
                                                               ])
  end
end

describe 'maximum' do
  it 'should accept an array and a block as args' do
    expect { maximum([2, 4, -5, 1]) { |n| n * n } }.to_not raise_error
    expect { maximum(%w[potato swimming cat], &:length) }.to_not raise_error
  end

  it 'should return the element that has the largest result when passed into the block' do
    expect(maximum([2, 4, -5, 1]) { |n| n * n }).to eq(-5)
    expect(maximum(%w[potato swimming cat], &:length)).to eq('swimming')
  end

  context 'when there is a tie' do
    it 'should return the element that appears later in the array' do
      expect(maximum(%w[boot cat drop], &:length)).to eq('drop')
    end
  end

  context 'when the array is empty' do
    it 'should return nil' do
      expect(maximum([], &:length)).to eq(nil)
    end
  end
end

describe 'my_group_by' do
  let(:array_1) { %w[mouse dog goat bird cat] }
  let(:array_2) { [1, 2, 9, 30, 11, 38] }

  it 'should accept an array and a block as args' do
    expect { my_group_by(array_1, &:length) }.to_not raise_error
  end

  it 'should not use the built-in Array#group_by' do
    expect(array_1).to_not receive(:group_by)
    my_group_by(array_1, &:length)
  end

  it 'should return a hash where keys are the results when the elements are given to the block' do
    answer_1 = { 5 => ['mouse'], 3 => %w[dog cat], 4 => %w[goat bird] }
    expect(my_group_by(array_1, &:length).keys).to match_array(answer_1.keys)

    answer_2 = { true => %w[mouse dog goat], false => %w[bird cat] }
    expect(my_group_by(array_1) { |s| s.include?('o') }.keys).to match_array(answer_2.keys)
  end

  it 'should return a hash where each value is an array containing the elements that result in the corresponding key when given to the block' do
    answer_1 = { 5 => ['mouse'], 3 => %w[dog cat], 4 => %w[goat bird] }
    expect(my_group_by(array_1, &:length)).to match_array(answer_1)

    answer_2 = { true => %w[mouse dog goat], false => %w[bird cat] }
    expect(my_group_by(array_1) { |s| s.include?('o') }).to match_array(answer_2)

    answer_3 = { 1 => [1], 2 => [2, 11, 38], 0 => [9, 30] }
    expect(my_group_by(array_2) { |n| n % 3 }).to eq(answer_3)
  end
end

describe 'max_tie_breaker' do
  let(:array_1) { %w[potato swimming cat] }
  let(:array_2) { %w[cat bootcamp swimming ooooo] }
  let(:array_3) { %w[photo bottle bother] }
  let(:length) { proc { |s| s.length } }
  let(:o_count) { proc { |s| s.count('o') } }

  it 'should accept an array, a proc, and a block as args' do
    expect { max_tie_breaker(array_1, length, &o_count) }.to_not raise_error
  end

  it 'should return the element that has the largest result when passed into the block' do
    expect(max_tie_breaker(array_1, o_count, &length)).to eq('swimming')
    expect(max_tie_breaker(array_2, length, &o_count)).to eq('ooooo')
  end

  context 'when there is a tie' do
    it 'should use the proc to break the tie' do
      expect(max_tie_breaker(array_2, o_count, &length)).to eq('bootcamp')
    end

    context 'when there is still a tie after using the proc' do
      it 'should return the element that comes first in the array' do
        expect(max_tie_breaker(array_3, o_count, &length)).to eq('bottle')
      end
    end
  end

  context 'when the array is empty' do
    it 'should return nil' do
      expect(max_tie_breaker([], o_count, &length)).to eq(nil)
    end
  end
end

describe 'silly_syllables' do
  it 'should accept a sentence as an argument' do
    expect { silly_syllables('properly and precisely written code') }.to_not raise_error
  end

  it 'should return a new sentence where all letters before the first vowel and after the last vowel are removed' do
    expect(silly_syllables('properly precisely written code')).to eq('ope ecise itte ode')
    expect(silly_syllables('trashcans collect garbage')).to eq('ashca olle arbage')
  end

  it 'should not remove letters for words that contain less than two vowels' do
    expect(silly_syllables('properly and precisely written code')).to eq('ope and ecise itte ode')
    expect(silly_syllables('the trashcans collect all my garbage')).to eq('the ashca olle all my arbage')
  end
end
