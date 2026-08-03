#New Beggining

use_bpm 140

live_loop :drums do
  sample :drum_snare_soft, amp: 1.2
  sleep 0.25
  
  sample :drum_bass_hard, amp: 1.5
  sleep 0.25
  
  sample :drum_snare_soft, amp: 1.2
  sleep 0.25
  
  sample :bd_haus, amp: 1.5
  sleep 0.25
  sample :bd_haus, amp: 1.5
  sleep 0.25
  
  sample :drum_snare_soft, amp: 1.2
  sleep 0.25
  
  sample :drum_bass_hard, amp: 1.5
  sleep 0.25
  
  sample :drum_snare_soft, amp: 1.2
  sleep 0.25
end

5.times do
  use_synth :pluck
  
  play chord(:g4, :major), amp: 5
  sleep 1
  play chord(:g4, :major), amp: 5
  sleep 1
  play chord(:g4, :major), amp: 5
  sleep 0.5
  
  play chord(:d4, :major), amp: 5
  sleep 1
  play chord(:d4, :major), amp: 5
  sleep 1
  play chord(:d4, :major), amp: 5
  sleep 0.5
  
  play chord(:c4, :major), amp: 5
  sleep 1
  play chord(:c4, :major), amp: 5
  sleep 1
  play chord(:c4, :major), amp: 5
  sleep 0.5
  
  in_thread do
    play chord(:g4, :major), amp: 2, release: 0.5
    sleep 1
    play chord(:g4, :major), amp: 2, release: 0.5
    sleep 1
    play chord(:g4, :major), amp: 2, release: 0.5
    sleep 0.5
    
    play chord(:d4, :major), amp: 2, release: 0.5
    sleep 1
    play chord(:d4, :major), amp: 2, release: 0.5
    sleep 1
    play chord(:d4, :major), amp: 2, release: 0.5
    sleep 0.5
    
    play chord(:c4, :major), amp: 2, release: 0.5
    sleep 1
    play chord(:c4, :major), amp: 2, release: 0.5
    sleep 1
    play chord(:c4, :major), amp: 2, release: 0.5
    sleep 0.5
  end
end

live_loop :bass do
  use_synth :fm
  use_octave = -2
  
  play :g, amp: 0.5
  sleep 1
  play :g, amp: 0.5
  sleep 1
  play :g, amp: 0.5
  sleep 1
  play :d, amp: 0.5
  sleep 1
  play :d, amp: 0.5
  sleep 1
  play :d, amp: 0.5
  sleep 1
  play :c, amp: 0.5
  sleep 1
  play :c, amp: 0.5
  sleep 1
  play :c, amp: 0.5
  sleep 1
end

10.times do
  play :d
  sleep 0.5
  play :g
  sleep 0.5
  play :g
  sleep 0.5
  play :g
  sleep 0.5
  
  in_thread do
    play :c
    sleep 0.5
    play :c
    sleep 0.5
    play :c
    sleep 0.5
    play :b
    sleep 0.5
  end
end


live_loop :variation do
  use_synth :pluck
  
  if one_in(2.5)
    notes = [:d5, :g5].choose
    play notes, amp: rrand(1.5, 2.5), release: rrand(0.1, 0.25), pan: rrand(-1, 1)
  end
  
  sleep 0.5
end

5.times do
  use_synth :sine
  sync :drums
  with_fx :reverb, room: 0.8, mix: 0.6 do
    with_fx :echo, phase: 0.25, decay: 2, mix: 0.3 do
      play :g5, release: 0.2, amp: 0.5
      sleep 0.25
      play :a5, release: 0.2, amp: 0.5
      sleep 0.25
      play :b5, release: 0.2, amp: 0.5
      sleep 0.25
      play :d6, release: 0.4, amp: 1
      sleep 1.75
      
      play :d5, release: 0.2, amp: 0.5
      sleep 0.25
      play :fs5, release: 0.2, amp: 0.5
      sleep 0.25
      play :a5, release: 0.2, amp: 0.5
      sleep 0.25
      play :fs6, release: 0.2, amp: 1
      sleep 1.75
      
      play :c5, release: 0.2, amp: 0.5
      sleep 0.25
      play :e5, release: 0.2, amp: 0.5
      sleep 0.25
      play :g5, release: 0.2, amp: 0.5
      sleep 0.25
      play :e6, release: 0.2, amp: 1
      sleep 1.75
      in_thread do
        5.times do
          play :d
          sleep 0.5
          play :g
          sleep 0.5
          play :g
          sleep 0.5
          play :g
          sleep 0.5
          play :c
          sleep 0.5
          play :c
          sleep 0.5
          play :c
          sleep 0.5
          play :b
          sleep 0.5
        end
      end
    end
  end
end

live_loop :chorus do
  use_synth :pluck
  
  play chord(:c, :add9), release: 2, amp: 4
  sleep 1
  play chord(:c, :add9), release: 2, amp: 4
  sleep 1
  play chord(:c, :add9), release: 2, amp: 4
  sleep 1
  
  play chord(:d, :sus4), release: 2, amp: 4
  sleep 1
  play chord(:d, :sus4), release: 2, amp: 4
  sleep 1
  play chord(:d, :sus4), release: 2, amp: 4
  sleep 1
  
  play chord(:g, :maj), release: 2, amp: 4
  sleep 1
  play chord(:g, :maj), release: 2, amp: 4
  sleep 1
  play chord(:g, :maj), release: 2, amp: 4
  sleep 1
  
  play chord(:e, :minor), release: 2, amp: 4
  sleep 1
  play chord(:e, :minor), release: 2, amp: 4
  sleep 1
  play chord(:e, :minor), release: 2, amp: 4
  sleep 1
end









