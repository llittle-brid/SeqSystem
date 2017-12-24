package daoImp;

import dao.DAO;
import dao.TemplateDao;
import entity.TemplateEntity;

/**
 * Created by DELL on 2017/12/23.
 *
 * @author MJY
 */
public class TemplateDaoImp extends DAO<TemplateEntity> implements TemplateDao  {
    @Override
    public TemplateEntity getTemplate(int id_template) {
        String sql="select * from TEMPLATE where id_template=?";
        return get(sql,id_template);
    }
}
