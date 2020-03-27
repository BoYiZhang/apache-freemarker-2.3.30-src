<#--
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
-->
Output charset: ${.output_encoding?default("undefined")}
URL escaping charset: ${.url_escaping_charset?default("undefined")}

<#assign s="a/%b">
<#setting url_escaping_charset="UTF-16">
${s?url}
${s?url}
<#setting url_escaping_charset="ISO-8859-1">
${s?url}
${s?url}
${s?url('UTF-16')}
${s?url}