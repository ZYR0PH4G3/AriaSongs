#New Song

#Trying for a sad song but lets see how it works out.

use_bpm 85

live_loop :drums do
  sample :bd_haus, amp: 2, cutoff: 85
  sample :bd_pure, amp: 2
  sleep 1
  
  sample :drum_cymbal_soft,  amp: 5, attack: 0.05
  sleep 1
  
  sample :sn_dub, amp: 2, cutoff: 90
  sample :drum_snare_soft, amp: 2
  sleep 2
  
end

live_loop :lead do
  
  use_synth :piano
  
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:g, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
  play chord(:c, :major), release: 0.5
  sleep 1
end

live_loop :bass do
  use_synth :fm
  
  play :A1, release: 3.5, amp: 1.5, cutoff: 50
  sleep 1
  
  play :F1, release: 3.5, amp: 1.6, cutoff: 48
  sleep 1
  
  play :C2, release: 3.5, amp: 1.5, cutoff: 50
  sleep 1
  
  play :E1, release: 3.5, amp: 1.6, cutoff: 48
  sleep 1
end

live_loop :verse do
  use_synth :pluck
  
  5.times do
    play chord(:e, :minor), amp: 2
    sleep 0.5
  end
  
  5.times do
    play chord(:a, :minor), amp: 2
    sleep 0.5
  end
end

live_loop :chorus do
  use_synth :piano
  
  play :fs4, amp: 0.8
  sleep 2
  play :e4, amp: 0.8
  sleep 1
  play :e4, amp: 0.8
  sleep 1
end

live_loop :variation do
  use_synth :pluck
  if one_in(4)
    play :g4, amp: 0.5
    sleep 8
  else
    play :a4, amp: 0.5
    sleep 8
  end
end

live_loop :harmonization do
  use_synth :piano
  
  play :fs3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 1
  
  play :a3, sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 1
  
  play :fs3, sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 0.5
  
  play :g3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 1
  
  play :fs3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 1
  
  play :a3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 1
  
  play :fs3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 0.5
  
  play :g3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 0.5
  
  play :fs3,  sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 0.5
  
  play :e3, sustain: 1, decay: 0.5, release: 1, amp: 0.5
  sleep 1.5
end

live_loop :track2 do
  use_synth :prophet
  with_fx :reverb, room: 0.9, mix: 0.5 do
    play :fs3, amp: 0.5
    sleep 0.5
    play :e3, amp: 0.5
    sleep 0.25
    play :e3, amp: 0.5
    sleep 0.5
    play :e3, amp: 0.5
    sleep 0.25
    play :e3, amp: 0.5
    sleep 0.5
    play :g3, amp: 0.5
    sleep 0.5
    play :fs3, amp: 0.5
    sleep 0.25
    play :fs3, amp: 0.5
    sleep 0.5
    play :fs3, amp: 0.5
    sleep 0.25
    play :fs3, amp: 0.5
    sleep 0.5
  end
end