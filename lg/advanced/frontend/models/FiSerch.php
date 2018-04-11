<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Fi;

/**
 * FiSerch represents the model behind the search form about `app\models\Fi`.
 */
class FiSerch extends Fi
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pos_id', 'firm_id', 'cate_id', 'pos_salary_start', 'pos_salaty_end', 'job_id', 'edu_id', 'pos_num', 'status'], 'integer'],
            [['pos_name', 'pos_dep', 'pos_nat', 'pos_city', 'pos_tem', 'pos_content', 'pos_add', 'pos_email'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Fi::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'pos_id' => $this->pos_id,
            'firm_id' => $this->firm_id,
            'cate_id' => $this->cate_id,
            'pos_salary_start' => $this->pos_salary_start,
            'pos_salaty_end' => $this->pos_salaty_end,
            'job_id' => $this->job_id,
            'edu_id' => $this->edu_id,
            'pos_num' => $this->pos_num,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'pos_name', $this->pos_name])
            ->andFilterWhere(['like', 'pos_dep', $this->pos_dep])
            ->andFilterWhere(['like', 'pos_nat', $this->pos_nat])
            ->andFilterWhere(['like', 'pos_city', $this->pos_city])
            ->andFilterWhere(['like', 'pos_tem', $this->pos_tem])
            ->andFilterWhere(['like', 'pos_content', $this->pos_content])
            ->andFilterWhere(['like', 'pos_add', $this->pos_add])
            ->andFilterWhere(['like', 'pos_email', $this->pos_email]);

        return $dataProvider;
    }
}
