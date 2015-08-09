package com.yidumen.web.service;

import com.yidumen.web.entity.Sutra;
import com.yidumen.web.entity.Video;
import com.yidumen.web.view.model.SutraModel;
import java.util.List;

/**
 *
 * @author 蔡迪旻 <yidumen.com>
 */
public interface SutraService {

    Sutra findMark(long id);

    Sutra findNextSutra(Sutra sutra);

    Sutra findPreSutra(Sutra sutra);

    Sutra findSutra(long id);

    List<Sutra> findSutras();

    List<SutraModel> getLotusSutras();

    List<SutraModel> getDiamonds();

    List<Sutra> getLotusSutrasOriginal();

    List<Sutra> getLotusSutrasVernacular();

    int getPageCount(Sutra sutra);

    String getVideoCode(Sutra sutra);

    List<Sutra> findHeartOfDharmaRealm();

    Sutra findSutra(String title);

    List<Sutra> findStarWay();

    List<Sutra> findKnownBuddhism();

    List<Sutra> findStudyBuddhims();

    List<Sutra> findPracticeBuddhims();

    List<Video> findLoutsVideos();

    List<Sutra> findDiamondNotes();

    String generateHeartAudioSN(Sutra sutra);
}
