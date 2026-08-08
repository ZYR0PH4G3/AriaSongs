#New Song

use_bpm 160

live_loop :kick do
  #checking out heavy metal music to get good drums
  sample :bd_haus, amp: 1.5, cutoff: 110
  sleep 0.25
end
live_loop :snare do
  sleep 1
  sample :sn_dub, amp: 1.2, attack: 0.01, release: 0.1
  sleep 1
end

live_loop :hi_hat do
  sample :drum_cymbal_closed, amp: 2, attack: 0.0001, release: 0.05
  sleep 0.5
end

live_loop :elec_guitar do
  use_synth :pluck
  use_synth_defaults release: 0.2, coefficient: 0.3, amp: 2
  
  with_fx :distortion, distort: 0.8, pre_amp: 2 do
    with_fx :reverb, room: 0.4, mix: 0.3 do
      4.times do
        play :e2
        sleep 0.25
      end
      play :g2
      sleep 0.5
      play :f2
      sleep 0.5
      
      6.times do
        play :e2
        sleep 0.25
      end
      play chord(:e2, :sus2), release: 0.6
      sleep 0.5
      
    end
  end
end

live_loop :bass do
  use_synth :chipbass
  use_synth_defaults release: 0.25, amp: 0.8
  
  with_fx :rlpf, cutoff: 60, res: 0.1 do
    4.times do
      play :e1
      sleep 0.25
      play :g1
      sleep 0.5
      play :f1
      sleep 0.5
    end
    
    6.times do
      play :e1
      sleep 0.25
    end
    play :e1
    sleep 0.5
  end
end

live_loop :variation do
  if one_in(5)
    use_synth :pluck
    use_synth_defaults release: 0.2, coefficient: 0.3, amp: 2
    
    with_fx :distortion, distort: 0.85, pre_amp: 2 do
      with_fx :reverb, room: 0.4, mix: 0.3 do
        3.times do
          play :e2
          sleep 0.25
          play :e2
          sleep 0.25
          play :e2
          sleep 0.5
        end
        play chord(:bb2, :minor), release: 0.5
        sleep 0.5
        play chord(:a2, :minor), release: 0.5
        sleep 0.5
      end
    end
  else
    sleep 10
  end
end



















