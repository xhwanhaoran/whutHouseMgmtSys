<template>
  <div class="seach">
    <el-dialog title="选择住房" custom-class="query" @close="dialogClose" :visible.sync="formVisible" v-loading="selectLoading" @open="openDialog">
      <div class="query-tool">
        <el-form :model="queryForm" label-width="100px" ref="queryForm">
          <el-row type="flex" justify="start">
            <el-col :span="5">
              <el-form-item label="住房类型">
                <el-select v-model="queryForm.houseTypeId" size="small" :clearable="true" placeholder="全部类型">
                  <el-option v-for="struct in hosueParam.typeData" :key="struct.houseParamId" :value="struct.houseParamId" :label="struct.houseParamName"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="5">
              <el-form-item label="住房状态">
                <el-select v-model="queryForm.useStatusId" size="small" :clearable="true" placeholder="全部状态">
                  <el-option v-for="struct in hosueParam.statusData" :key="struct.houseParamId" :value="struct.houseParamId" :label="struct.houseParamName"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="5">
              <el-form-item label="住房结构">
                <el-select v-model="queryForm.structId" size="small" :clearable="true" placeholder="全部结构">
                  <el-option v-for="struct in hosueParam.structData" :key="struct.houseParamId" :value="struct.houseParamId" :label="struct.houseParamName"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="5">
              <el-form-item label="住房户型">
                <el-select v-model="queryForm.layoutId" size="small" :clearable="true" placeholder="全部户型">
                  <el-option v-for="struct in hosueParam.layoutData" :key="struct.houseParamId" :value="struct.houseParamId" :label="struct.houseParamName"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
          </el-row>
          <el-row type="flex" justify="start">
            <el-col :span="5">
              <el-form-item label="住房面积">
                <el-row>
                  <el-col :span="10">
                    <el-input v-model="tempData.minArea" size="small" placeholder="不限"></el-input>
                  </el-col>
                  <el-col style=" text-align: center;" :span="4">
                    <span>至</span>
                  </el-col>
                  <el-col :span="10">
                    <el-input v-model="tempData.maxArea" size="small" placeholder="不限"></el-input>
                  </el-col>
                </el-row>
              </el-form-item>
            </el-col>
            <el-col :span="10">
              <el-form-item label="建设时间">
                <el-row>
                  <el-col :span="10">
                    <el-date-picker v-model="tempData.startTime" type="year" size="small" align="center" placeholder="起始" value-format="yyyy-MM-dd"></el-date-picker>
                  </el-col>
                  <el-col style=" text-align: center;" :span="4">
                    <span>至</span>
                  </el-col>
                  <el-col :span="10">
                    <el-date-picker v-model="tempData.endTime" type="year" size="small" align="center" placeholder="终止" value-format="yyyy-MM-dd"></el-date-picker>
                  </el-col>
                </el-row>
              </el-form-item>
            </el-col>
            <el-col :span="5">
              <el-form-item label="住房校区">
                <el-select v-model="queryForm.campusId" size="small" :clearable="true" @clear="clearCampus" placeholder="全部校区">
                  <el-option v-for="campuse in hosueParam.campusData" :key="campuse.id" :value="campuse.id" :label="campuse.name"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
          </el-row>
          <el-row type="flex" justify="start">
            <el-col :span="7">
              <el-form-item label="住房区域">
                <el-select v-model="queryForm.regionId" size="small" :clearable="true" @clear="clearRegion" placeholder="全部区域" @change="selectRegionChange">
                  <el-option v-for="region in hosueParam.regionData" :key="region.id" :value="region.id" :label="region.name"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="7">
              <el-form-item label="房屋楼栋">
                <el-select v-model="queryForm.buildingId" size="small" :clearable="true" placeholder="全部房屋">
                  <el-option v-for="building in hosueParam.buildingData" :key="building.id" :value="building.id" :label="building.name"></el-option>
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="7" :offset="2">
              <el-form-item>
                <el-button type="danger" size="small" @click="resseting">重置</el-button>
                <el-button type="primary" size="small" @click="mutiConditionQuery">查询</el-button>
              </el-form-item>
            </el-col>
          </el-row>
        </el-form>
      </div>
      <div class="query-table card">
        <el-table :data="houseData" stripe class="table" height="string" v-loading="tableLoading" @row-dblclick="rowDblclik">
          <el-table-column label="住房号" align="center" width="95" prop="houseNo"></el-table-column>
          <el-table-column label="住房类型" align="center" width="120" prop="houseSort"></el-table-column>
          <el-table-column label="户型" align="center" width="100" prop="houseType"></el-table-column>
          <el-table-column label="结构" align="center" width="100" prop="structName"></el-table-column>
          <el-table-column label="使用状态" align="center" width="100" prop="useStatus"></el-table-column>
          <el-table-column label="建筑面积" align="center" prop="buildArea"></el-table-column>
          <el-table-column label="地址" align="center" prop="address"></el-table-column>
        </el-table>
        <el-pagination layout="total, prev, pager, next, sizes, jumper" @size-change="sizeChangeEvent" @current-change="currentChangeEvent"
          :page-size="size" :page-sizes="[10,15,20,25,30]" :total="totalNum">
        </el-pagination>
      </div>
    </el-dialog>
  </div>
