<?php
namespace frontend\controllers;
use Yii;
use yii\web\Controller;
use yii\web\Cookie;
use yii\web\Session;
class CompController extends Controller
{
    public $layout = false;
    public $enableCsrfValidation = false;
    public function actionComp()
    {
        return $this->render('companylist');
    }
    public function actionMyhome()
    {
        $session = Yii::$app->session;
        $user_id = $session->get('user_id');
        $sql = "SELECT * FROM `lg_company` WHERE uid =".$user_id;
        $companyInfo = Yii::$app->db->createCommand($sql)->queryOne();
        return $this->render('myhome',['companyInfo' => $companyInfo]);
    }
    public function actionAuth()
    {
        return $this->render('auth');
    }
    /**
      *  公司注册首页1
      */
    public function actionIndex01()
    {
        // 判断是否post
        if(Yii::$app->request->isPost){

          // 获取数据
          $data = Yii::$app->request->post();
          // print_r($_FILES);die;
          if(!empty($data['name'])){
            // echo 2;die;
            $file = $_FILES['file'];
            $path = "uploads/company/".$file['name'];
            // print_r($file);die;
            // print_r($file);die;
            //print_r($path);die;
            $res = move_uploaded_file($_FILES['file']['tmp_name'],$path);
           //  var_dump($res);die;
            if($res){
               // 先把数据存入session
                $session = Yii::$app->session;
                $data['logo'] = $path;          
                $session['index01'] = $data;
                return $this->render('tag');
            } 

          }else{
            echo "<script>alert('请填写基本信息')</script>";
            return $this->render('index01');
          }

         
        }else{

          return $this->render('index01');
        }
    }

     /**
     * 注册标签2
     */
    public function actionTag()
    {
         // 判断是否post
        if(Yii::$app->request->post()){
          $labels = Yii::$app->request->post();
          $session = Yii::$app->session;
              //print_r($labels);die;
          $session['index02'] = $labels;
                echo 1;
        }else{

          return $this->render('tag');
        }
    }

      /**
       * 创始团队3
       */
      public function actionIndex03()
      {
         // 判断是否post
        if(Yii::$app->request->post()){
              //获取post数据
                $form_data = Yii::$app->request->post();
                // var_dump($form_data);die;
                //文件上传
                $user_file = $_FILES['user_file'];
                //定义一个文件上传路径
                $path = "uploads/founder/".$user_file['name'];
              //将临时文件上传到根目录
               // print_r($user_file);die;
               $res = move_uploaded_file($_FILES['user_file']['tmp_name'],$path);
               if($res){
                 $form_data['user_file'] = $path;
                  $session = Yii::$app->session;

                  $session['index03'] = $form_data;
                  //$this->layout = 'header';
                  return $this->render('index02');
               }
             
        }else{

          return $this->render('founder');
        }
      }


    /**
     * 公司产品4
     */
    public function actionIndex04()
    {
       // 判断是否post
      if(Yii::$app->request->post()){
            //获取post数据
              $form_data = Yii::$app->request->post();
              
              //文件上传
              $user_file = $_FILES['product_file'];
              //定义一个文件上传路径
              $path = "uploads/product/".$user_file['name'];
            //将临时文件上传到根目录
            //print_r($img_info['tmp_name']);die;
             $res = move_uploaded_file($_FILES['product_file']['tmp_name'],$path);
             if($res){
              $form_data['product_file'] = $path;
              $session = Yii::$app->session;

              $session['index04'] = $form_data;

             return $this->render('index03');
             }
            
        
            }else{

        return $this->render('index02');
      }
    }

    /**
     * 公司介绍5
     */
    public function actionIndex05()
    {

      if(Yii::$app->request->post()){
         //获取post数据
            $form_data = Yii::$app->request->post();

              $session = Yii::$app->session;
              $user_id = $session->get('user_id');
             
              $session = Yii::$app->session;
              $form_data['uid'] = $user_id;
              $session['index05'] = $form_data;
             
            
              //die;
              $a = $session['index01'];
              $b = $session['index02'];
              $c = $session['index03'];
              $d = $session['index04'];
              $e = $session['index05'];
              // var_dump($c);die;
              $data = array_merge($a,$b,$c,$d,$e);
              // var_dump($data);die;
              $res = Yii::$app->db->createCommand()->insert("lg_company",$data)->execute();

              if($res){
                 return $this->redirect('?r=comp/myhome');
              }
        
            }else{

              return $this->render('index03');
           }
    }
}
?>