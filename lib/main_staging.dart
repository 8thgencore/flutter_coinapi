// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_coinapi/app/app.dart';
import 'package:flutter_coinapi/bootstrap.dart';
import 'package:flutter_coinapi/core/helpers/initialize_dependency.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependency();
  bootstrap(() => const App());
}
