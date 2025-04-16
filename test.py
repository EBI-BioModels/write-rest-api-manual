import json, os, requests
import stat


def test_bm_api_authentication_validate():
    """ Test BioModels API authentication validation """
    BM_URL = "http://localhost:8080/biomodels/api/validate"
    BM_URL = "http://localhost:8080/biomodels/api/model/revisionsState/MODEL2401190002?format=json"
    # get the env var holding the access token of the account username 'teo'.
    # please change it to your valid value
    ACCESS_TOKEN = os.getenv("ACCESS_TOKEN_LOCAL_KHANG")
    headers = {
        "Authorization": "Bearer " + ACCESS_TOKEN
    }

    data = {"firstname": "Tung Vu Ngoc", "lastname": "Nguyen"}
    print(json.dumps(data))

    response = requests.post(BM_URL, headers=headers, json=data)
    print(response.status_code)
    json_data = response.json()
    print(json.dumps(json_data))


def test_os_stat():
    """ Test OS chmod command """
    st = os.stat("/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/cmd1.sh")
    os.chmod("/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/cmd1.sh",
             st.st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH)


def test_os_chmod():
    """ Test OS chmod command """
    file_path = "/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/cmd1.sh"
    # cmd = ["chmod", "g+w", file_path]
    # print("Cmd chmod: ", cmd)
    # p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, shell=True)
    # output, errors = p.communicate()
    # print(output, errors)

    # try:
    #     ans = subprocess.check_output(["python", "--version"], text=True)
    #     print(ans)
    # except subprocess.CalledProcessError as e:
    #     print(f"Command failed with return code {e.returncode}")
    mypath = "/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/tmp/perm"
    filenames = next(os.walk(mypath), (None, None, []))[2]  # [] if no file
    for filename in filenames:
        abs_file_path = os.path.join(mypath, filename)
        os.chmod(abs_file_path, 0o744)


def test_os_walk():
    """ Test OS chmod command """
    final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final"
    for root, dirs, files in os.walk(final_dir):
        break

    dirs = sorted(dirs)
    for d in dirs:
        print(d)


if __name__ == "__main__":
    test_bm_api_authentication_validate()
    test_os_stat()
    test_os_chmod()
    test_os_walk()
