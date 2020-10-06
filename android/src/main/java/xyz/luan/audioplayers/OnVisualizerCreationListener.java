package xyz.luan.audioplayers;

import android.media.audiofx.Visualizer;

public interface OnVisualizerCreationListener {
    void onVisualizerCreated(Visualizer visualizer, String playerId);
}
