package com.rockyruah.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class signupValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return MemberInfo.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		MemberInfo memberInfo = (MemberInfo)target;
		if(memberInfo.getId() == null || memberInfo.getId().trim().isEmpty()){
			errors.rejectValue("id", "required");
		}
		
		
	}

}
