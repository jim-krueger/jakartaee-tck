<%--

    Copyright (c) 2018 Oracle and/or its affiliates. All rights reserved.

    This program and the accompanying materials are made available under the
    terms of the Eclipse Public License v. 2.0, which is available at
    http://www.eclipse.org/legal/epl-2.0.

    This Source Code may also be made available under the following Secondary
    Licenses when the conditions for such availability set forth in the
    Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
    version 2 with the GNU Classpath Exception, which is available at
    https://www.gnu.org/software/classpath/license.html.

    SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0

--%>

<html>
<title>negativeFatalTranslationError</title>
<body>
<% /** 	Name : negativeFatalTranslationError
	Description : Here, the errorPage attribute of the page
                  directive is used.  An exception is
	              generated by dividing an integer value by 0.
                  The request is forward onto an error page where
                  the isErrorPage attribute is set to the default
                  of false.  The Error page will attempt to access
                  the implicit exception object.
	Result : A fatal translation error should occur.
**/ %>	 
<!-- We are setting the error page to "FatalTranslationErrorPage.jsp" where isErrorPage is false -->
<%@ page errorPage="FatalTranslationErrorPage.jsp" autoFlush="false" %>
<%! int i=0; %>
<%= 9/i %>
</body>
</html>
