use_bpm 120

live_loop :solo do
  sync :snare
  use_synth :prophet
  solo_scale = [64, 67, 69, 71, 74, 76]
  
  with_fx :echo, phase: 0.5, decay: 3, mix: 0.5 do
    
    play solo_scale.choose, release: 1.5, amp: 0.4
    sleep 2
  end
end

live_loop :solo_backtrack do
  sync :snare
  use_synth :dark_ambience
  
  play :e3, attack: 2, release: 4, amp: 0.5
  sleep 4
end


live_loop :snare do
  sample :bd_haus, amp: 1.5
  sleep 1
  
  sample :sn_dub, amp: 1.2
  sleep 1
end

live_loop :hi_hat do
  sample :drum_cymbal_closed, amp: rand(0.4..0.7)
  sleep 1
end

live_loop :chorus do
  use_synth :pluck
  play_chord [:c3, :e3, :g3, :c4, :e4], release: 3, amp: 3
  sleep 1
  play_chord [:c3, :e3, :g3, :c4, :e4], release: 3, amp: 3
  sleep 1
  play_chord [:c3, :e3, :g3, :c4, :e4], release: 3, amp: 3
  sleep 1
  
  play_chord [:e2, :b2, :e3, :g3, :b3, :e4], release: 3, amp: 3
  sleep 1
  play_chord [:e2, :b2, :e3, :g3, :b3, :e4], release: 3, amp: 3
  sleep 1
  play_chord [:e2, :b2, :e3, :g3, :b3, :e4], release: 3, amp: 3
  sleep 1
  
  play_chord [:g2, :b2, :d3, :g3, :b3, :g4], release: 3, amp: 3
  sleep 1
  play_chord [:g2, :b2, :d3, :g3, :b3, :g4], release: 3, amp: 3
  sleep 1
  play_chord [:g2, :b2, :d3, :g3, :b3, :g4], release: 3, amp: 3
  sleep 1
  
  play_chord [:d3, :a3, :d4, :fs4], release: 3, amp: 3
  sleep 1
  play_chord [:d3, :a3, :d4, :fs4], release: 3, amp: 3
  sleep 1
  play_chord [:d3, :a3, :d4, :fs4], release: 3, amp: 3
  sleep 1
end

live_loop :lead do
  use_synth :prophet
  notes = [64, 67, 69, 71, 74, 76]
  
  with_fx :echo, phase: 0.6, decay: 2, mix: 0.4 do
    play notes.choose, release: 0.6, amp: 0.5
    sleep 1
  end
end

live_loop :bass do
  use_synth :fm
  
  play :c2, release: 0.8, amp: 1.2
  sleep 2
  play :c2, release: 0.8, amp: 1.2
  sleep 2
  
  play :g2, release: 0.8, amp: 1.2
  sleep 2
  play :g2, release: 0.8, amp: 1.2
  sleep 2
  
  play :e2, release: 0.8, amp: 1.2
  sleep 2
  play :e2, release: 0.8, amp: 1.2
  sleep 2
  
  play :d2, release: 0.8, amp: 1.2
  sleep 2
  play :d2, release: 0.8, amp: 1.2
  sleep 2
end

live_loop :variation do
  sample :perc_shaker, amp: 0.5, rate: 1.2
  sleep 1
  
  if one_in(5)
    sample :elec_cowbell, amp: 0.5, rate: 1.2
  end
  
  if one_in(8)
    sample :perc_shaker, amp: 0.3, rate: 2
    sleep 0.25
    sample :perc_shaker, amp: 0.3, rate: 2
    sleep 0.25
  else
    sleep 1
  end
end



