import time

import requests
import random
import os
from urllib.parse import unquote

BASE_URL = "https://biomodels.org"


def get_all_identifiers():
    url = f"{BASE_URL}/model/identifiers?isprivate=false&format=json"

    response = requests.get(url, timeout=30)
    response.raise_for_status()

    data = response.json()

    # Handle multiple possible formats safely
    if isinstance(data, list):
        return data

    elif isinstance(data, dict):
        if "models" in data:
            return data["models"]

        if "models" in data:
            return [m["id"] for m in data["models"] if "id" in m]

    raise ValueError(f"Unexpected response format: {data}")


def get_filename_from_headers(response, model_id):
    cd = response.headers.get("content-disposition")
    if cd and "filename=" in cd:
        filename = cd.split("filename=")[-1].strip().strip('"')
        return unquote(filename)
    return f"{model_id}.omex"


def download_model(model_id, output_dir="models"):
    url = f"{BASE_URL}/model/download/{model_id}"

    os.makedirs(output_dir, exist_ok=True)

    try:
        with requests.get(url, stream=True, timeout=30) as response:
            status = response.status_code

            if status != 200:
                return status  # return status for tracking

            filename = get_filename_from_headers(response, model_id)
            filepath = os.path.join(output_dir, filename)

            with open(filepath, "wb") as f:
                for chunk in response.iter_content(chunk_size=8192):
                    if chunk:
                        f.write(chunk)

            return status

    except requests.exceptions.RequestException as e:
        print(f"⚠️ Error for {model_id}: {e}")
        return "error"


def test_random_downloads(sample_size=20):
    identifiers = get_all_identifiers()
    print(f"Total identifiers fetched: {len(identifiers)}")
    
    if len(identifiers) < sample_size:
        raise ValueError("Not enough identifiers to sample from")

    sample_ids = random.sample(identifiers, sample_size)

    print(f"Testing {sample_size} random models...\n")

    results = {
        "200": 0,
        "403": 0,
        "other": 0,
        "error": 0
    }

    for model_id in sample_ids:
        status = download_model(model_id)

        if status == 200:
            results["200"] += 1
            print(f"✅ {model_id} → 200")
        elif status == 403:
            results["403"] += 1
            print(f"⛔ {model_id} → 403 Forbidden")
        elif status == "error":
            results["error"] += 1
        else:
            results["other"] += 1
            print(f"❓ {model_id} → {status}")
        time.sleep(random.uniform(0.5, 2))

    print("\n=== Summary ===")
    for k, v in results.items():
        print(f"{k}: {v}")


if __name__ == "__main__":
    test_random_downloads(20)
