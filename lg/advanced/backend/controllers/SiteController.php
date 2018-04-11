<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use backend\models\AdminUser;
use backend\models\BackendUser;
use common\models\LoginForm;
use backend\models\AdminUserRole;
use common\utils\CommonFun;
use yii\captcha\Captcha;
use yii\captcha\CaptchaAction;

/**
 * Site controller
 */

class SiteController extends BaseController
{   
   
    public $layout = "lte_main";
    /**
     * @inheritdoc
     */
    
    public function actions()
    {
        return ['error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            // 新添加的
            'captcha' => [
                  'class' => 'yii\captcha\CaptchaAction',
                      'maxLength'=>4,
                        'minLength'=>4,
              ],
        ];
    }

    public function actionIndex()
    {    
    
        if(Yii::$app->user->isGuest){

            $this->layout = "lte_main_login";
              // $model = new LoginForm;
 
             //   if (isset($_POST['LoginForm'])) {
             //   $model->attributes = $_POST['LoginForm'];
             //  }

            return $this->render('login');
            //return $this->redirect(['site/login'])
        }
        else{

//             $this->layout = "lte_main";
            $menus = Yii::$app->user->identity->getSystemMenus();
            $sysInfo = [
                ['name'=> '操作系统', 'value'=>php_uname('s')],  //'value'=>php_uname('s').' '.php_uname('r').' '.php_uname('v')],
                ['name'=>'PHP版本', 'value'=>phpversion()],
                ['name'=>'Yii版本', 'value'=>Yii::getVersion()],
                ['name'=>'数据库', 'value'=>$this->getDbVersion()],
                ['name'=>'AdminLTE', 'value'=>'V2.3.6'],
                ['name'=>'建议和BUG', 'value'=>'http://www.woyeibuhui.com'],
            ];

            return $this->render('index', [
                'system_menus' => $menus,
                'sysInfo'=>$sysInfo
            ]);
        }
    }
   private function isCheckCode($uid){
    
     $model = new AdminUser();
     //print_r($model);die;
     $update_date = date('Y-m-d H-i-s');
     //print_r($update_date);die;
     $result = $model -> findOne(['id' => $uid]);
   // print_r($result['count']<3);die;
    if(!$result['count']){
         return false;
    }
     if($result['count']<3)
     {
          return $result['count'];
     }
     echo "冻结";
     exit();
   }
  public function actionGetcode(){
  
    $username = yii::$app->request->get('name');
    //print_r($username);die;
    $model = new AdminUser();
    $info = $model -> findOne(['uname' => $username]);
   // print_r($info['id']);die;
    if(!$info['id'])
    { echo 1;
      echo json_encode(['code' => 1,'msg'=> '用户名不存在']);
      exit();
    } 
   // $a = Yii::$app->request->url;

    $a =  Yii::$app->homeUrl;
    //print_r($a);die;
    $res = $this -> isCheckCode($info['id']);
   // print_r($res);die;
    if($res == false)
    {echo 2;
        echo json_encode(['code' => 2,'msg'=> '不需要验证码']);
        exit();
    }
    //print_r($res<3);die;
    //if(is_object($res)){
        if($res<3)
        {
          
        //    echo "1";              'refresh' => 1.\yii\helpers\Url::toRoute(['site/captcha'])
    $con = file_get_contents(  'http://127.0.0.1'."$a".'index.php');
   // print_r($con);die;
    $advice1 = '#<img id="captchaimg" src="(.*)" alt="换一个" title="换一个" style="cursor:pointer;margin-top:20px; height: 44px;">#isU';
    preg_match_all($advice1, $con, $list);
    //print_r($list);die; 
   // $data = json_decode($con,true);
    //print_r($con);
    //var_dump($data);die;
   
    echo json_encode(['code' => 5,'img' => $list[1][0]]);
           exit();   
        }else{
          echo 3;
 echo json_encode(['code' => 3,'msg'=> '账号已冻结']);
        }

   // }
  } 
 

