<!-- #-------------------------------------------------------------------------------
# eGov suite of products aim to improve the internal efficiency,transparency, 
#    accountability and the service delivery of the government  organizations.
# 
#     Copyright (C) <2015>  eGovernments Foundation
# 
#     The updated version of eGov suite of products as by eGovernments Foundation 
#     is available at http://www.egovernments.org
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program. If not, see http://www.gnu.org/licenses/ or 
#     http://www.gnu.org/licenses/gpl.html .
# 
#     In addition to the terms of the GPL license to be adhered to in using this
#     program, the following additional terms are to be complied with:
# 
# 	1) All versions of this program, verbatim or modified must carry this 
# 	   Legal Notice.
# 
# 	2) Any misrepresentation of the origin of the material is prohibited. It 
# 	   is required that all modified versions of this material be marked in 
# 	   reasonable ways as different from the original version.
# 
# 	3) This license does not grant any rights to any user of the program 
# 	   with regards to rights under trademark law for use of the trade names 
# 	   or trademarks of eGovernments Foundation.
# 
#   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
#------------------------------------------------------------------------------- -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-heading">
				&nbsp;
			</div>
			<div class="panel-body custom-form">
				<form:form id="password-form" cssClass="form-horizontal form-groups-bordered">
					<c:if test="${not empty param.error}">
                    	<div id="error-msg" class="error-msg text-center add-margin"><spring:message code="${param.error}"/></div>
                	</c:if>
					<div class="form-group">
						<label class="col-sm-4 control-label">
							New Password
						</label>
						<div class="col-sm-4" >
							<input type="password" name="newPassword" class="form-control check-password" id="new-pass" required="required" minlength="8" maxlength="32"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-4 control-label">
							Confirm Password
						</label>
						<div class="col-sm-4" >
							<input type="password" name="confirmPwd" class="form-control check-password" id="retype-pass" required="required" minlength="8" maxlength="32"/>
							<div class="password-error error-msg display-hide">Password is mismatching</div>
						</div>
					</div>
					<div class="form-group text-center">
						<div class="col-md-12 add-margin">
							<button type="submit" class="btn btn-primary">Reset Password</button>
							<button type="button" class="btn btn-default" onclick="self.close()">Close</button>
						</div>
					</div>
					</form:form>
			</div>
		</div>
	</div>
</div>
<script>
$('.check-password').blur(function(){
	if(($('#new-pass').val()!="") && ($('#retype-pass').val()!=""))
	{
		if ($('#new-pass').val() === $('#retype-pass').val()) {
			return true;
			
		}else{
			$('.password-error').show();
			$('#retype-pass').addClass('error');
			return false;
		}
	}
});
</script>