</template>

<script type="text/ecmascript-6">
import utils from "@/utils/index.js";
import {
  getRegionWithBuildings,
  postHouseByComplexMultiCondition,
  getCampusData
} from "@/api/basiceData";
import { getHouseParam } from "@/api/sysManage";
export default {
  data() {
    return {
      // 选择住房窗口
      selectLoading: false,
      // 查询表单
      queryForm: {
        regionId: "",
        buildingId: ""
      },
      hosueParam: {
        structData: {},
        statusData: {},
        layoutData: {},
        typeData: {},
        regionData: [],
        regionDataWithBuilding: [],
        buildingData: [],
        campusData: []
      },
      tempData: {
        minArea: "",
        maxArea: "",
        startTime: "",
        endTime: ""
      },
      // 表格需要的
      houseData: [],
      tableLoading: false,
      totalNum: 0,
      page: 1,
      size: 10
    };
  },
  // },
  // 计算属性
  computed: {
    selectRegion() {
      return this.queryForm.regionId;
    },
    selectCampus() {
      return this.queryForm.campusId;
    },
    formVisible: {
      get: function() {
        return this.$store.getters.seachVisible;
      },
      set: function() {}
    }
  },
  watch: {
    // 监听选项的变动
    selectRegion(newval) {
      for (var region of this.hosueParam.regionData) {
        if (region.id == newval)
          this.hosueParam.buildingData = region.buildingList;
      }
    },
    selectCampus(newVal) {
      this.hosueParam.regionData = [];
      for (var region of this.hosueParam.regionDataWithBuilding) {
        if (region.campusId == newVal) this.hosueParam.regionData.push(region);
      }
    }
  },
  created() {
    this.getCompus().then(res => {
      this.getHouseParam();
      this.getRegionWithBuilding();
    });
  },
  methods: {
    dialogClose() {
      this.$store.dispatch("setSeachHouse", false);
    },
    // 窗口打开时回调
    openDialog() {
      this.getList();
    },
    // 获取查询时候的房屋参数
    getHouseParam() {
      this.selectLoading = true;
      let param = {
        size: 999
      };
      // http请求
      // 住房类型1
      getHouseParam(param, 1)
        .then(res => {
          this.hosueParam.typeData = res.data.data.data.list;
        })
        .catch(err => {
          console.log(err);
        });
      // 住房户型2
      getHouseParam(param, 2)
        .then(res => {
          this.hosueParam.layoutData = res.data.data.data.list;
        })
        .catch(err => {
          console.log(err);
        });
      // 住房结构4
      getHouseParam(param, 3)
        .then(res => {
          this.hosueParam.statusData = res.data.data.data.list;
        })
        .catch(err => {
          console.log(err);
        });
      // 房屋状态3
      getHouseParam(param, 4)
        .then(res => {
          this.hosueParam.structData = res.data.data.data.list;
          this.selectLoading = false;
        })
        .catch(err => {
          console.log(err);
        });
    },
    getCompus() {
      return new Promise((resolve, reject) => {
        this.listLoading = true;
        let param = {
          page: 1,
          size: 99999
        };
        getCampusData(param)
          .then(res => {
            this.hosueParam.campusData = res.data.data.data.list;
            this.listLoading = false;
            resolve();
          })
          .catch(err => {
            console.log(err);
            reject(err);
          });
      });
    },
    // 获取区域信息包括楼栋
    getRegionWithBuilding() {
      this.listLoading = true;
      let param = {
        // page: this.page,
        // size: this.size
      };
      getRegionWithBuildings(param)
        .then(res => {
          this.hosueParam.regionDataWithBuilding = res.data.data.data;
          // console.log(this.hosueParam)
          this.hosueParam.regionDataWithBuilding.forEach(region => {
            let flag = region.name.indexOf("（");
            if (flag != -1) {
              region.name = region.name.substring(0, flag);
            }
          });
          this.listLoading = false;
        })
        .catch(err => {
          console.log(err);
        });
    },
    // 获取房屋数据
    getList() {
      this.tableLoading = true;
      let data = Object.assign({}, this.queryForm);
      for (let v in data) {
        if (data[v] == "") delete data[v];
      }
      let params = {
        page: this.page,
        size: this.size
      };
      postHouseByComplexMultiCondition(params, data).then(res => {
        utils.statusinfo(this, res.data);
        this.tableLoading = false;
        this.houseData = res.data.data.data.list;
        this.totalNum = res.data.data.data.total;
      });
    },
    // 根据多条件进行查询
    mutiConditionQuery() {
      this.queryForm.areaParameter = "";
      this.queryForm.finishTime = "";
      let tempData = this.tempData;
      for (let v in tempData) {
        if (tempData[v] == null || tempData[v] == "") delete tempData[v];
      }
      if (
        tempData.hasOwnProperty("minArea") &&
        tempData.hasOwnProperty("maxArea")
      ) {
        this.queryForm.areaParameter = {
          areaParamName: "建筑面积",
          maxArea: tempData.maxArea,
          minArea: tempData.minArea
        };
      }
      if (
        tempData.hasOwnProperty("startTime") &&
        tempData.hasOwnProperty("endTime")
      ) {
        this.queryForm.finishTime = {
          endTime: tempData.endTime,
          startTime: tempData.startTime
        };
      }
      this.getList();
    },
    // 某一行被双击时触发
    rowDblclik(row, event) {
      const houseName = `【${row.houseSort}】,【${row.houseType}】,${
        row.address
      }`;
      const houseID = row.houseId;
      this.$emit("select-house", [houseName, houseID]);
      this.$store.dispatch("setSeachHouse", false);
    },
    // 重置查询表单
    resseting() {
      this.queryForm = {};
    },
    // 清空搜索的区域时
    clearRegion() {
      this.queryForm.buildingId = "";
    },
    clearCampus() {
      this.queryForm.regionId = "";
      this.queryForm.buildingId = "";
    },
    //选择的区域变化时
    selectRegionChange(region) {
      this.hosueParam.buildingData = region.buildingList;
    },
    // 更换每页数量
    sizeChangeEvent(val) {
      this.listLoading = true;
      this.size = val;
      this.getList();
    },
    //页码切换时
    currentChangeEvent(val) {
      this.listLoading = true;
      this.page = val;
      this.getList();
    }
  }
};
</script>

<style scoped lang="scss">
@import "../../styles/variables.scss";
.seach {
  .query {
    background-color: $background-grey;
  }
  .el-form-item {
    margin-bottom: 5px;
  }
  & .query-table {
    height: 35vh;
    position: relative;
    padding-bottom: 5vh;
    & .table {
      width: 100%;
      height: 100%;
    }
  }
}
</style>
