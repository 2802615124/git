<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Firm;

/**
 * FirmSerch represents the model behind the search form about `backend\models\Firm`.
 */
class FirmSerch extends Firm
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['firm_id', 'uid', 'field_id', 'firm_examine'], 'integer'],
            [['firm_name', 'firm_add_name', 'firm_logo', 'firm_url', 'firm_city', 'firm_scale', 'firm_deve', 'firm_inves', 'firm_brief', 'firm_content', 'firm_license'], 'safe'],
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
        $query = Firm::find();

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
            'firm_id' => $this->firm_id,
            'uid' => $this->uid,
            'field_id' => $this->field_id,
            'firm_examine' => $this->firm_examine,
        ]);

        $query->andFilterWhere(['like', 'firm_name', $this->firm_name])
            ->andFilterWhere(['like', 'firm_add_name', $this->firm_add_name])
            ->andFilterWhere(['like', 'firm_logo', $this->firm_logo])
            ->andFilterWhere(['like', 'firm_url', $this->firm_url])
            ->andFilterWhere(['like', 'firm_city', $this->firm_city])
            ->andFilterWhere(['like', 'firm_scale', $this->firm_scale])
            ->andFilterWhere(['like', 'firm_deve', $this->firm_deve])
            ->andFilterWhere(['like', 'firm_inves', $this->firm_inves])
            ->andFilterWhere(['like', 'firm_brief', $this->firm_brief])
            ->andFilterWhere(['like', 'firm_content', $this->firm_content])
            ->andFilterWhere(['like', 'firm_license', $this->firm_license]);

        return $dataProvider;
    }
}
