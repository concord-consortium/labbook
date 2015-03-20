require 'spec_helper'

describe Album do
  describe '#replace_all_snapshots' do
    let(:snapshot1) { Snapshot.create!(content_file_name: 'test1.png') }
    let(:snapshot2) { Snapshot.create!(content_file_name: 'test2.png') }
    let(:snapshot3) { Snapshot.create!(content_file_name: 'test3.png') }
    let(:album1) { Album.create!(snapshots: [snapshot1, snapshot2]) }
    let(:album2) { Album.create!(snapshots: [snapshot3]) }

    it 'removes all existing snapshots and adds >copies< of the source album snapshots' do
      album2.replace_all_snapshots(album1)

      expect(album2.snapshots.count).to eql(2)
      expect(album2.snapshots.first).not_to eql(snapshot1)
      expect(album2.snapshots.first.content_file_name).to eql(snapshot1.content_file_name)
      expect(album2.snapshots.last).not_to eql(snapshot2)
      expect(album2.snapshots.last.content_file_name).to eql(snapshot2.content_file_name)
      # No changes to album 1 expected:
      expect(album1.snapshots.count).to eql(2)
      expect(album1.snapshots.first).to eql(snapshot1)
      expect(album1.snapshots.last).to eql(snapshot2)
    end
  end
end
