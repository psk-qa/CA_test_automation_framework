import yaml
import os

def get_variables():
    """Retourne les variables du YAML par défaut."""
    base_dir = os.path.dirname(os.path.abspath(__file__))
    yaml_path = os.path.join(base_dir, "config.yaml")

    if not os.path.exists(yaml_path):
        raise FileNotFoundError(f"Fichier YAML introuvable : {yaml_path}")

    with open(yaml_path, "r", encoding="utf-8") as f:
        return yaml.safe_load(f)
