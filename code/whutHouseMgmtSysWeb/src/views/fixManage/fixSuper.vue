<template>
  <div class="second-container">
    <staffIndex @emit-staff="getStaff"></staffIndex>
    <section class="special-container">
      <div class="third-container">
        <!-- 面包屑导航 -->
        <div class="warp-breadcrum">
          <el-breadcrumb separator="/">
            <el-breadcrumb-item :to="{ path: '/' }">
              <b>首页</b>
            </el-breadcrumb-item>
            <el-breadcrumb-item>维修管理</el-breadcrumb-item>
            <el-breadcrumb-item>维修直批</el-breadcrumb-item>
          </el-breadcrumb>
        </div>
        <!-- 下方主内容 -->
        <div class="warp-body">
          <!-- 工具栏 -->
          <div class="toolbar card">
            <el-row>
              <el-col :span="4" :offset="1">
                <el-input v-model="query" placeholder="输入职工姓名或id搜索"></el-input>
              </el-col>
              <el-col :span="1" :offset="1">
                <el-button type="primary" @click="queryMethod">查询</el-button>
              </el-col>
              <el-col :span="1" :offset="1">
                <el-button type="primary">重置</el-button>
              </el-col>
            </el-row>
          </div>
          <div class="main-data">
            <!-- 表格区 -->
            <el-row class="personal-info">
              <el-col :span="8" class="col card">
                <personal-info-table @select-staff="getPropsStaff" :query-data="queryData"></personal-info-table>
              </el-col>
              <el-col :span="15" class="col card" style="margin-left:20px">
                <house-rel @select-house="getPropHouse"></house-rel>
              </el-col>
            </el-row>
            <!-- 表单区域 -->
            <div class="super-form card">
              <el-form :model="superForm" label-width="100px" ref="superForm" v-loading="listLoading">
                <el-row>
                  <el-col :span="8" :offset="2">
                    <el-form-item label="职工名称">
                      <el-input v-model="staffName" readonly  placeholder="请选择职工"></el-input>
                    </el-form-item>
                  </el-col>
                  <el-col :span="8" :offset="1">
                    <el-form-item label="维修类型">
                      <el-select v-model="superForm.fixContentId" placeholder="请选择维修类型" clearable>
                        <el-option v-for="fix in fixType" :key="fix.fixParamId" :value="fix.fixParamId" :label="fix.fixParamName"></el-option>
                      </el-select>
                    </el-form-item>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="17" :offset="2">
                    <el-form-item label="住房地址">
                      <el-input v-model="houseName" readonly placeholder="请选择住房"></el-input>
                    </el-form-item>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="10" :offset="2">
                    <el-form-item label="附加说明" prop="acceptNote">
                      <el-input v-model="superForm.fixDirectApplyNote" type="textarea" :rows="2" placeholder="请输入备注说明（可选）"></el-input>
                    </el-form-item>
                  </el-col>
                  <el-col :span="5" :offset="2">
                    <el-button type="primary" @click="superSubmit">提交</el-button>
                  </el-col>
                </el-row>
              </el-form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script type="text/ecmascript-6">
import staffIndex from "./components/staffIndex";
import personalInfoTable from "./components/personalInfoTable";
import houseRel from "./components/houseRel";
import { postFixSuper, postFixEmail } from "@/api/fixManage";
import { getFixParam } from "@/api/sysManage";
import utils from "@/utils/index.js";
export default {
  data() {
    return {
      // 查询需要相关的
      propQuery: "",
      query: "",
      queryData: {
        param: "",
        type: ""
      },
      // 表单需要的
      superForm: {},
      staffName: "",
      houseName: "",
      fixType: [],
      listLoading: false
    };
  },
  watch: {
    propQuery(newVal) {
      if (typeof newVal == "number") {
        this.queryData.param = newVal;
        this.queryData.type = 0;
      } else {
        this.queryData.param = newVal;
        this.queryData.type = 1;
      }
    }
  },
  created() {
    this.getFixType();
  },
  components: {
    staffIndex,
    personalInfoTable,
    houseRel
  },
  methods: {
    // 从组件获取id
    getStaff(object) {
      this.propQuery = object.id;
    },
    //查询方法
    queryMethod() {
      this.propQuery = this.query;
    },
    getPropHouse(selectHouse) {
      this.houseName = selectHouse.name;
      this.superForm.houseId = selectHouse.id;
    },
    getPropsStaff(selectStaff) {
      this.staffName = selectStaff.name;
      this.superForm.staffId = selectStaff.id;
    },
    // 获取维修类型
    getFixType() {
      this.listLoading = true;
      let param = {};
      getFixParam(param, 16)
        .then(res => {
          this.fixType = res.data.data.data.list;
          // console.log(this.fixType);
          this.listLoading = false;
        })
        .catch(err => {
          console.log(err);
        });
    },
    // 维修直批提交
    superSubmit() {
      this.listLoading = true;
      let params = Object.assign({}, this.superForm);
      params.directApplyMan = this.$store.getters.userName;
      postFixSuper(params).then(res => {
        let params = {
          fixId: this.superForm.id
        };
        postFixEmail(params).catch(err => {
          console.log(err);
        });
        utils.statusinfo(this, res.data);
        this.listLoading = false;
      });
    }
  }
};
</script>

<style scoped lang="scss">
@import "../../styles/variables.scss";

.second-container {
  background-color: $background-grey;
  .third-container {
    .toolbar {
      padding-top: 10px;
      padding-bottom: 10px;
    }
    .main-data {
      & > .personal-info {
        height: 40vh;
        & > .col {
          height: 100%;
          overflow: auto;
        }
      }
      & > .super-form {
        margin: 30px auto 20px;
        padding-top: 20px;
        height: 30vh;
      }
    }
  }
}
</style>
