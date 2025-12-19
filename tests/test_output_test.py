from pathlib import Path

def test_result_file_exists():
    assert Path("/output/result.txt").exists()

def test_result_content():
    content = Path("/output/result.txt").read_text().strip()
    assert content == "2"
