import { Given, Then, When } from "@cucumber/cucumber";
import { expect} from "@playwright/test";
import { paymentPlanPage, page, startApplicationPage } from "../../globalPagesSetup.js";
import { productInfo } from "../../utilities/qa-data-reader.js";




Then('the next button is disabled by default', async function () {
    await expect(paymentPlanPage.inactiveNextButton).toBeVisible();
    await expect(paymentPlanPage.inactiveNextButton).toBeDisabled();

});

When('user clicks {string} payment plan', async function (string) {
    await paymentPlanPage.selectPaymentPlan(string);
});

Then('the next button is enabled', async function () {
    await expect(paymentPlanPage.activeNextButton).toBeVisible();
    await expect(paymentPlanPage.activeNextButton).toBeEnabled();
    
});