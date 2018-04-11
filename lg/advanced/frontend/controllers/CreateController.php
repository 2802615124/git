<?php
namespace frontend\controllers;
use Yii;
use yii\base\Controller;
class CreateController extends Controller
{
    public $layout = false;
    public $enableCsrfValidation = false;
    public function actionCreate()
    {
        $session = \Yii::$app->session;
        $user_id = $session->get('user_id');
        $db = Yii::$app->db;
        // print_r($cate);die;
        if(Yii::$app->request->isPost){
            $data = Yii::$app->request->post();
            // print_r($data);die;
            $res = $db->createCommand()->insert('firm_position',[  
                'firm_id' => $user_id,
                'pos_name' => $data['positionName'],
                'pos_city' => $data['workAddress'],
                'pos_salary_start' => $data['salaryMin'],
                'pos_salary_end' => $data['salaryMax'],
                'year' => $data['workYear'],
                'edu' => $data['education'],
                'pos_tem' => $data['positionAdvantage'],
                'pos_add' => $data['positionAddress'],
                'pos_nat' => $data['jobNature'],
                'pos_email' => $data['email'],
                'pos_content' => $data['positionDetail'],
                'pos_dep' => $data['department'],
                'cate_id' => $data['positionType'],
            ])->execute();
        } else {
            $info = Yii::$app->db->createCommand("select * from lg_company where uid=".$user_id)->queryAll();
            if ($info) {
                return $this->render('create');
            } else {
                return $this->render('no');
            }
        }
        return $this->render('create');
    }
    public function actionPositions()
    {
        $session = Yii::$app->session;
        $user_id = $session->get('user_id');
        $arr = Yii::$app->db->createCommand("select * from firm_position where firm_id = $user_id")->queryAll();
        return $this->render('positions',['arr' => $arr]);
    }
    public function actionCanint()
    {
        $session = Yii::$app->session;
        $user_id = $session->get('user_id');
        $arr = Yii::$app->db->createCommand("select * from resume where firm_id = $user_id")->queryAll();
        // print_r($arr);die;
        return $this->render('canInterviewResumes',['arr' => $arr]);
    }
    public function actionHaverefuseresumes()
    {
        return $this->render('haveRefuseResumes');
    }
    public function actionAutofilterresumes()
    {
        return $this->render('autoFilterResumes');
    }
    public function actionPreview()
    {
        return $this->render('preview');
    }
    
}
?>