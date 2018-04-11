<?php
namespace frontend\controllers;
use Yii;
use yii\base\Controller;
use app\models\Fi;
use frontend\models\FiSerch;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\Pagination;
use yii\web\Response;

class IndexController extends Controller
{
    public $layout = false;
    public $enableCsrfValidation = false;
    public function actionIndex()
    {
        if (Yii::$app->request->isGet) {


               $where = Yii::$app->request->get('name','');
               $city = Yii::$app->request->get('city','');
               $city = empty($city)?'北京':$city;
               $city = empty($city)?"南京":$city;

               $where && $where = ' where pos_name like "%'.$where.'%" or pos_city = '."'$city'";
               $db = Yii::$app->db;

               $count = $db -> createCommand('select count(*) as num from firm_position'."$where")->queryone();
               $pages = new Pagination(['totalCount' => $count['num'],
                         'defaultPageSize' => 5
              ]);
               $data = $db->createCommand('select * from firm_position' ."$where".' limit '.$pages->offset.','.$pages->limit)->queryAll();
          //print_r($data);die;
       if(Yii::$app->request->isAjax)
         {
           Yii::$app->response->format = Response::FORMAT_JSON;
           return [
           'data' => $data,
           'page' => \yii\widgets\LinkPager::widget([
           'pagination' => $pages])
           ];
         }
        return $this -> render('index',['data' => $data,'pages' =>$pages,'city' => $city]);

       }
    }
    public function actionAbout()
    {
        return $this->render('about');
    }

     public function actionList()
    {

       if (Yii::$app->request->isGet) {

               $where = Yii::$app->request->get('name','');
               $city = Yii::$app->request->get('city','');
               $city = empty($city)?'北京':$city;
               $city = empty($city)?"南京":$city;


               $where && $where = ' where pos_name like "%'.$where.'%" or pos_city = '."'$city'";
               $db = Yii::$app->db;

               $count = $db -> createCommand('select count(*) as num from firm_position'."$where")->queryone();
               $pages = new Pagination(['totalCount' => $count['num'],
                         'defaultPageSize' => 5
              ]);
               $data = $db->createCommand('select * from firm_position' ."$where".' limit '.$pages->offset.','.$pages->limit)->queryAll();

       if(Yii::$app->request->isAjax)
         {
           Yii::$app->response->format = Response::FORMAT_JSON;
           return [
           'data' => $data,
           'page' => \yii\widgets\LinkPager::widget([
           'pagination' => $pages])
           ];
         }

        return $this -> render('list',['data' => $data,'pages' =>$pages,'city' => $city]);

       }
    }
     public function actionList_show()
    {
      $session = Yii::$app->session;
        $session->open();
        $id = $session->get('user_id');

       if (Yii::$app->request->isGet) {

               $where = Yii::$app->request->get('pos_id','');
               $city = Yii::$app->request->get('city','');
               $city = empty($city)?'北京':$city;
               $city = empty($city)?"南京":$city;
               $where && $where = ' where pos_id = "'.$where.'" or pos_city = '."'$city'";

               $db = Yii::$app->db;
               $data = $db->createCommand('select * from firm_position' ."$where")->queryOne();

    

             $resume = Yii::$app->db->createCommand("select r_id from resume where uid=".$id)->queryOne();
                        
          
        return $this -> render('show',['data' => $data,'city' => $city,'resume'=>$resume]);

       }

    }
    //简历投递
    public function actionToudi()
    {
        $data = Yii::$app->request->post();
        $arr = yii::$app->db->createCommand("SELECT * FROM delivery_resume WHERE firm_id=".$data['firm_id']." and r_id=".$data['r_id'])->queryOne();
        if(!empty($arr))
        {
          echo "简历已投递过了";exit;
        }
        else
        {
          $in = yii::$app->db->createCommand()->insert('delivery_resume',[
              'firm_id' => $data['firm_id'],
              'r_id'    => $data['r_id'],
              'dr_time' => date('Y-m-d'),
            ])->execute();
          echo "简历投递成功";exit;
        }
    }
}
?>