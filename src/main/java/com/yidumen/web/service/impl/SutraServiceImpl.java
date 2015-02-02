package com.yidumen.web.service.impl;

import com.yidumen.web.service.SutraService;
import com.yidumen.dao.SutraDAO;
import com.yidumen.dao.SutraMarkDAO;
import com.yidumen.dao.VideoDAO;
import com.yidumen.dao.entity.Sutra;
import com.yidumen.dao.entity.Video;
import com.yidumen.dao.model.VideoQueryModel;
import com.yidumen.web.view.model.SutraModel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author 刘超 蔡迪旻<yidumen.com>
 */
@Service
@Transactional
public class SutraServiceImpl implements SutraService, Serializable {

    @Autowired
    private SutraDAO sutraDao;
    @Autowired
    private SutraMarkDAO markDao;
    @Autowired
    private VideoDAO videoDAO;

    //暂使用这个属性来计算了解佛教里面相关视频的代码值
    private int c;

    public SutraServiceImpl() {
        this.c = 63;
    }

    @Override
    public List<Sutra> findSutras() {
        return sutraDao.findAll();
    }

    @Override
    public Sutra findMark(long id) {
        return markDao.find(id).getNode();
    }

    @Override
    public List<SutraModel> getLotusSutras() {
        final List<SutraModel> result = new ArrayList<>();

        final List<Sutra> originals = getLotusSutrasOriginal();
        final List<Sutra> vernaculars = getLotusSutrasVernacular();
        for (Sutra vernacular : vernaculars) {
            for (Sutra original : originals) {
                if (original.getLeftValue() + 58L != vernacular.getLeftValue()) {
                    continue;
                }
                final SutraModel model = new SutraModel();
                model.setPartIdentifier(original.getPartIdentifier());
                model.setTitle(original.getTitle());
                model.setOriginalId(original.getId());
                model.setVernacularId(vernacular.getId());

                result.add(model);
            }
        }
        return result;
    }

    @Override
    public List<SutraModel> getDiamonds() {
        final List<SutraModel> result = new ArrayList<>();

        final List<Sutra> originals = getDiamondOriginal();
        final List<Sutra> vernaculars = getDiamondVernacular();
        for (Sutra vernacular : vernaculars) {
            for (Sutra original : originals) {
                if (original.getLeftValue() + 66L != vernacular.getLeftValue()) {
                    continue;
                }
                final SutraModel model = new SutraModel();
                model.setPartIdentifier(original.getPartIdentifier());
                model.setTitle(original.getTitle());
                model.setOriginalId(original.getId());
                model.setVernacularId(vernacular.getId());

                result.add(model);
            }
        }
        return result;
    }

    @Override
    public List<Sutra> getLotusSutrasOriginal() {
        return sutraDao.find(8L, 65L);
    }

    @Override
    public List<Sutra> getLotusSutrasVernacular() {
        return sutraDao.find(66L, 123L);
    }

    @Override
    public int getPageCount(Sutra sutra) {
        return (int) ((sutra.getRightValue() - sutra.getLeftValue() + 1) / 2);
    }

    @Override
    public String getVideoCode(Sutra sutra) {
        //计算方法：左值/2-c,然后c+1;
        return String.format("C1%03d", sutra.getLeftValue() / 2 - c++);
    }

    @Override
    public Sutra findPreSutra(Sutra sutra) {
        final Sutra result = sutraDao.findByRightvalue(sutra.getLeftValue() - 1);
        return result;
    }

    @Override
    public Sutra findNextSutra(Sutra sutra) {
        final Sutra result = sutraDao.findByLeftvalue(sutra.getRightValue() + 1);
        if (result != null && result.getContent() == null) {
            return sutraDao.findByLeftvalue(result.getLeftValue() + 1);
        } else {
            return result;
        }
    }

    @Override
    public Sutra findSutra(long id) {
        return sutraDao.find(id);
    }

    @Override
    public List<Sutra> findHeartOfDharmaRealm() {
        return sutraDao.find(633, 762);
    }

    @Override
    public Sutra findSutra(String title) {
        return sutraDao.find(title);
    }

    @Override
    public List<Sutra> findStarWay() {
        return sutraDao.find(617, 632);
    }

    @Override
    public List<Sutra> findKnownBuddhism() {
        return removeSubPage(sutraDao.find(321, 434));
    }

    @Override
    public List<Sutra> findStudyBuddhims() {
        return removeSubPage(sutraDao.find(435, 604));
    }

    @Override
    public List<Sutra> findPracticeBuddhims() {
        return removeSubPage(sutraDao.find(605, 616));
    }

    @Override
    public List<Sutra> findDiamondNotes() {
        return removeSubPage(sutraDao.find(257, 320));
    }

    private List<Sutra> removeSubPage(final List<Sutra> sutras) {
        final Pattern pattern = Pattern.compile("第\\d页");
        final List<Sutra> result = new ArrayList<>();
        for (final Sutra sutra : sutras) {
            if (pattern.matcher(sutra.getTitle()).matches()) {
                continue;
            }
            result.add(sutra);
        }
        sutras.clear();
        return result;
    }

    @Override
    public List<Video> findLoutsVideos() {
        final VideoQueryModel model = new VideoQueryModel();
        model.setFile("A0001");
        model.setFile2("A1006");
        model.setOrderProperty("file");
        model.setDesc(false);
        return videoDAO.find(model);
    }

    private List<Sutra> getDiamondOriginal() {
        return sutraDao.find(125, 190);
    }

    private List<Sutra> getDiamondVernacular() {
        return sutraDao.find(191, 256);
    }

    @Override
    public String generateHeartAudioSN(Sutra sutra) {
        final long leftValue = sutra.getLeftValue();
        return String.format("%02d", leftValue - 634);
    }

}
