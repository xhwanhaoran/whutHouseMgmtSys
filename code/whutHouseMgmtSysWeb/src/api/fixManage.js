import request from '@/utils/request'

// 维修管理--维修申请
// 获取员工个人信息
export function getStaffInfo(params, staffID) {
    return request({
        url: `/fix/getApply/${staffID}`,
        method: 'get',
        params: params
    })
}
// 维修申请提交
export function postFixApply(data) {
    return request({
        url: `/fix/addApply`,
        method: 'post',
        data: data
    })
}

// 维修管理--维修受理
// 受理信息获取
export function getFixAccept(params, type) {
    return request({
        url: `/fix/getAccept/${type}`,
        method: 'get',
        params: params
    })
}
// 维修受理操作
export function putFixAccept(data) {
    return request({
        url: `/fix/addAccept`,
        method: 'put',
        data: data
    })
}

// 维修管理--维修审核
// 需要审核信息获取
export function getFixAgree(params, type) {
    return request({
        url: `/fix/getAgree/${type}`,
        method: 'get',
        params: params
    })
}
// 维修审核操作
export function putFixAgree(data) {
    return request({
        url: `/fix/addAgree`,
        method: 'put',
        data: data
    })
}

// 维修管理-维修直批
// 获取职工-根据id
export function getFixStaffById(staffID) {
    return request({
        url: `/fix/getDirectApplyByStaffId/${staffID}`,
        method: 'get',
    })
}
// 获取职工-根据姓名
export function getFixStaffByName(staffName) {
    return request({
        url: `/fix/getDirectApplyByStaffName/${staffName}`,
        method: 'get',
    })
}
// 直批通过
export function postFixSuper(data) {
    return request({
        url: `/fix/addDirectApply`,
        method: 'post',
        data: data
    })
}

// 维修管理-维修申请管理
// 获取维修申请
export function getFixForm(params) {
    return request({
        url: `/fix/getFixManagement`,
        method: 'get',
        params: params
    })
}
// 重新受理
export function getFixReAccept(fixFormId) {
    return request({
        url: `/fix/reAccept/${fixFormId}`,
        method: 'get',
    })
}
// 重新审核
export function getFixReAgree(fixFormId) {
    return request({
        url: `/fix/reAgree/${fixFormId}`,
        method: 'get',
    })
}

// 维修管理-维修结算
// 多条件查找
export function postFixmulticondition(param, data) {
    return request({
        url: `/fix/getCheckByAllMultiCondition?page=${param.page}&size=${param.size}`,
        method: 'post',
        data: data
    })
}
// 维修定价
export function putFixPrice(data) {
    return request({
        url: `/fix/addPrice`,
        method: 'put',
        data: data
    })
}
// 维修结算
export function putFixcheck(data) {
    return request({
        url: `/fix/addCheck`,
        method: 'put',
        data: data
    })
}

// 根据职工id获取维修信息
export function getFixByStaffID(staffID) {
    return request({
        url: `/fix/getByStaffId/${staffID}`,
        method: 'get',
    })
}

// 删除维修申请记录
export function deleteFixForm(formID) {
    return request({
        url: `/fix/deleteFix/${formID}`,
        method: 'delete',
    })
}
// 维修发送邮件接口
export function postFixEmail(params) {
    return request({
        url: `mail/fix`,
        method: 'post',
        params:params
    })
}