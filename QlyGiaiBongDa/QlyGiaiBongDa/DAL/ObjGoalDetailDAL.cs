﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;
using QlyGiaiBongDa.GUI;
using QlyGiaiBongDa.BLL;
using System.Drawing;



namespace QlyGiaiBongDa.DAL
{
    class BANTHANG
    {
        public string mab { get; set; }
        public string ma_ct { get; set; }
        public string ma_lbt { get; set; }
        public string thoidiem { get; set; }
        public string id_td { get; set; }

  
        public BANTHANG() { }
    }

    public class ObjGoalDetailDAL
    {
        private static ObjGoalDetailDAL instance;

        public static ObjGoalDetailDAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ObjGoalDetailDAL();
                }
                return instance;
            }
            set { instance = value; }
        }


        private ObjGoalDetailDAL() { }




        public DataTable LoadListGoal()
        {
            DataTable dt = new DataTable();


            string LoadQuery = "Select * from BANTHANG";

            dt = DataProvider.Instance.ExecuteQuery(LoadQuery);
            return dt;

        }




        public DataTable LoadGoalType()
        {
            DataTable dt = new DataTable();
            string LoadQuery = "SELECT LOAIBANTHANG from LOAIBANTHANG ";
              
            dt = DataProvider.Instance.ExecuteQuery(LoadQuery);
            return dt;
        }


        // Hàm thêm bàn thắng
        public void AddGoal()

        {
            string MaBan = usrGoalDetail.Instance.tb_MaBanThang.Text;
            string MaCauThu = usrGoalDetail.Instance.tb_MaCauThu.Text;
            string LoaiBan = usrGoalDetail.Instance.cb1.Text;
            string ThoiDiem = usrGoalDetail.Instance.tb_ThoiDiem.Text;
            string MaTran = usrGoalDetail.Instance.tb_MaTranDau.Text;


            string AddQuery = "INSERT INTO BANTHANG(MaBanThang,MaCauThu,LoaiBanThang,ThoiDiem,MaTranDau)" +
                "VALUES ( '" + MaBan + "', '" + MaCauThu + "', '" + LoaiBan + "', '" + ThoiDiem + "', '" + MaTran + "')";
            int result = DataProvider.Instance.ExecuteNonQuery(AddQuery);
            if (result > 0)
            {
                MessageBox.Show(" Đã thêm bàn thắng ");
            }



        }


        public void UpdateGoal()
        {
            //System.Windows.Forms.UserControl usr = new usrGoalDetail();

            string MaBan = usrGoalDetail.Instance.tb_MaBanThang.Text;
            string MaCauThu = usrGoalDetail.Instance.tb_MaCauThu.Text;
            string LoaiBan = usrGoalDetail.Instance.tb_MaLoaiBanThang.Text;
            string ThoiDiem = usrGoalDetail.Instance.tb_ThoiDiem.Text;
            string MaTran = usrGoalDetail.Instance.tb_MaTranDau.Text;
            // MessageBox.Show(id);


            string UpdateQuery = "UPDATE BANTHANG " +
                 "SET MaTranDau = '" + MaTran + "', MaCauThu = '" + MaCauThu + "', LoaiBanThang = '" + LoaiBan + "', ThoiDiem = '" + ThoiDiem + "' " +
                 " WHERE MaBanThang = '"+MaBan+"' ";

            int result = DataProvider.Instance.ExecuteNonQuery(UpdateQuery);
            if (result > 0)
            {
                MessageBox.Show("Bàn thắng đã được cập nhật", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        public void DeleteGoal()
        {
            System.Windows.Forms.UserControl usr = new usrTeamList();

            string MaBan = usrGoalDetail.Instance.tb_MaBanThang.Text;



            if (usrGoalDetail.Instance.tb_MaBanThang.Text != "")
            {
                var resultDialog = MessageBox.Show("Bạn có chắc muốn xóa bàn thắng?", "Warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                if (resultDialog == DialogResult.OK)
                {

                    string DeleteQuery = "DELETE FROM BANTHANG WHERE MaBanThang= '" + MaBan + "'";
                    int result = DataProvider.Instance.ExecuteNonQuery(DeleteQuery);
                    if (result > 0)
                    {
                        MessageBox.Show("Bàn thắng đã bị xóa", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }

        }



        public void GetNextIDGoal()
        {

            using (SqlConnection connection = new SqlConnection(DataProvider.Instance.connectionSTR))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("SELECT TOP 1 MaBanThang FROM BANTHANG ORDER BY MaBanThang DESC", connection);

                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    string mabt = da.GetValue(0).ToString();
                    int nextid = Int32.Parse(mabt.Substring(2, 2)) + 1;
                    usrGoalDetail.Instance.tb_MaBanThang.Text = mabt.Substring(0, 2) + nextid.ToString();
                    usrGoalDetail.Instance.tb_MaBanThang.ReadOnly = true;
                    usrGoalDetail.Instance.tb_MaBanThang.TextAlign = HorizontalAlignment.Center;
                    usrGoalDetail.Instance.tb_MaBanThang.BaseColor = Color.DarkGray;
                    usrGoalDetail.Instance.tb_MaCauThu.Focus();
                }
            }
        }
    }
}

