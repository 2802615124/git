<?php
namespace frontend\controllers;
use Yii;
use yii\base\Controller;
class LoginController extends Controller
{
    public $layout = false;
    public $enableCsrfValidation = false;
    public function actionLogin()
    {
         // 判读是否是ajax
        if(Yii::$app->request->isAjax){
          // 接值
          $data = Yii::$app->request->post();

          // $password =md5($data['password']);
          $arr = Yii::$app->db->createCommand("select * from user where username='".$data['email']."' ")->queryOne();
          if(!$arr){
            echo "2";die;
          }
          if($arr['user_password']==md5($data['password'])){
            $session = \Yii::$app->session;
            $session->set('username' , $arr['username']);
            $session->set('user_id' ,$arr['user_id']);
            $session->set('user_type' ,$arr['user_type']);
            //print_r($session);die;
            echo 1;
          }else{
            echo 2;
          }
        }else{
          return $this->render('login');
        }
    }
    public function actionRegister()
    {
        if(Yii::$app->request->isAjax){
          $data = Yii::$app->request->post();
         $only = Yii::$app->db->createCommand("select * from user where username='".$data['username']."'")->queryOne();
           if($only){
              echo "1";die;
           }
         $password=md5($data['password']);


          if($data['type'] == 2){
             $type = 2;
          }else{
             $type = 1;
          }
          $res = Yii::$app->db->createCommand()->insert('user',[
               'username' => $data['username'],
               'user_password'=> $password,
               'user_email' => $data['email'],
               'user_type' => $type,
               'last_time' => time()
              ])->execute();
          // echo $res;die;
          if($res){
            echo 2;die;
          }else{
            echo 0;die;
          }
         }else{
            return $this->render('register');
         }

    }

    /*
       *  退出
       */
    public function actionLogout() {
        $session = \Yii::$app->session;
        //删除所有session
        $session->removeAll();

        return $this->render('login');
    }

    public function actionAccountbind()
    {
        return $this->render('accountBind');
    }
    public function actionReset()
    {
        return $this->render('reset');
    }
    public function actionUpdatepwd()
    {
        return $this->render('updatePwd');
    }
}
?>