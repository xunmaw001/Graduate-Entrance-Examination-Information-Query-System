<template>
  <div class="main-content">
    <!-- 列表页 -->
    <div v-if="showFlag">
      <el-form :inline="true" :model="searchForm" class="form-content">
                                                                                <el-form-item label="考生账号">
                <el-input v-model="searchForm.kaoshengzhanghao" 
                    placeholder="考生账号" clearable></el-input>
              </el-form-item>
                                                                                    <el-form-item label="导师工号">
                <el-input v-model="searchForm.daoshigonghao" 
                    placeholder="导师工号" clearable></el-input>
              </el-form-item>
                                                                                                              <el-form-item>
          <el-button round @click="search()">查询</el-button>
          <el-button
            v-if="isAuth('sheshishenqing','新增')"
            type="primary"
            @click="addOrUpdateHandler()"
            round
          >新增</el-button>
          <el-button
            v-if="isAuth('sheshishenqing','删除')"
            :disabled="dataListSelections.length <= 0"
            type="danger"
            @click="deleteHandler()"
            round
          >删除</el-button>
                  </el-form-item>
      </el-form>
      <div class="table-content">
        <el-table
            v-if="isAuth('sheshishenqing','查看')"
            :data="dataList"
            border
            v-loading="dataListLoading"
            @selection-change="selectionChangeHandler"
            style="width: 100%;">
            <el-table-column
                type="selection"
                header-align="center"
                align="center"
                width="50">
            </el-table-column>
                                            <el-table-column
                    prop="sheshimingcheng"
                    header-align="center"
                    align="center"
                    sortable
                    label="设施名称">
                    <template slot-scope="scope">
                      {{scope.row.sheshimingcheng}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="shenqingliyou"
                    header-align="center"
                    align="center"
                    sortable
                    label="申请理由">
                    <template slot-scope="scope">
                      {{scope.row.shenqingliyou}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="kaoshengzhanghao"
                    header-align="center"
                    align="center"
                    sortable
                    label="考生账号">
                    <template slot-scope="scope">
                      {{scope.row.kaoshengzhanghao}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="kaoshengxingming"
                    header-align="center"
                    align="center"
                    sortable
                    label="考生姓名">
                    <template slot-scope="scope">
                      {{scope.row.kaoshengxingming}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="daoshigonghao"
                    header-align="center"
                    align="center"
                    sortable
                    label="导师工号">
                    <template slot-scope="scope">
                      {{scope.row.daoshigonghao}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="daoshixingming"
                    header-align="center"
                    align="center"
                    sortable
                    label="导师姓名">
                    <template slot-scope="scope">
                      {{scope.row.daoshixingming}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="shenqingriqi"
                    header-align="center"
                    align="center"
                    sortable
                    label="申请日期">
                    <template slot-scope="scope">
                      {{scope.row.shenqingriqi}}
                    </template>
                </el-table-column>
                                                                                                                                              <el-table-column
                  prop="shhf"
                  header-align="center"
                  align="center"
                  sortable
                  label="审核回复">
              </el-table-column>
              <el-table-column
                  v-if="isAuth('sheshishenqing','审核')"
                  prop="sfsh"
                  header-align="center"
                  align="center"
                  sortable
                  label="审核">
                  <template slot-scope="scope">
                    <span style="margin-right:10px">{{scope.row.sfsh=='是'?'通过':'未通过'}}</span>
                    <el-button  type="text" icon="el-icon-edit" size="small" @click="shDialog(scope.row)">审核</el-button>
                  </template>
              </el-table-column>
                        <el-table-column
                header-align="center"
                align="center"
                label="操作">
                <template slot-scope="scope">
                                <el-button v-if="isAuth('sheshishenqing','查看')" type="text" icon="el-icon-edit" size="small" @click="addOrUpdateHandler(scope.row.id,'info')">详情</el-button>
                                                <el-button v-if="isAuth('sheshishenqing','修改')" type="text" icon="el-icon-edit" size="small" @click="addOrUpdateHandler(scope.row.id)">修改</el-button>
                <el-button v-if="isAuth('sheshishenqing','删除')" type="text" icon="el-icon-delete" size="small" @click="deleteHandler(scope.row.id)">删除</el-button>
                </template>
            </el-table-column>
        </el-table>
                                                                                                                                                                <el-pagination
          @size-change="sizeChangeHandle"
          @current-change="currentChangeHandle"
          :current-page="pageIndex"
          :page-sizes="[10, 20, 50, 100]"
          :page-size="pageSize"
          :total="totalPage"
          layout="total, sizes, prev, pager, next, jumper"
          class="pagination-content"
        ></el-pagination>
      </div>
    </div>
    <!-- 添加/修改页面  将父组件的search方法传递给子组件-->
    <add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>

    
        <el-dialog
      title="审核"
      :visible.sync="sfshVisiable"
      width="50%">
      <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="审核状态">
          <el-select v-model="shForm.sfsh" placeholder="审核状态">
            <el-option label="通过" value="是"></el-option>
            <el-option label="不通过" value="否"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="内容">
          <el-input type="textarea" :rows="8" v-model="shForm.shhf"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="shDialog">取 消</el-button>
        <el-button type="primary" @click="shHandler">确 定</el-button>
      </span>
    </el-dialog>
    
      </div>
</template>
<script>
import AddOrUpdate from "./add-or-update";
export default {
  data() {
    return {
                                                                                                                  daoshigonghaoOptions: [],
                                                                                                searchForm: {
        key: ""
      },
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      dataListSelections: [],
      showFlag: true,
      sfshVisiable: false,
      shForm: {},
      chartVisiable: false,
      addOrUpdateFlag:false,
          };
  },
  mounted() {
    this.init();
    this.getDataList();
  },
  filters: {
    htmlfilter: function (val) {
      return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
    }
  },
  components: {
    AddOrUpdate,
      },
  methods: {
                init () {
                                                                                            this.$http({
            url: `option/daoshixinxi/daoshigonghao`,
            method: "get"
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.daoshigonghaoOptions = data.data;
            } else {
              this.$message.error(data.msg);
            }
          });
                                                                                                                                                                                                            },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },
    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
      }
                                                                                      if(this.searchForm.kaoshengzhanghao!='' && this.searchForm.kaoshengzhanghao!=undefined){
            params['kaoshengzhanghao'] = '%' + this.searchForm.kaoshengzhanghao + '%'
          }
                                                                                  if(this.searchForm.daoshigonghao!='' && this.searchForm.daoshigonghao!=undefined){
            params['daoshigonghao'] = '%' + this.searchForm.daoshigonghao + '%'
          }
                                                                                                                      this.$http({
        url: "sheshishenqing/page",
        method: "get",
        params: params
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
        // 审核窗口
    shDialog(row){
      this.sfshVisiable = !this.sfshVisiable;
      if(row){
        this.shForm = {
                    sheshimingcheng: row.sheshimingcheng,
                    shenqingliyou: row.shenqingliyou,
                    kaoshengzhanghao: row.kaoshengzhanghao,
                    kaoshengxingming: row.kaoshengxingming,
                    daoshigonghao: row.daoshigonghao,
                    daoshixingming: row.daoshixingming,
                    shenqingriqi: row.shenqingriqi,
                    sfsh: row.sfsh,
                    shhf: row.shhf,
                    id: row.id
        }
      }
    },
    // 审核
    shHandler(){
      this.$confirm(`确定操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "sheshishenqing/update",
          method: "post",
          data: this.shForm
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.getDataList();
                this.shDialog()
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    },
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 删除
    deleteHandler(id) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "sheshishenqing/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.search();
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
