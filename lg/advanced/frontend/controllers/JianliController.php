<?php
namespace frontend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Session;

class JianliController extends Controller
{
    public $layout = false;
    public $enableCsrfValidation = false;

    public function actionJianli()
    {
        $session = Yii::$app->session;
        $session->open();
        $id = $session->get('user_id');
        $username = $session->get('username');
        if(!empty($id))
        {
            $resume = Yii::$app->db->createCommand("select * from resume where uid=".$id)->queryOne();
           //!$resume &&
           !$resume && Yii::$app->db ->createCommand() ->insert('resume',['uid'=>$id]) ->execute();

            $resume = Yii::$app->db->createCommand("select * from resume where uid=".$id)->queryOne();



        //echo 2;die;
            if(!empty($resume))
            {
                $expect =Yii::$app->db->createCommand("select * from expect_work where r_id=".$resume['r_id'])->queryOne();
                $exper  = Yii::$app->db->createCommand("select * from work_exper where r_id=".$resume['r_id'])->queryOne();
                $pro_exp = Yii::$app->db->createCommand("select * from pro_exp where r_id=".$resume['r_id'])->queryOne();
                $study_exp = Yii::$app->db->createCommand("select * from study_exp where r_id=".$resume['r_id'])->queryOne();
                $production = Yii::$app->db->createCommand("select * from production where r_id=".$resume['r_id'])->queryOne();
                return $this->render('jianli',['resume'=>$resume,'username'=>$username,'id'=>$id,'expect'=>$expect,'experience'=>$exper,'project'=>$pro_exp,'education'=>$study_exp,'pro'=>$production]);
            }
            else
            {
                return $this->render('jianli',['resume'=>$resume , 'username' =>$username,'id'=>$id]);
            }

        }
        else
        {
            echo "<script>location.href='?r=login/login'</script>";
        }
    }
    //基本信息
    public function actionResumeint()
    {
        $data = Yii::$app->request->post();
        $arrr=Yii::$app->db->createCommand("select * from resume where uid='".$data['user_id']."'")->queryOne();
        if(!empty($arrr)){
            $sql="UPDATE `resume` SET `name`='".$data['name']."', `sex`='".$data['sex']."', `education`='".$data['education']."', `work_exp`='".$data['education_year']."', `email`='".$data['email']."', `tel`='".$data['tell']."', `currentState`='".$data['currentState']."' WHERE `uid`='".$data['user_id']."'";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "修改成功";
          }else{
            $sql="INSERT INTO `resume` ( `name`, `sex`,`tel`,`email`,`education`,`work_exp`,`currentState`,`uid`) VALUES ('".$data['name']."','".$data['sex']."','".$data['tell']."','".$data['email']."','".$data['education']."','".$data['education_year']."','".$data['currentState']."','".$data['user_id']."')";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "保存成功";
          }
    }
    //期望工作
    public function actionExpectint()
    {
        $data = Yii::$app->request->post();
          $arrr=Yii::$app->db->createCommand("select * from expect_work where r_id='".$data['r_id']."'")->queryOne();
          if(!empty($arrr)){
            $sql="UPDATE `expect_work` SET `ex_city`='".$data['expectCity']."', `ex_type`='".$data['current']."', `ex_position`='".$data['expectPosition']."', `salary`='".$data['expectSalary']."' WHERE `r_id`='".$data['r_id']."'";
            $command=Yii::$app->db->createCommand($sql);
            $command->execute();
            echo "修改成功";
          }else{
            $sql="INSERT INTO `expect_work` ( `ex_city`, `ex_type`,`ex_position`,`r_id`,`salary`) VALUES ('".$data['expectCity']."','".$data['current']."','".$data['expectPosition']."','".$data['r_id']."','".$data['expectSalary']."')";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "保存成功";
          }
    }
    //工作经历
    public function actionExprienceint()
    {
         $data = Yii::$app->request->post();
         $start_time = $data['YearStart']."-".$data['MonthStart'];
         $end_time   = $data['YearEnd']."-".$data['MonthEnd'];
         // var_dump($data);die;
          $arrr=Yii::$app->db->createCommand("select * from work_exper where r_id='".$data['r_id']."'")->queryOne();
          // var_dump($arrr);die;
          if(!empty($arrr)){
            $sql="UPDATE `work_exper` SET `company_name`='".$data['companyName']."', `work_position`='".$data['positionName']."', `work_start_time`='".$start_time."', `work_end_time`='".$end_time."' WHERE `r_id`='".$data['r_id']."'";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "修改成功";
          }else{
            // $sql="INSERT INTO `work_exper` ( `company_name`, `work_position`,`r_id`,`work_start_time`,`work_end_time`,) VALUES ('".$data['companyName']."','".$data['positionName']."','".$data['r_id']."','".$start_time."','".$end_time."')";
            $command=Yii::$app->db->createCommand()->insert('work_exper',[
                    'company_name'  => $data['companyName'],
                    'work_position' => $data['positionName'],
                    'r_id'          => $data['r_id'],
                    'work_start_time' => $start_time,
                    'work_end_time' => $end_time
                ])->execute();
            // var_dump($command);exit;
            echo "保存成功";
          }
    }
    //项目经验
    public function actionProint()
    {
        $data = Yii::$app->request->post();
        $start_time = $data['YearStart']."-".$data['MonthStart'];
        $end_time   = $data['YearEnd']."-".$data['MonthEnd'];
        $arrr=Yii::$app->db->createCommand("select * from pro_exp where r_id='".$data['r_id']."'")->queryOne();
        if(!empty($arrr)){
            $sql="UPDATE pro_exp SET `pro_name`='".$data['projectName']."', `pro_pos`='".$data['thePost']."', `pro_start_time`='".$start_time."', `pro_end_time`='".$end_time."', `pro_duty`='".$data['projectDescription']."' WHERE `r_id`='".$data['r_id']."'";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "修改成功";
          }else{
            $sql="INSERT INTO `pro_exp` ( `pro_name`, `pro_pos`,`r_id`,`pro_start_time`,`pro_end_time`,`pro_duty`) VALUES ('".$data['projectName']."','".$data['thePost']."','".$data['r_id']."','".$start_time."','".$end_time."','".$data['projectDescription']."')";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "保存成功";
          }
    }
    //教育经历
    public function actionEduint()
    {
        $data = Yii::$app->request->post();
        $arrr = Yii::$app->db->createCommand("select * from study_exp where r_id='".$data['r_id']."'")->queryOne();
        if(!empty($arrr)){
            $sql="UPDATE study_exp SET `se_school_name`='".$data['schoolName']."', `education`='".$data['degree']."', `profession`='".$data['professionalName']."', `se_start_time`='".$data['schoolYearStart']."', `se_end_time`='".$data['schoolYearEnd']."' WHERE `r_id`='".$data['r_id']."'";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "修改成功";
          }else{
            $sql="INSERT INTO `study_exp` ( `se_school_name`, `education`,`r_id`,`profession`,`se_start_time`,`se_end_time`) VALUES ('".$data['schoolName']."','".$data['degree']."','".$data['r_id']."','".$data['professionalName']."','".$data['schoolYearStart']."','".$data['schoolYearEnd']."')";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "保存成功";
          }
    }
    //自我描述
    public function actionCountint()
    {
        $data = Yii::$app->request->post();
        $sql  = "UPDATE `resume` SET `re_int`='".$data['content']."' WHERE `r_id`='".$data['r_id']."'";
        $command=Yii::$app->db->createCommand($sql)->execute();
        echo "保存成功";
    }
    //作品展示
    public function actionLinkint()
    {
        $data = Yii::$app->request->post();
        $arrr = Yii::$app->db->createCommand("select * from production where r_id='".$data['r_id']."'")->queryOne();
        if(!empty($arrr)){
            $sql="UPDATE production SET `pro_url`='".$data['worklink']."', `pro_text`='".$data['s_textarea']."' WHERE `r_id`='".$data['r_id']."'";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "修改成功";
          }else{
            $sql="INSERT INTO `production` ( `pro_url`, `pro_text`,`r_id`) VALUES ('".$data['worklink']."','".$data['s_textarea']."','".$data['r_id']."')";
            $command=Yii::$app->db->createCommand($sql)->execute();
            echo "保存成功";
          }
    }
    //预览
    public function actionPreview()
    {
        $session = Yii::$app->session;
        $session->open();
        $id = $session->get('user_id');
        $username = $session->get('username');
        $resume = Yii::$app->db->createCommand("select * from resume where uid=".$id)->queryOne();
        $expect =Yii::$app->db->createCommand("select * from expect_work where r_id=".$resume['r_id'])->queryOne();
        $exper  = Yii::$app->db->createCommand("select * from work_exper where r_id=".$resume['r_id'])->queryOne();
        $pro_exp = Yii::$app->db->createCommand("select * from pro_exp where r_id=".$resume['r_id'])->queryOne();
        $study_exp = Yii::$app->db->createCommand("select * from study_exp where r_id=".$resume['r_id'])->queryOne();
        $production = Yii::$app->db->createCommand("select * from production where r_id=".$resume['r_id'])->queryOne();
        return $this->render('preview',['resume'=>$resume,'username'=>$username,'id'=>$id,'expect'=>$expect,'exper'=>$exper,'pro'=>$pro_exp,'study'=>$study_exp,'produ'=>$production]);
    }
    //文件下载
    public function actionDownload()
    {
        // $sn   = $_GET['uid'];
        // $type = $_GET['type'];
        // $file = Down::getNameBySn($sn);
        // var_dump($file);exit;
        // if (!$file)
        //     echo '没有找到该文件！';Yii::app()->end();
        //     $content = '';
        // if(is_file($file['path']))
        //     $content = file_get_contents($file['path']);
        // if(!$content)
        //     throw new CHttpException('500','该文件内容为空，没有找到该文件！');
        //     Yii::app()->request->sendFile($file['name'], $content);

//     unset($_GET['r']);
//       $a = $_GET['name'];
//     $_GET['r'] = "?r=jianli/preview";
//        ///接收文件地址
// $path = $_GET['http://localhost/php/lg/lg/advanced/frontend/web/index.php?r=jianli/preview'];

// $filename = substr($path, strrpos($path, '&')+1);

// //写入类型   告诉浏览器此时下载的文件类型是image/jpeg
// header('Content-type: image/jpeg');

// //激活一个下载的窗口  (文件名)
// header("Content-Disposition: attachment; filename=$filename");

// readfile($path);

// //写入类型   告诉浏览器此时下载的文件类型是image/jpeg
// //header('Content-type: image/jpeg');
// //header('Content-type: image/jpeg');
// header("Content-Type: application/doc");
// //激活一个下载的窗口  (文件名)
// header("Content-Disposition: attachment; filename=$filename");

// readfile($path);


    }

    public function actionSubscribe()
    {
        return $this->render('subscribe');
    }
    public function actionDelivery()
    {
        return $this->render('delivery');
    }
    public function actionToudi()
    {
        return $this->render('toudi');
    }
    public function actionMlist()
    {
        return $this->render('mlist');
    }
}
?>