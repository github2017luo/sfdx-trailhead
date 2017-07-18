@isTest
public with sharing class AccountControllerTest {

	@isTest
	public static void testFindAll() {
		Account a = new Account(
				Name = 'Test Account',
				Location__Latitude__s = 35.676333,
				Location__Longitude__s = 139.770145);
		insert a;

		Test.startTest();
		List<Account> result = AccountController.findAll();
		Test.stopTest();

		System.assertEquals(1, result.size());
		System.assertEquals(a.Id, result[0].Id);
	}
}