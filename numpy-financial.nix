{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, numpy
}:

buildPythonPackage rec {
  pname = "numpy-financial";
  version = "1.0.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-+ENBvGKySF1WBKc9X6x+kZdbS5zV9KWpz2CJAuoAy0A=";
  };

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    numpy
  ];

  meta = {
    changelog = "https://github.com/numpy/numpy-financial/releases/tag/${version}";
    homepage = "https://github.com/numpy/numpy-financial/";
    description = "Simple financial functions";
    license = lib.licenses.bsd3;
  };
}