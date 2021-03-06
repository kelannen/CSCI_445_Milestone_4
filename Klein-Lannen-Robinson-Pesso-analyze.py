#!/usr/bin/env python3

import os
import sys
import argparse
import subprocess

cwd = os.getcwd()
sys.path.append(cwd + "/androguard")

from androguard.core.bytecodes import apk
from androguard.core.bytecodes import dvm

output_list = []

# Trust Managers and Socket Factories that trust all certificates
trust_managers = ["AcceptAllHostnameVerifier","NaiveHostnameVerifier","FakeHostnameVerifier","AcceptAllTrustM", "AllTrustM", "DummyTrustM", "EasyX509TrustM", "FakeTrustM", "FakeX509TrustM", "FullX509TrustM", "NaiveTrustM", "NullTrustM", "OpenTrustM", "VoidTrustM", "NonValidatingTrustM", "PermissiveX509TrustM", "SimpleTrustM", "SimpleX509TrustM", "TrivialTrustM", "TrustAllManager", "TrustAllTrustM", "TrustAnyCertTrustM", "UnsafeX509TrustM"]
socket_factories = ["AcceptAllSSLSocketF", "AllTrustingSSLSocketF", "AllTrustSSLSocketF", "AllSSLSocketF", "DummySSLSocketF", "EasySSLSocketF", "FakeSSLSocketF", "InsecureSSLSocketF", "NonValidatingSSLSocketF", "NaiveSslSocketF", "SimpleSSLSocketF", "SSLSocketFUntrustedCert", "SSLUntrustedSocketF", "TrustAllSSLSocketF", "TrustEveryoneSocketF", "NaiveTrustManagerF", "LazySSLSocketF", "UnsecureTrustManagerF"]

def write_output(base_path, output_name):
    w = open(os.path.join(base_path,output_name), "w+")
    if len(output_list) == 0:
        w.write("No arguments.")
    else:
        for i in output_list:
            w.write(i)
            w.write("\n")
    w.close()

def checkSmali(file_path, name):
    line_number = 1
    out = []
    out.append(name)
    out.append("=======================")
    out.append("")

    f = open(file_path, "r")
    for line in f:
        if '"http:' in line and ("#process-namespaces" not in line):
            out.append("Potential http usage on line "+str(line_number))
            out.append("    Line: "+line)
            out.append("")
        if "AllowAllHostnameVerifier" in line or 'allow_all_hostname_verifier' in line.lower():
            out.append("Potential AllowAllHostnameVerifier usage on line "+str(line_number))
            out.append("    Line: "+line)
            out.append("")
        for tm in trust_managers:
            if tm in line:
                out.append("Potential "+tm+" usage on line "+str(line_number))
                out.append("    Line: "+line)
                out.append("")
        for sf in socket_factories:
            if sf in line:
                out.append("Potential "+sf+" usage on line "+str(line_number))
                out.append("    Line: "+line)
                out.append("")
        if "trustallcerts" in line.lower():
            out.append("Potential TrustAllCertificates usage on line "+str(line_number))
            out.append("    Line: "+line)
            out.append("")
        if "TrustManager" in line:
            out.append("Potential TrustManager usage on line "+str(line_number))
            out.append("    Line: "+line)
            out.append("")
        line_number += 1
    f.close()
    if len(out) > 3:
        for x in out:
            output_list.append(x)

def checkManifest(manifest):
    line_number = 1
    out = []
    out.append("AndroidManifest.xml")
    out.append("=======================")
    out.append("")
    package_name = ""
    f = open(manifest, "r")
    exported = []
    receiver = []
    for line in f:
        if line_number == 1:
            for text in line.split():
                if "package" in text:
                    package_name = text
                    line_number += 1
                    break
            if package_name == "":
                print("Error, could not find a package name.")
                f.close()
                return package_name
        else:
            if 'android:allowBackup="true"' in line:
                out.append("Potential allow backup and restore vulnerability on line "+str(line_number))
                out.append("    Line: "+line)
                out.append("")
            if(len(exported) !=0):
                if "android:permission=" in line:
                    exported = []
                if "android:protectionLevel" in line:
                    exported = []
                if '</activity>' in line:
                    out.append(exported[0]+" and line "+str(line_number))
                    out.append(exported[1])
                    out.append("")
                    exported = []
            elif('android:exported="true"' in line and '<activity' in line and 'android:permission=' not in line):
                exported.append("Potential exported components outside of their main activity without limitations vulnerability on line "+str(line_number))
                exported.append("    Line: "+line)
                if('android:protectionLevel' in line):
                    exported = []
                if('/>' in line):
                    out.append(exported[0]+" and line "+str(line_number))
                    out.append(exported[1])
                    out.append("")
                    exported = []
            if(len(receiver) !=0):
                if "android:permission=" in line:
                    receiver = []
                elif "</receiver>" in line:
                    out.append(receiver[0]+" and line "+str(line_number))
                    out.append(receiver[1])
                    out.append("    Line: "+line)
                    out.append("")
                    receiver = []
            elif("<receiver" in line and "android:permission=" not in line):
                receiver.append("Potential unprotected broadcast receiver on line "+str(line_number))
                receiver.append("    Line: "+line)

            line_number += 1

    f.close()
    if len(out) > 3:
        for x in out:
            output_list.append(x)
    return package_name

