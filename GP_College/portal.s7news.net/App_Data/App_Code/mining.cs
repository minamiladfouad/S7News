using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;


    class word
    {
        public string myWord;
        public int repeat_file1;
        public int repeat_file2;

        public word(string word, int repeat_file1, int repeat_file2)
        {
            this.myWord = word;
            this.repeat_file1 = repeat_file1;
            this.repeat_file2 = repeat_file2;
        }
    }


    class mining
    {
        string[] news;
        char[] sperator = { ' ', '\n', '.', '"', '،', '؟', ':', '(', ')', '-', '!', '/', '؛', '»', '«' };
        List<word> TF1 = new List<word>();
        List<word> TF2 = new List<word>();

        private bool isKeyWord(string word)
        {
            try
            {
                string[] keyWords = System.IO.File.ReadAllLines("stop-words-arabic.txt");
                foreach (string keyword in keyWords)
                {
                    if (word == keyword)
                        return true;
                }
            }
            catch (Exception ex)
            {
                System.Console.Write(ex);
            }
            return false;
        }

        private bool isNotExist(string word, int repeat, List<word> TF, int file)
        {
            for (int i = 0; i < TF.Count; i++)
            {
                if (word == TF.ElementAt(i).myWord)
                {
                    if (file == 1)
                    {
                        TF.ElementAt(i).repeat_file1++;
                    }
                    else
                    {
                        TF.ElementAt(i).repeat_file2 = repeat;
                    }
                    return false;
                }
            }
            return true;
        }

        private List<word> makeTermFrequency(string file)
        {
            List<word> TF = new List<word>();
            news = file.Split(sperator);
            foreach (string word in news)
            {
                if (!isKeyWord(word) && word != "")
                {
                    if (isNotExist(word, 0, TF, 1))
                        TF.Add(new word(word, 1, 0));
                }
            }
            return TF;
        }

        private double CosSim(List<word> TF1, List<word> TF2)
        {
            List<word> TF3 = new List<word>();
            foreach (word w in TF2)
            {
                TF3.Add(w);
            }
            for (int i = 0; i < TF1.Count; i++)
            {
                if (isNotExist(TF1.ElementAt(i).myWord, TF1.ElementAt(i).repeat_file1, TF3, 2))
                    TF3.Add(new word(TF1.ElementAt(i).myWord, 0, TF1.ElementAt(i).repeat_file1));
            }
            //cos theta = A.B / ||A|| ||B|| = sum A.B / sqrt sum(a)2 * sqrt sum(b)2  

            int sumA_B = 0;
            int sumA2 = 0;
            int sumB2 = 0;

            for (int j = 0; j < TF3.Count; j++)
            {
                sumA_B += (TF3.ElementAt(j).repeat_file1 * TF3.ElementAt(j).repeat_file2);
                sumA2 += (TF3.ElementAt(j).repeat_file1 * TF3.ElementAt(j).repeat_file1);
                sumB2 += (TF3.ElementAt(j).repeat_file2 * TF3.ElementAt(j).repeat_file2);
            }

            double result = sumA_B / (Math.Sqrt(sumA2) * Math.Sqrt(sumB2));
            return result;
        }

        public int makeMining(string text, DataTable vips)
        {
            TF1.Clear();
            TF2.Clear();

            TF1 = makeTermFrequency(text);
            int result = 0;
            double maxSim = 0;
            int maxI = 0;
            try
            {

                for (int i = 0; i < vips.Rows.Count; i++)
                {

                    TF2 = makeTermFrequency(vips.Rows[i][0].ToString());
                    double sim = CosSim(TF1, TF2);

                    if (sim > maxSim)
                    {
                        maxSim = sim;
                        maxI = i;
                    }
                }
                if (maxSim > 0.09)
                {
                    result = int.Parse(vips.Rows[maxI][1].ToString());
                }
                if (result != 0)
                    return result;
                else
                    return 0;
            }
            catch (Exception ex)
            {
                System.Console.Write(ex);
            }
            return 0;
        }
    }

