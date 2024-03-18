using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Calc_Evaluation
/// </summary>
public class Calc_Evaluation
{
	public Calc_Evaluation()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static double Evaluation(string source_name)
    {

        Services.Services webservice = new Services.Services();
        DataTable EvalResult = new DataTable();
        EvalResult = webservice.Evaluation(source_name);
        int true_news = 0;
        for (int i = 0; i < EvalResult.Rows.Count; i++)
        {
            if (int.Parse(EvalResult.Rows[i][12].ToString()) == 1)
            {
                true_news++;
            }
        }
        double result = 100;
        if (EvalResult.Rows.Count != 0)
            result = true_news * 100 / EvalResult.Rows.Count;


        return result;

    }
}