def static_analysis (base_path, input_name, output_name):
    char = '/'
    if (char in input_name):
        temp = input_name.split(char)
        apk_folder_name = temp[len(temp)-1]
        apk_folder_name = apk_folder_name[:-4]
    else:
        apk_folder_name = input_name[:-4]

    apk_folder_path = os.path.join(base_path, apk_folder_name)

    output_list.append("APK: "+apk_folder_name)
    output_list.append("")

    manifest = os.path.join(apk_folder_path,"AndroidManifest.xml")
    package_name = checkManifest(manifest)[9:]
    package_name = package_name[:-1]
    if package_name[-1] == '"':
        package_name = package_name[:-1]
    package_name = package_name.split('.')

    if package_name == "":
        return

    smali_folder_path = os.path.join(apk_folder_path,"smali")
    for i in range(len(package_name)):
        smali_folder_path = os.path.join(smali_folder_path,package_name[i])

    output_list.append("Smali File Location: "+smali_folder_path)
    output_list.append("")
    output_list.append("Smali Files with Potential Vulnerabilities")
    output_list.append("")

    if os.path.exists(smali_folder_path):
        if os.path.isdir(smali_folder_path):
            for root, folders, files in os.walk(smali_folder_path):
                for file in files:
                    file_path = os.path.join(root, file)
                    extension = os.path.splitext(file_path)[1]
                    if extension == ".smali":
                        name = file
                        checkSmali(file_path, root[len(smali_folder_path):]+char+name)
            write_output(base_path, output_name)
        else:
            print("Path is not a directory")
    else:
        found_path = True
        while (not os.path.exists(smali_folder_path)):
            if apk_folder_path == smali_folder_path:
                print("No valid path exists.")
                found_path = False
                break
            smali_folder_path = smali_folder_path.rsplit(char, 1)[0]  
        if found_path:
            if os.path.isdir(smali_folder_path):
                for root, folders, files in os.walk(smali_folder_path):
                    for file in files:
                        file_path = os.path.join(root, file)
                        extension = os.path.splitext(file_path)[1]
                        if extension == ".smali":
                            name = file
                            checkSmali(file_path, root[len(smali_folder_path):]+char+name)
                write_output(base_path, output_name)
            else:
                print("Path is not a directory")   

def decompile_apk(input):
    subprocess.run(args=["apktool", "d", input])

if __name__ == "__main__":
    parser= argparse.ArgumentParser(description='Takes in an apk file name/path relative to the current directory and an output text file, '
                                                'also relative to the current directory and disassembles the apk file and looks for '
                                                'certain SSL errors in the smali files.')
    parser.add_argument('-i', help='Designate an APK file to dissasemble and analyze.')
    parser.add_argument('-o', help='Designate an output file for the analysis results.')
    args = parser.parse_args()

    if (args.i == None or args.o == None):
        print("Missing input and/or output files. Please make sure both are given.")
        sys.exit()

    base_path = os.path.dirname(os.path.abspath(__file__))
    input_path = os.path.join(base_path, args.i)

    a = apk.APK(input_path)
    d = dvm.DalvikVMFormat(a.get_dex())

    permission_list = a.get_permissions()
    dangerous_permissions1 = ["android.permission.INTERNET","android.permission.WRITE_EXTERNAL_STORAGE","android.permission.READ_EXTERNAL_STORAGE"]
    dangerous_permissions2 = ["android.permission.INTERNET","android.permission.RECORD_AUDIO"]
    dangerous_permissions3 = ["android.permission.INTERNET","android.permission.ACCESS_BACKGROUND_LOCATION","android.permisssion.ACCESS_COARSE_LOCATION","android.permission.FINE_LOCATION","android.permission.COARSE_LOCATION","android.permission.RECEIVE_BOOT_COMPLETED"]
    rq1 = 0
    rq1_str = ""
    rq2 = 0
    rq2_str = ""
    rq3 = 0
    rq3_str = ""

    for permission in permission_list:
        for dp1 in dangerous_permissions1:
            if permission in dp1:
                rq1 += 1
                rq1_str += permission + ","
        for dp2 in dangerous_permissions2:
            if permission in dp2:
                rq2 += 1
                rq2_str += permission + ","
        for dp3 in dangerous_permissions3:
            if permission in dp3:
                rq3 += 1
                rq3_str += permission + ","

    if rq1 >= 3:
        output_list.append("Potential dangerous permission combo (broad storage permission and internet)")
        output_list.append("    Permissions: "+rq1_str)
        output_list.append("")

    if rq2 >= 3:
        output_list.append("Potential dangerous permission combo (audio recording and internet)")
        output_list.append("    Permissions: "+rq2_str)
        output_list.append("")

    if rq3 >= 3:
        output_list.append("Potential dangerous permission combo (start on boot, location, and internet)")
        output_list.append("    Permissions: "+rq3_str)
        output_list.append("")

    if os.path.isfile(input_path):
        decompile_apk(args.i)
        static_analysis(base_path, args.i, args.o)
    else:
        print("Invalid input file, please try again.")
