using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.IO;
using System.Windows.Forms;

namespace SkyFirePatcher
{
    public partial class Form1 : Form
    {

        // WoW 4.0.6a 13623 (release)
        byte[] unpatchedBytes = new byte[] { 0xE8, 0x42, 0xE4, 0xFF, 0xFF };
        byte[] patchedBytes = new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };
        int patchOffset = 0x91229;
        int exeLength = 9217176;
        byte[] wowExe = null;
        
        // WoW 4.0.6 13596 (release)
        /*byte[] unpatchedBytes = new byte[] { 0xE8, 0x42, 0xE4, 0xFF, 0xFF };
        byte[] patchedBytes = new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };
        int patchOffset = 0x091369;
        int exeLength = 9216664;
        byte[] wowExe = null;*/

        // WoW 4.0.3 13329 (release)
        /*byte[] unpatchedBytes = new byte[] { 0xE8, 0xC2, 0xE5, 0xFF, 0xFF };
        byte[] patchedBytes =   new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };
        int patchOffset = 0x08FAA9;
        int exeLength = 9175192;

        byte[] wowExe = null;*/

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                richTextBox1.AppendText("Loading Wow.exe into memory...\n");
                wowExe = ReadByteArrayFromFile("wow.exe");
                richTextBox1.AppendText("Success!\n");
            }
            catch
            {
                richTextBox1.AppendText("Could not load Wow.exe into memory. Make sure this program is in your WoW directory and that WoW is closed.\n");
                label2.Text = "Error";
                label2.ForeColor = Color.Red;
                //filenotfound or fileinuse
            }

            if (wowExe != null)
            {
                if (wowExe.Length != 9217176)
                {
                    richTextBox1.AppendText("Wrong version, this patch will only work for WoW 4.0.6 13596. \n");
                    label2.Text = "Error";
                    label2.ForeColor = Color.Red;
                }
                else
                {
                    byte[] testPatched = new byte[unpatchedBytes.Length];
                    System.Buffer.BlockCopy(wowExe, patchOffset, testPatched, 0, unpatchedBytes.Length);

                    if (testPatched.SequenceEqual(unpatchedBytes))
                    {
                        richTextBox1.AppendText("Ready to patch Wow.exe.\n");
                        label2.Text = "Ready!";
                        label2.ForeColor = Color.Orange;
                        button1.Text = "Patch";
                        button1.Enabled = true;
                    }
                    if (testPatched.SequenceEqual(patchedBytes))
                    {
                        richTextBox1.AppendText("To restore Wow.exe click \"Unpatch\".\n");
                        label2.Text = "Ready!";
                        label2.ForeColor = Color.Orange;
                        button1.Text = "Unpatch";
                        button1.Enabled = true;
                    }
                }

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (((Button)sender).Text == "Patch")
            {
                System.Buffer.BlockCopy(patchedBytes, 0, wowExe, patchOffset, patchedBytes.Length);
                try { File.Delete("Wow_backup.exe"); } catch { }
                try { File.Move("Wow.exe", "Wow_backup.exe"); } catch {}

                if (WriteByteArrayToFile(wowExe, "Wow.exe") == true)
                {
                    richTextBox1.AppendText("Successfully patched Wow.exe and created a backup Wow_backup.exe!\n");
                    label2.Text = "Success!";
                    label2.ForeColor = Color.Green;
                }
                else
                {
                    label2.Text = "Error!";
                    label2.ForeColor = Color.Red;
                }
            }
            else
            {
                System.Buffer.BlockCopy(unpatchedBytes, 0, wowExe, patchOffset, unpatchedBytes.Length);
                try { File.Delete("Wow.exe"); File.Delete("Wow_backup.exe"); } catch {};

                if (WriteByteArrayToFile(wowExe, "Wow.exe") == true)
                {
                    richTextBox1.AppendText("Successfully unpatched Wow.exe!\n");
                    label2.Text = "Success!";
                    label2.ForeColor = Color.Green;
                }
                else
                {
                    label2.Text = "Error!";
                    label2.ForeColor = Color.Red;
                }
            }
            richTextBox1.AppendText("Done.\n");
            button1.Enabled = false;
        }

        public byte[] ReadByteArrayFromFile(string fileName)
        {
            byte[] buff = null;
            FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            long numBytes = new FileInfo(fileName).Length;
            buff = br.ReadBytes((int)numBytes);
            br.Close();
            return buff;
        }

        public bool WriteByteArrayToFile(byte[] buff, string fileName)
        {
            bool response = false;

            try
            {
                FileStream fs = new FileStream(fileName, FileMode.Create, FileAccess.ReadWrite);
                BinaryWriter bw = new BinaryWriter(fs);
                bw.Write(buff);
                bw.Close();
                response = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return response;
        }
    }
}
