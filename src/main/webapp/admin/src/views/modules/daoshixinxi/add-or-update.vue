<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
      <el-row>
                  <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="导师工号" prop="daoshigonghao">
          <el-input v-model="ruleForm.daoshigonghao" 
              placeholder="导师工号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.daoshigonghao" label="导师工号" prop="daoshigonghao">
              <el-input v-model="ruleForm.daoshigonghao" 
                placeholder="导师工号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="密码" prop="mima">
          <el-input v-model="ruleForm.mima" 
              placeholder="密码" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.mima" label="密码" prop="mima">
              <el-input v-model="ruleForm.mima" 
                placeholder="密码" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="导师姓名" prop="daoshixingming">
          <el-input v-model="ruleForm.daoshixingming" 
              placeholder="导师姓名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.daoshixingming" label="导师姓名" prop="daoshixingming">
              <el-input v-model="ruleForm.daoshixingming" 
                placeholder="导师姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="24">  
        <el-form-item v-if="type!='info'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="touxiangUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.touxiang" label="头像" prop="touxiang">
            <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.touxiang.split(',')" :src="item" width="100" height="100">
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="手机号" prop="shoujihao">
          <el-input v-model="ruleForm.shoujihao" 
              placeholder="手机号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shoujihao" label="手机号" prop="shoujihao">
              <el-input v-model="ruleForm.shoujihao" 
                placeholder="手机号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="导师职称" prop="daoshizhicheng">
          <el-input v-model="ruleForm.daoshizhicheng" 
              placeholder="导师职称" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.daoshizhicheng" label="导师职称" prop="daoshizhicheng">
              <el-input v-model="ruleForm.daoshizhicheng" 
                placeholder="导师职称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'"  label="所在学校" prop="suozaixuexiao">
          <el-select v-model="ruleForm.suozaixuexiao" placeholder="请选择所在学校">
            <el-option
                v-for="(item,index) in suozaixuexiaoOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.suozaixuexiao" label="所在学校" prop="suozaixuexiao">
              <el-input v-model="ruleForm.suozaixuexiao" 
                placeholder="所在学校" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="电子邮箱" prop="dianziyouxiang">
          <el-input v-model="ruleForm.dianziyouxiang" 
              placeholder="电子邮箱" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.dianziyouxiang" label="电子邮箱" prop="dianziyouxiang">
              <el-input v-model="ruleForm.dianziyouxiang" 
                placeholder="电子邮箱" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                          </el-row>
                                                                                                                                                                                                                                                                            <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="导师介绍" prop="daoshijieshao">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.daoshijieshao" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.daoshijieshao" label="导师介绍" prop="daoshijieshao">
                    <span v-html="ruleForm.daoshijieshao"></span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
                    <el-form-item>
                <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    
    
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
      id: '',
      type: '',
            ruleForm: {
                        daoshigonghao: '',
                                mima: '',
                                daoshixingming: '',
                                touxiang: '',
                                shoujihao: '',
                                daoshizhicheng: '',
                                suozaixuexiao: '',
                                dianziyouxiang: '',
                                daoshijieshao: '',
                      },
                                                                                                            suozaixuexiaoOptions: [],
                                                rules: {
                  daoshigonghao: [
                            { required: true, message: '导师工号不能为空', trigger: 'blur' },
                                                                                              ],
                  mima: [
                            { required: true, message: '密码不能为空', trigger: 'blur' },
                                                                                              ],
                  daoshixingming: [
                                                                                              ],
                  touxiang: [
                                                                                              ],
                  shoujihao: [
                                                                { validator: validatePhone, trigger: 'blur' },
                                                          ],
                  daoshizhicheng: [
                                                                                              ],
                  suozaixuexiao: [
                                                                                              ],
                  dianziyouxiang: [
                                                                            { validator: validateEmail, trigger: 'blur' },
                                              ],
                  daoshijieshao: [
                                                                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                                                                  },
  methods: {
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
                    if(o=='daoshigonghao'){
            this.ruleForm.daoshigonghao = obj[o];
            continue;
          }
                    if(o=='mima'){
            this.ruleForm.mima = obj[o];
            continue;
          }
                    if(o=='daoshixingming'){
            this.ruleForm.daoshixingming = obj[o];
            continue;
          }
                    if(o=='touxiang'){
            this.ruleForm.touxiang = obj[o];
            continue;
          }
                    if(o=='shoujihao'){
            this.ruleForm.shoujihao = obj[o];
            continue;
          }
                    if(o=='daoshizhicheng'){
            this.ruleForm.daoshizhicheng = obj[o];
            continue;
          }
                    if(o=='suozaixuexiao'){
            this.ruleForm.suozaixuexiao = obj[o];
            continue;
          }
                    if(o=='dianziyouxiang'){
            this.ruleForm.dianziyouxiang = obj[o];
            continue;
          }
                    if(o=='daoshijieshao'){
            this.ruleForm.daoshijieshao = obj[o];
            continue;
          }
                  }
                                                                                                                                                              }
                                                                                                                                                      this.$http({
              url: `option/xuexiaojieshao/xuexiaomingcheng`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.suozaixuexiaoOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
                                                                },
                                                                                // 多级联动参数
                                                                                                      info(id) {
      this.$http({
        url: `daoshixinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                  // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                                                                      this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `daoshixinxi/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.daoshixinxiCrossAddOrUpdateFlag = false;
                  this.parent.search();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.daoshixinxiCrossAddOrUpdateFlag = false;
    },
                                                            touxiangUploadChange(fileUrls) {
                this.ruleForm.touxiang = fileUrls;
            },
                                                                          }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
</style>
