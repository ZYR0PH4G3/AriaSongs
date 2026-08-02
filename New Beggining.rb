#New Song

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

loop do
  play :d
  sleep 0.5
  play :g
  sleep 0.5
  play :g
  sleep 0.5
  play :g
  sleep 0.5
  
end

in_thread do
  loop do
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
  
end