    public function actionLogin()
     { 
//echo 2;
      //  echo 1;die; 
      // $db = Yii::$app->db;
      //  print_r($db);die;
    //     //echo 1 ;die;
        $model = new AdminUser;
        $info = $model -> findOne(['uname'=>Yii::$app->request->post('username')]);
       // print_r($errorLogin = $this->isCheckCode($info['id']));
        
        $username = Yii::$app->request->post('username');
        $password = Yii::$app->request->post('password');
        $rememberMe = Yii::$app->request->post('remember');
        $rememberMe = $rememberMe == 'y' ? true : false;
         if($errorLogin = $this->isCheckCode($info['id']))
         {  
          //echo 3;
           $a = $_POST['verifyCode'];
          if(empty($_POST['verifyCode']))
          {
           echo json_encode(['code' => 1]);
           exit();
          }
          //echo 1;
         //print_r($this->createAction('captcha')->validate($a, false));
            $codeRes = $this->createAction('captcha')->validate($a, false);
            //print_r($codeRes);die;
            // if(!$codeRes)
            // {
            //    echo "验证码错误";
            //    exit();
            // }
        $db = Yii::$app->db;
        $id = $info['id'];
        $count = 0;
         $res = $db -> createCommand()->update('admin_user',[
            'count' => "$count"
            ],"id=$id")->execute();
        if(AdminUser::login($username, $password, $rememberMe) == true){
                 AdminUser::updateAll(
                ['last_ip' => CommonFun::getClientIp()],
                ['uname' => $username]);
            
            //return $this->goBack();
            echo json_encode(['errno'=>0]);
            exit();
        }
        else{
          $db = Yii::$app->db;
          //$model = new AdminUser();
          $update_date = date('Y-m-d H-i-s');
                $id = $info['id'];
            
                if($errorLogin == false)
            {
              $count = 1 ;
          $res = $db -> createCommand()->update('admin_user',['update_date'=>"$update_date",
            'count' => "$count"
            ],"id=$id")->execute(); 
            
            }else{
                 $count = $errorLogin + 1 ;
                // $model->updateAll();
                // if($model->update ==3)
                // {
                //     echo "用户已冻结";
                //     exit();
                // }
              $res = $db -> createCommand()->update('admin_user',['update_date'=>"$update_date",
            'count' => "$count"
            ],"id=$id")->execute(); 
              $res = $db->createCommand('select * from admin_user')->execute();
              print_r($res);die;
                 //  if($res['count'] >= 3)
                 // {
                 //     echo "用户已冻结";
                 //     exit();
                 // } 
            }
            echo json_encode(['errno'=>2]);
            exit();
        }
      

      }
     else{
       
        //print_r(AdminUser::login($username, $password, $rememberMe) == true);die;
        if(AdminUser::login($username, $password, $rememberMe) == true){
             AdminUser::updateAll(
                ['last_ip' => CommonFun::getClientIp()],
                ['uname' => $username]);
          
            //return $this->goBack();
            echo json_encode(['errno'=>0]);
            exit();
        }
        else{
          $db = Yii::$app->db;
          //$model = new AdminUser();
          $update_date = date('Y-m-d H-i-s');
                $id = $info['id'];
                $count = 1 ;
          $res = $db -> createCommand()->update('admin_user',['update_date'=>"$update_date",
            'count' => "$count"
            ],"id=$id")->execute(); 
            echo json_encode(['errno'=>2]);
            exit();
         }

    }
    }

    public function actionTest()
    {

          
    }
    
    public function actionLogout()
    {
        Yii::$app->user->identity->clearUserSession();
        Yii::$app->user->logout();
        return $this->goHome();
    }
    public function actionPsw()
    {
       $userRole = AdminUserRole::find()->with('role')->andWhere(['user_id'=>Yii::$app->user->identity->id])->one();
        return $this->render('psw',[
            'user_role' => $userRole->role->name
        ]);
    }
    public function actionPswSave()
    {
        $old_password = Yii::$app->request->post('old_password', '');
        $new_password = Yii::$app->request->post('new_password', '');
        $confirm_password = Yii::$app->request->post('confirm_password', '');
        if(empty($old_password) == true){
            $msg = array('error'=>2, 'data'=>array('old_password'=>'旧密码不正确'));
            echo json_encode($msg);
            exit();
        }
        if(empty($new_password) == true){
            $msg = array('error'=>2, 'data'=>array('new_password'=>'新密码不能为空'));
            echo json_encode($msg);
            exit();
        }
        if(empty($confirm_password) == true){
            $msg = array('error'=>2, 'data'=>array('confirm_password'=>'确认密码不能为空'));
            echo json_encode($msg);
            exit();
        }
        if($new_password != $confirm_password){
            $msg = array('error'=>2, 'data'=>array('confirm_password'=>'两次新密码不相同'));
            echo json_encode($msg);
            exit();
        }
        if(Yii::$app->user->isGuest == false){
            $user = AdminUser::findByUsername(Yii::$app->user->identity->uname);
            if(BackendUser::validatePassword($user, $old_password) == true){
                $user->password = Yii::$app->security->generatePasswordHash($new_password);
                $user->save();
                $msg = array('errno'=>0, 'msg'=>'保存成功');
                echo json_encode($msg);
            }
            else{
                $msg = array('errno'=>2, 'data'=>array('old_password'=>'旧密码不正确'));
                echo json_encode($msg);
            }
        }
        else{
            $msg = array('errno'=>2, 'msg'=>'请先登录');
            echo json_encode($msg);
        }
    }
    private function getDbVersion(){
        $driverName = Yii::$app->db->driverName;
        if(strpos($driverName, 'mysql') !== false){
            $v = Yii::$app->db->createCommand('SELECT VERSION() AS v')->queryOne();
            $driverName = $driverName .'_' . $v['v'];
        }
        return $driverName;
    }
    
    /**
     * 全局错误处理
     */
    public function actionError()
    {
        $exception = Yii::$app->getErrorHandler()->exception;
        $statusCode = $exception->statusCode;
//         return $this->render('error', ['name' => $statusCode, 'message'=>$exception->__toString()]);
        return $this->render('error', ['name' => $statusCode, 'message'=>"系统出错，具体错误信息请查看runtime\logs\app.log"]);
         
    }
}
