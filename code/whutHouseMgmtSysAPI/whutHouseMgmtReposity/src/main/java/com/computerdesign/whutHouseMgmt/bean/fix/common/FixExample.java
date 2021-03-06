package com.computerdesign.whutHouseMgmt.bean.fix.common;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class FixExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FixExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("Id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("Id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("Id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("Id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("Id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("Id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("Id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("Id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("Id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("Id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("Id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("Id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andFixContentIdIsNull() {
            addCriterion("FixContentId is null");
            return (Criteria) this;
        }

        public Criteria andFixContentIdIsNotNull() {
            addCriterion("FixContentId is not null");
            return (Criteria) this;
        }

        public Criteria andFixContentIdEqualTo(String value) {
            addCriterion("FixContentId =", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdNotEqualTo(String value) {
            addCriterion("FixContentId <>", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdGreaterThan(String value) {
            addCriterion("FixContentId >", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdGreaterThanOrEqualTo(String value) {
            addCriterion("FixContentId >=", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdLessThan(String value) {
            addCriterion("FixContentId <", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdLessThanOrEqualTo(String value) {
            addCriterion("FixContentId <=", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdLike(String value) {
            addCriterion("FixContentId like", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdNotLike(String value) {
            addCriterion("FixContentId not like", value, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdIn(List<String> values) {
            addCriterion("FixContentId in", values, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdNotIn(List<String> values) {
            addCriterion("FixContentId not in", values, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdBetween(String value1, String value2) {
            addCriterion("FixContentId between", value1, value2, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andFixContentIdNotBetween(String value1, String value2) {
            addCriterion("FixContentId not between", value1, value2, "fixContentId");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("Description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("Description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("Description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("Description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("Description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("Description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("Description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("Description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("Description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("Description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("Description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("Description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("Description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("Description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andApplyTimeIsNull() {
            addCriterion("ApplyTime is null");
            return (Criteria) this;
        }

        public Criteria andApplyTimeIsNotNull() {
            addCriterion("ApplyTime is not null");
            return (Criteria) this;
        }

        public Criteria andApplyTimeEqualTo(Date value) {
            addCriterionForJDBCDate("ApplyTime =", value, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("ApplyTime <>", value, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("ApplyTime >", value, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ApplyTime >=", value, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeLessThan(Date value) {
            addCriterionForJDBCDate("ApplyTime <", value, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ApplyTime <=", value, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeIn(List<Date> values) {
            addCriterionForJDBCDate("ApplyTime in", values, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("ApplyTime not in", values, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ApplyTime between", value1, value2, "applyTime");
            return (Criteria) this;
        }

        public Criteria andApplyTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ApplyTime not between", value1, value2, "applyTime");
            return (Criteria) this;
        }

        public Criteria andFixStateIsNull() {
            addCriterion("FixState is null");
            return (Criteria) this;
        }

        public Criteria andFixStateIsNotNull() {
            addCriterion("FixState is not null");
            return (Criteria) this;
        }

        public Criteria andFixStateEqualTo(String value) {
            addCriterion("FixState =", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateNotEqualTo(String value) {
            addCriterion("FixState <>", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateGreaterThan(String value) {
            addCriterion("FixState >", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateGreaterThanOrEqualTo(String value) {
            addCriterion("FixState >=", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateLessThan(String value) {
            addCriterion("FixState <", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateLessThanOrEqualTo(String value) {
            addCriterion("FixState <=", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateLike(String value) {
            addCriterion("FixState like", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateNotLike(String value) {
            addCriterion("FixState not like", value, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateIn(List<String> values) {
            addCriterion("FixState in", values, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateNotIn(List<String> values) {
            addCriterion("FixState not in", values, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateBetween(String value1, String value2) {
            addCriterion("FixState between", value1, value2, "fixState");
            return (Criteria) this;
        }

        public Criteria andFixStateNotBetween(String value1, String value2) {
            addCriterion("FixState not between", value1, value2, "fixState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateIsNull() {
            addCriterion("AcceptState is null");
            return (Criteria) this;
        }

        public Criteria andAcceptStateIsNotNull() {
            addCriterion("AcceptState is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptStateEqualTo(String value) {
            addCriterion("AcceptState =", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateNotEqualTo(String value) {
            addCriterion("AcceptState <>", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateGreaterThan(String value) {
            addCriterion("AcceptState >", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateGreaterThanOrEqualTo(String value) {
            addCriterion("AcceptState >=", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateLessThan(String value) {
            addCriterion("AcceptState <", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateLessThanOrEqualTo(String value) {
            addCriterion("AcceptState <=", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateLike(String value) {
            addCriterion("AcceptState like", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateNotLike(String value) {
            addCriterion("AcceptState not like", value, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateIn(List<String> values) {
            addCriterion("AcceptState in", values, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateNotIn(List<String> values) {
            addCriterion("AcceptState not in", values, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateBetween(String value1, String value2) {
            addCriterion("AcceptState between", value1, value2, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptStateNotBetween(String value1, String value2) {
            addCriterion("AcceptState not between", value1, value2, "acceptState");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteIsNull() {
            addCriterion("AcceptNote is null");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteIsNotNull() {
            addCriterion("AcceptNote is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteEqualTo(String value) {
            addCriterion("AcceptNote =", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteNotEqualTo(String value) {
            addCriterion("AcceptNote <>", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteGreaterThan(String value) {
            addCriterion("AcceptNote >", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteGreaterThanOrEqualTo(String value) {
            addCriterion("AcceptNote >=", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteLessThan(String value) {
            addCriterion("AcceptNote <", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteLessThanOrEqualTo(String value) {
            addCriterion("AcceptNote <=", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteLike(String value) {
            addCriterion("AcceptNote like", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteNotLike(String value) {
            addCriterion("AcceptNote not like", value, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteIn(List<String> values) {
            addCriterion("AcceptNote in", values, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteNotIn(List<String> values) {
            addCriterion("AcceptNote not in", values, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteBetween(String value1, String value2) {
            addCriterion("AcceptNote between", value1, value2, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptNoteNotBetween(String value1, String value2) {
            addCriterion("AcceptNote not between", value1, value2, "acceptNote");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeIsNull() {
            addCriterion("AcceptTime is null");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeIsNotNull() {
            addCriterion("AcceptTime is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeEqualTo(Date value) {
            addCriterionForJDBCDate("AcceptTime =", value, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("AcceptTime <>", value, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("AcceptTime >", value, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("AcceptTime >=", value, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeLessThan(Date value) {
            addCriterionForJDBCDate("AcceptTime <", value, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("AcceptTime <=", value, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeIn(List<Date> values) {
            addCriterionForJDBCDate("AcceptTime in", values, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("AcceptTime not in", values, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("AcceptTime between", value1, value2, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("AcceptTime not between", value1, value2, "acceptTime");
            return (Criteria) this;
        }

        public Criteria andAcceptManIsNull() {
            addCriterion("AcceptMan is null");
            return (Criteria) this;
        }

        public Criteria andAcceptManIsNotNull() {
            addCriterion("AcceptMan is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptManEqualTo(String value) {
            addCriterion("AcceptMan =", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManNotEqualTo(String value) {
            addCriterion("AcceptMan <>", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManGreaterThan(String value) {
            addCriterion("AcceptMan >", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManGreaterThanOrEqualTo(String value) {
            addCriterion("AcceptMan >=", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManLessThan(String value) {
            addCriterion("AcceptMan <", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManLessThanOrEqualTo(String value) {
            addCriterion("AcceptMan <=", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManLike(String value) {
            addCriterion("AcceptMan like", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManNotLike(String value) {
            addCriterion("AcceptMan not like", value, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManIn(List<String> values) {
            addCriterion("AcceptMan in", values, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManNotIn(List<String> values) {
            addCriterion("AcceptMan not in", values, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManBetween(String value1, String value2) {
            addCriterion("AcceptMan between", value1, value2, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAcceptManNotBetween(String value1, String value2) {
            addCriterion("AcceptMan not between", value1, value2, "acceptMan");
            return (Criteria) this;
        }

        public Criteria andAgreeStateIsNull() {
            addCriterion("AgreeState is null");
            return (Criteria) this;
        }

        public Criteria andAgreeStateIsNotNull() {
            addCriterion("AgreeState is not null");
            return (Criteria) this;
        }

        public Criteria andAgreeStateEqualTo(String value) {
            addCriterion("AgreeState =", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateNotEqualTo(String value) {
            addCriterion("AgreeState <>", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateGreaterThan(String value) {
            addCriterion("AgreeState >", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateGreaterThanOrEqualTo(String value) {
            addCriterion("AgreeState >=", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateLessThan(String value) {
            addCriterion("AgreeState <", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateLessThanOrEqualTo(String value) {
            addCriterion("AgreeState <=", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateLike(String value) {
            addCriterion("AgreeState like", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateNotLike(String value) {
            addCriterion("AgreeState not like", value, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateIn(List<String> values) {
            addCriterion("AgreeState in", values, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateNotIn(List<String> values) {
            addCriterion("AgreeState not in", values, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateBetween(String value1, String value2) {
            addCriterion("AgreeState between", value1, value2, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeStateNotBetween(String value1, String value2) {
            addCriterion("AgreeState not between", value1, value2, "agreeState");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteIsNull() {
            addCriterion("AgreeNote is null");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteIsNotNull() {
            addCriterion("AgreeNote is not null");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteEqualTo(String value) {
            addCriterion("AgreeNote =", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteNotEqualTo(String value) {
            addCriterion("AgreeNote <>", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteGreaterThan(String value) {
            addCriterion("AgreeNote >", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteGreaterThanOrEqualTo(String value) {
            addCriterion("AgreeNote >=", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteLessThan(String value) {
            addCriterion("AgreeNote <", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteLessThanOrEqualTo(String value) {
            addCriterion("AgreeNote <=", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteLike(String value) {
            addCriterion("AgreeNote like", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteNotLike(String value) {
            addCriterion("AgreeNote not like", value, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteIn(List<String> values) {
            addCriterion("AgreeNote in", values, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteNotIn(List<String> values) {
            addCriterion("AgreeNote not in", values, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteBetween(String value1, String value2) {
            addCriterion("AgreeNote between", value1, value2, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeNoteNotBetween(String value1, String value2) {
            addCriterion("AgreeNote not between", value1, value2, "agreeNote");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeIsNull() {
            addCriterion("AgreeTime is null");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeIsNotNull() {
            addCriterion("AgreeTime is not null");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeEqualTo(Date value) {
            addCriterionForJDBCDate("AgreeTime =", value, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("AgreeTime <>", value, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("AgreeTime >", value, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("AgreeTime >=", value, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeLessThan(Date value) {
            addCriterionForJDBCDate("AgreeTime <", value, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("AgreeTime <=", value, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeIn(List<Date> values) {
            addCriterionForJDBCDate("AgreeTime in", values, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("AgreeTime not in", values, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("AgreeTime between", value1, value2, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("AgreeTime not between", value1, value2, "agreeTime");
            return (Criteria) this;
        }

        public Criteria andAgreeManIsNull() {
            addCriterion("AgreeMan is null");
            return (Criteria) this;
        }

        public Criteria andAgreeManIsNotNull() {
            addCriterion("AgreeMan is not null");
            return (Criteria) this;
        }

        public Criteria andAgreeManEqualTo(String value) {
            addCriterion("AgreeMan =", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManNotEqualTo(String value) {
            addCriterion("AgreeMan <>", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManGreaterThan(String value) {
            addCriterion("AgreeMan >", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManGreaterThanOrEqualTo(String value) {
            addCriterion("AgreeMan >=", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManLessThan(String value) {
            addCriterion("AgreeMan <", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManLessThanOrEqualTo(String value) {
            addCriterion("AgreeMan <=", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManLike(String value) {
            addCriterion("AgreeMan like", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManNotLike(String value) {
            addCriterion("AgreeMan not like", value, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManIn(List<String> values) {
            addCriterion("AgreeMan in", values, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManNotIn(List<String> values) {
            addCriterion("AgreeMan not in", values, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManBetween(String value1, String value2) {
            addCriterion("AgreeMan between", value1, value2, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andAgreeManNotBetween(String value1, String value2) {
            addCriterion("AgreeMan not between", value1, value2, "agreeMan");
            return (Criteria) this;
        }

        public Criteria andStaffIdIsNull() {
            addCriterion("StaffId is null");
            return (Criteria) this;
        }

        public Criteria andStaffIdIsNotNull() {
            addCriterion("StaffId is not null");
            return (Criteria) this;
        }

        public Criteria andStaffIdEqualTo(Integer value) {
            addCriterion("StaffId =", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotEqualTo(Integer value) {
            addCriterion("StaffId <>", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdGreaterThan(Integer value) {
            addCriterion("StaffId >", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("StaffId >=", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdLessThan(Integer value) {
            addCriterion("StaffId <", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdLessThanOrEqualTo(Integer value) {
            addCriterion("StaffId <=", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdIn(List<Integer> values) {
            addCriterion("StaffId in", values, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotIn(List<Integer> values) {
            addCriterion("StaffId not in", values, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdBetween(Integer value1, Integer value2) {
            addCriterion("StaffId between", value1, value2, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotBetween(Integer value1, Integer value2) {
            addCriterion("StaffId not between", value1, value2, "staffId");
            return (Criteria) this;
        }

        public Criteria andHouseIdIsNull() {
            addCriterion("HouseId is null");
            return (Criteria) this;
        }

        public Criteria andHouseIdIsNotNull() {
            addCriterion("HouseId is not null");
            return (Criteria) this;
        }

        public Criteria andHouseIdEqualTo(Integer value) {
            addCriterion("HouseId =", value, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdNotEqualTo(Integer value) {
            addCriterion("HouseId <>", value, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdGreaterThan(Integer value) {
            addCriterion("HouseId >", value, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("HouseId >=", value, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdLessThan(Integer value) {
            addCriterion("HouseId <", value, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdLessThanOrEqualTo(Integer value) {
            addCriterion("HouseId <=", value, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdIn(List<Integer> values) {
            addCriterion("HouseId in", values, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdNotIn(List<Integer> values) {
            addCriterion("HouseId not in", values, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdBetween(Integer value1, Integer value2) {
            addCriterion("HouseId between", value1, value2, "houseId");
            return (Criteria) this;
        }

        public Criteria andHouseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("HouseId not between", value1, value2, "houseId");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("Phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("Phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("Phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("Phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("Phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("Phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("Phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("Phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("Phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("Phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("Phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("Phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("Phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("Phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andMessageIsNull() {
            addCriterion("Message is null");
            return (Criteria) this;
        }

        public Criteria andMessageIsNotNull() {
            addCriterion("Message is not null");
            return (Criteria) this;
        }

        public Criteria andMessageEqualTo(String value) {
            addCriterion("Message =", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotEqualTo(String value) {
            addCriterion("Message <>", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageGreaterThan(String value) {
            addCriterion("Message >", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageGreaterThanOrEqualTo(String value) {
            addCriterion("Message >=", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageLessThan(String value) {
            addCriterion("Message <", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageLessThanOrEqualTo(String value) {
            addCriterion("Message <=", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageLike(String value) {
            addCriterion("Message like", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotLike(String value) {
            addCriterion("Message not like", value, "message");
            return (Criteria) this;
        }

        public Criteria andMessageIn(List<String> values) {
            addCriterion("Message in", values, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotIn(List<String> values) {
            addCriterion("Message not in", values, "message");
            return (Criteria) this;
        }

        public Criteria andMessageBetween(String value1, String value2) {
            addCriterion("Message between", value1, value2, "message");
            return (Criteria) this;
        }

        public Criteria andMessageNotBetween(String value1, String value2) {
            addCriterion("Message not between", value1, value2, "message");
            return (Criteria) this;
        }

        public Criteria andPriceTimeIsNull() {
            addCriterion("PriceTime is null");
            return (Criteria) this;
        }

        public Criteria andPriceTimeIsNotNull() {
            addCriterion("PriceTime is not null");
            return (Criteria) this;
        }

        public Criteria andPriceTimeEqualTo(Date value) {
            addCriterionForJDBCDate("PriceTime =", value, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("PriceTime <>", value, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("PriceTime >", value, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("PriceTime >=", value, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeLessThan(Date value) {
            addCriterionForJDBCDate("PriceTime <", value, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("PriceTime <=", value, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeIn(List<Date> values) {
            addCriterionForJDBCDate("PriceTime in", values, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("PriceTime not in", values, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("PriceTime between", value1, value2, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("PriceTime not between", value1, value2, "priceTime");
            return (Criteria) this;
        }

        public Criteria andPriceManIsNull() {
            addCriterion("PriceMan is null");
            return (Criteria) this;
        }

        public Criteria andPriceManIsNotNull() {
            addCriterion("PriceMan is not null");
            return (Criteria) this;
        }

        public Criteria andPriceManEqualTo(String value) {
            addCriterion("PriceMan =", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManNotEqualTo(String value) {
            addCriterion("PriceMan <>", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManGreaterThan(String value) {
            addCriterion("PriceMan >", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManGreaterThanOrEqualTo(String value) {
            addCriterion("PriceMan >=", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManLessThan(String value) {
            addCriterion("PriceMan <", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManLessThanOrEqualTo(String value) {
            addCriterion("PriceMan <=", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManLike(String value) {
            addCriterion("PriceMan like", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManNotLike(String value) {
            addCriterion("PriceMan not like", value, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManIn(List<String> values) {
            addCriterion("PriceMan in", values, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManNotIn(List<String> values) {
            addCriterion("PriceMan not in", values, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManBetween(String value1, String value2) {
            addCriterion("PriceMan between", value1, value2, "priceMan");
            return (Criteria) this;
        }

        public Criteria andPriceManNotBetween(String value1, String value2) {
            addCriterion("PriceMan not between", value1, value2, "priceMan");
            return (Criteria) this;
        }

        public Criteria andCheckTimeIsNull() {
            addCriterion("CheckTime is null");
            return (Criteria) this;
        }

        public Criteria andCheckTimeIsNotNull() {
            addCriterion("CheckTime is not null");
            return (Criteria) this;
        }

        public Criteria andCheckTimeEqualTo(Date value) {
            addCriterionForJDBCDate("CheckTime =", value, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("CheckTime <>", value, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("CheckTime >", value, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("CheckTime >=", value, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeLessThan(Date value) {
            addCriterionForJDBCDate("CheckTime <", value, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("CheckTime <=", value, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeIn(List<Date> values) {
            addCriterionForJDBCDate("CheckTime in", values, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("CheckTime not in", values, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("CheckTime between", value1, value2, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("CheckTime not between", value1, value2, "checkTime");
            return (Criteria) this;
        }

        public Criteria andCheckManIsNull() {
            addCriterion("CheckMan is null");
            return (Criteria) this;
        }

        public Criteria andCheckManIsNotNull() {
            addCriterion("CheckMan is not null");
            return (Criteria) this;
        }

        public Criteria andCheckManEqualTo(String value) {
            addCriterion("CheckMan =", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManNotEqualTo(String value) {
            addCriterion("CheckMan <>", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManGreaterThan(String value) {
            addCriterion("CheckMan >", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManGreaterThanOrEqualTo(String value) {
            addCriterion("CheckMan >=", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManLessThan(String value) {
            addCriterion("CheckMan <", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManLessThanOrEqualTo(String value) {
            addCriterion("CheckMan <=", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManLike(String value) {
            addCriterion("CheckMan like", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManNotLike(String value) {
            addCriterion("CheckMan not like", value, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManIn(List<String> values) {
            addCriterion("CheckMan in", values, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManNotIn(List<String> values) {
            addCriterion("CheckMan not in", values, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManBetween(String value1, String value2) {
            addCriterion("CheckMan between", value1, value2, "checkMan");
            return (Criteria) this;
        }

        public Criteria andCheckManNotBetween(String value1, String value2) {
            addCriterion("CheckMan not between", value1, value2, "checkMan");
            return (Criteria) this;
        }

        public Criteria andFixTimeIsNull() {
            addCriterion("FixTime is null");
            return (Criteria) this;
        }

        public Criteria andFixTimeIsNotNull() {
            addCriterion("FixTime is not null");
            return (Criteria) this;
        }

        public Criteria andFixTimeEqualTo(Date value) {
            addCriterionForJDBCDate("FixTime =", value, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("FixTime <>", value, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("FixTime >", value, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("FixTime >=", value, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeLessThan(Date value) {
            addCriterionForJDBCDate("FixTime <", value, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("FixTime <=", value, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeIn(List<Date> values) {
            addCriterionForJDBCDate("FixTime in", values, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("FixTime not in", values, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("FixTime between", value1, value2, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("FixTime not between", value1, value2, "fixTime");
            return (Criteria) this;
        }

        public Criteria andFixMoneyIsNull() {
            addCriterion("FixMoney is null");
            return (Criteria) this;
        }

        public Criteria andFixMoneyIsNotNull() {
            addCriterion("FixMoney is not null");
            return (Criteria) this;
        }

        public Criteria andFixMoneyEqualTo(String value) {
            addCriterion("FixMoney =", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyNotEqualTo(String value) {
            addCriterion("FixMoney <>", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyGreaterThan(String value) {
            addCriterion("FixMoney >", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("FixMoney >=", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyLessThan(String value) {
            addCriterion("FixMoney <", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyLessThanOrEqualTo(String value) {
            addCriterion("FixMoney <=", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyLike(String value) {
            addCriterion("FixMoney like", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyNotLike(String value) {
            addCriterion("FixMoney not like", value, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyIn(List<String> values) {
            addCriterion("FixMoney in", values, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyNotIn(List<String> values) {
            addCriterion("FixMoney not in", values, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyBetween(String value1, String value2) {
            addCriterion("FixMoney between", value1, value2, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andFixMoneyNotBetween(String value1, String value2) {
            addCriterion("FixMoney not between", value1, value2, "fixMoney");
            return (Criteria) this;
        }

        public Criteria andIsOverIsNull() {
            addCriterion("IsOver is null");
            return (Criteria) this;
        }

        public Criteria andIsOverIsNotNull() {
            addCriterion("IsOver is not null");
            return (Criteria) this;
        }

        public Criteria andIsOverEqualTo(Boolean value) {
            addCriterion("IsOver =", value, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverNotEqualTo(Boolean value) {
            addCriterion("IsOver <>", value, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverGreaterThan(Boolean value) {
            addCriterion("IsOver >", value, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverGreaterThanOrEqualTo(Boolean value) {
            addCriterion("IsOver >=", value, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverLessThan(Boolean value) {
            addCriterion("IsOver <", value, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverLessThanOrEqualTo(Boolean value) {
            addCriterion("IsOver <=", value, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverIn(List<Boolean> values) {
            addCriterion("IsOver in", values, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverNotIn(List<Boolean> values) {
            addCriterion("IsOver not in", values, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverBetween(Boolean value1, Boolean value2) {
            addCriterion("IsOver between", value1, value2, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsOverNotBetween(Boolean value1, Boolean value2) {
            addCriterion("IsOver not between", value1, value2, "isOver");
            return (Criteria) this;
        }

        public Criteria andIsCheckIsNull() {
            addCriterion("IsCheck is null");
            return (Criteria) this;
        }

        public Criteria andIsCheckIsNotNull() {
            addCriterion("IsCheck is not null");
            return (Criteria) this;
        }

        public Criteria andIsCheckEqualTo(Boolean value) {
            addCriterion("IsCheck =", value, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckNotEqualTo(Boolean value) {
            addCriterion("IsCheck <>", value, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckGreaterThan(Boolean value) {
            addCriterion("IsCheck >", value, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckGreaterThanOrEqualTo(Boolean value) {
            addCriterion("IsCheck >=", value, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckLessThan(Boolean value) {
            addCriterion("IsCheck <", value, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckLessThanOrEqualTo(Boolean value) {
            addCriterion("IsCheck <=", value, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckIn(List<Boolean> values) {
            addCriterion("IsCheck in", values, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckNotIn(List<Boolean> values) {
            addCriterion("IsCheck not in", values, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckBetween(Boolean value1, Boolean value2) {
            addCriterion("IsCheck between", value1, value2, "isCheck");
            return (Criteria) this;
        }

        public Criteria andIsCheckNotBetween(Boolean value1, Boolean value2) {
            addCriterion("IsCheck not between", value1, value2, "isCheck");
            return (Criteria) this;
        }

        public Criteria andFeedBackIsNull() {
            addCriterion("FeedBack is null");
            return (Criteria) this;
        }

        public Criteria andFeedBackIsNotNull() {
            addCriterion("FeedBack is not null");
            return (Criteria) this;
        }

        public Criteria andFeedBackEqualTo(String value) {
            addCriterion("FeedBack =", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackNotEqualTo(String value) {
            addCriterion("FeedBack <>", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackGreaterThan(String value) {
            addCriterion("FeedBack >", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackGreaterThanOrEqualTo(String value) {
            addCriterion("FeedBack >=", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackLessThan(String value) {
            addCriterion("FeedBack <", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackLessThanOrEqualTo(String value) {
            addCriterion("FeedBack <=", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackLike(String value) {
            addCriterion("FeedBack like", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackNotLike(String value) {
            addCriterion("FeedBack not like", value, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackIn(List<String> values) {
            addCriterion("FeedBack in", values, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackNotIn(List<String> values) {
            addCriterion("FeedBack not in", values, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackBetween(String value1, String value2) {
            addCriterion("FeedBack between", value1, value2, "feedBack");
            return (Criteria) this;
        }

        public Criteria andFeedBackNotBetween(String value1, String value2) {
            addCriterion("FeedBack not between", value1, value2, "feedBack");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("Email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("Email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("Email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("Email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("Email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("Email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("Email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("Email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("Email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("Email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("Email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("Email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("Email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("Email not between", value1, value2, "email");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}